--------------------------------------------------------------------------
-- Micro Missile Launcher - LauncherRegistry
-- Part of EPIC #27 / sub-issue #29
--
-- Stateless helpers that decide whether the currently-equipped left-hand
-- weapon is one of our micro missile launchers, and which tier it is.
--
-- Detection strategy:
--   1. Read TDBID tags on the WeaponItem record.
--   2. If it does not carry the "MicroMissileLauncher" tag, return nil
--      so the salvo override falls through to vanilla behavior.
--   3. Map TweakDB Quality enum -> Config.tiers key.
--------------------------------------------------------------------------

local Config = require("Modules/MicroMissile/Config")

local LauncherRegistry = {}

-- Returns true if the given WeaponObject is a micro missile launcher.
-- weapon: ref<WeaponObject>
local function HasMicroMissileTag(weapon)
    if not weapon then return false end
    local itemID = weapon:GetItemID()
    if not itemID then return false end
    local record = TweakDB:GetRecord(ItemID.GetTDBID(itemID))
    if not record then return false end
    local tags = record:Tags()
    if not tags then return false end
    for _, tag in ipairs(tags) do
        if tag == Config.LAUNCHER_TAG then
            return true
        end
    end
    return false
end

-- Returns "Rare" | "Epic" | "Legendary" | nil based on the launcher's
-- WeaponItem quality.
local function GetTierName(weapon)
    if not weapon then return nil end
    local itemID = weapon:GetItemID()
    local record = TweakDB:GetRecord(ItemID.GetTDBID(itemID))
    if not record then return nil end
    local quality = record:Quality()
    if not quality then return nil end
    local qName = quality:Name()
    if qName == "Rare" or qName == "Epic" or qName == "Legendary" then
        return qName
    end
    -- Iconic still inherits Legendary chassis -> map to Legendary tier.
    return "Legendary"
end

-- Public API
function LauncherRegistry.IsMicroMissileLauncher(weapon)
    return HasMicroMissileTag(weapon)
end

function LauncherRegistry.GetTier(weapon)
    if not HasMicroMissileTag(weapon) then return nil end
    local name = GetTierName(weapon)
    if not name then return nil end
    return Config.tiers[name]
end

return LauncherRegistry
