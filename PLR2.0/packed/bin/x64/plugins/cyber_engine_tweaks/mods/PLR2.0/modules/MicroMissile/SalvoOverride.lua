--------------------------------------------------------------------------
-- Micro Missile Launcher - SalvoOverride
-- Part of EPIC #27 / sub-issue #29
--
-- Hooks LeftHandCyberwareTransition.DetachProjectile (the single
-- chokepoint for arms-launcher firing in 2.31, see
-- cyberpunk/player/psm/leftHandCyberwareTransitions.swift line ~113).
--
-- For micro missile launchers we:
--   1. Resolve the currently-installed projectile template from the
--      same TweakDB path vanilla uses.
--   2. Spawn N projectiles in a fan via
--      ProjectileLaunchHelper.SpawnArmsLauncherProjectileWithRotation.
--   3. Drain extra charges proportional to N * costMult.
--   4. Mirror the telemetry call vanilla makes.
--
-- For everything else we call wrapped(...) so vanilla launchers and any
-- other PLR rounds are completely unaffected.
--------------------------------------------------------------------------

local LauncherRegistry = require("Modules/MicroMissile/LauncherRegistry")
local ChargeCost       = require("Modules/MicroMissile/ChargeCost")

local SalvoOverride = {}

-- Build the spread offsets (in degrees). For N=1 returns {0}. For N>1
-- distributes evenly across [-spread/2, +spread/2].
local function BuildOffsets(n, totalSpreadDeg)
    if n <= 1 then return { 0.0 } end
    local offsets = {}
    local step = totalSpreadDeg / (n - 1)
    local start = -totalSpreadDeg / 2.0
    for i = 1, n do
        offsets[i] = start + (i - 1) * step
    end
    return offsets
end

local function GetInstalledRoundTemplate(scriptInterface, leftHandItemObj)
    -- Walk the item's part slots to find the one in
    -- AttachmentSlots.ProjectileLauncherRound (matches vanilla
    -- GetCurrentlyInstalledProjectile).
    local owner = scriptInterface.executionOwner
    local slots = ItemModificationSystem.GetAllSlots(owner, leftHandItemObj:GetItemID())
    if not slots or #slots == 0 then return nil end
    local target = TweakDBID.new("AttachmentSlots.ProjectileLauncherRound")
    for _, slot in ipairs(slots) do
        if slot.slotID.hash == target.hash and slot.status == ESlotState.Taken then
            local installed = slot.installedPart
            local tdbid = ItemID.GetTDBID(installed)
            return TweakDB:GetFlat(TweakDBID.new(tostring(tdbid) .. ".projectileTemplateName"))
        end
    end
    return nil
end

function SalvoOverride.Install()
    Override("LeftHandCyberwareTransition", "DetachProjectile",
    function(this, scriptInterface, angleOffset, wrapped)
        local weapon = this:GetLeftHandWeaponObject(scriptInterface)
        local tier = LauncherRegistry.GetTier(weapon)
        if not tier then
            -- Not one of ours. Vanilla path.
            return wrapped(scriptInterface, angleOffset)
        end

        local owner = scriptInterface.executionOwner
        local leftHandItemObj = scriptInterface
            :GetTransactionSystem()
            :GetItemInSlot(owner, RPGManager.GetAttachmentSlotID("WeaponLeft"))
        if not leftHandItemObj then
            return wrapped(scriptInterface, angleOffset)
        end

        local template = GetInstalledRoundTemplate(scriptInterface, leftHandItemObj)
        if not template then
            return wrapped(scriptInterface, angleOffset)
        end

        local baseAngle = angleOffset or 0.0
        local offsets = BuildOffsets(tier.missiles, tier.spreadDeg)
        for _, off in ipairs(offsets) do
            ProjectileLaunchHelper.SpawnArmsLauncherProjectileWithRotation(
                owner, template, leftHandItemObj, baseAngle + off
            )
        end

        ChargeCost.ApplyExtraDrain(scriptInterface, tier.missiles, tier.costMult)

        Game.GetTelemetrySystem()
            :LogActiveCyberwareUsed(owner, leftHandItemObj:GetItemID())
    end)
end

return SalvoOverride
