--------------------------------------------------------------------------
-- Micro Missile Launcher - LauncherRegistry
-- Part of EPIC #27 / sub-issue #29
--
-- Detection strategy:
--   * Inspect the TDBID-name string of the equipped item against a
--     known set of micro-launcher record IDs. This is more reliable
--     than reading record:Tags() because tag entries are CName and
--     string comparison varies between CET versions.
--   * Map item ID -> Config.tiers entry.
--------------------------------------------------------------------------

local Config = require("Modules/MicroMissile/Config")

local LauncherRegistry = {}

-- Map of TweakDB record name -> Config.tiers key.
-- Keep in sync with the YAML records.
local KNOWN_LAUNCHERS = {
    ["Items.MicroMissileLauncherRare"]      = "Rare",
    ["Items.MicroMissileLauncherEpic"]      = "Epic",
    ["Items.MicroMissileLauncherLegendary"] = "Legendary",
    ["Items.MicroMissileLauncherIconic"]    = "Legendary",
}

local function TDBIDName(tdbid)
    if not tdbid then return nil end
    if TDBID and TDBID.ToStringDEBUG then
        return TDBID.ToStringDEBUG(tdbid)
    end
    return tostring(tdbid)
end

local function GetTierNameFromItemID(itemID)
    if not itemID then return nil end
    local tdbid = ItemID.GetTDBID(itemID)
    local name = TDBIDName(tdbid)
    if not name then return nil end
    return KNOWN_LAUNCHERS[name]
end

function LauncherRegistry.GetTierFromItemID(itemID)
    local name = GetTierNameFromItemID(itemID)
    if not name then return nil end
    return Config.tiers[name]
end

function LauncherRegistry.IsMicroMissileLauncherItemID(itemID)
    return GetTierNameFromItemID(itemID) ~= nil
end

-- Back-compat wrappers (in case anything still passes a WeaponObject).
function LauncherRegistry.IsMicroMissileLauncher(weapon)
    if not weapon then return false end
    local ok, itemID = pcall(function() return weapon:GetItemID() end)
    if not ok or not itemID then return false end
    return LauncherRegistry.IsMicroMissileLauncherItemID(itemID)
end

function LauncherRegistry.GetTier(weapon)
    if not weapon then return nil end
    local ok, itemID = pcall(function() return weapon:GetItemID() end)
    if not ok or not itemID then return nil end
    return LauncherRegistry.GetTierFromItemID(itemID)
end

return LauncherRegistry
