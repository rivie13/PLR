--------------------------------------------------------------------------
-- Micro Missile Launcher - SalvoOverride
-- Part of EPIC #27 / sub-issue #29
--
-- Hooks LeftHandCyberwareTransition.DetachProjectile (the single
-- chokepoint for arms-launcher firing in 2.31, see
-- cyberpunk/player/psm/leftHandCyberwareTransitions.swift line ~113).
--
-- Design notes / diagnostics:
--   * GetLeftHandWeaponObject is `protected final` in REDscript and is
--     not reliably callable from a CET Override callback. Instead we
--     replicate vanilla's own resolve path:
--         scriptInterface:GetTransactionSystem()
--           :GetItemInSlot(executionOwner, RPGManager.GetAttachmentSlotID("WeaponLeft"))
--     which returns the equipped left-hand ItemObject (i.e. the
--     launcher itself) using only public APIs.
--   * EVERYTHING custom is wrapped in pcall. If our salvo logic ever
--     errors, we always fall through to wrapped() so vanilla launchers
--     and any other PLR rounds keep firing.
--   * Verbose prints are gated behind Config.DEBUG so they can be
--     toggled without code edits.
--------------------------------------------------------------------------

local Config           = require("Modules/MicroMissile/Config")
local LauncherRegistry = require("Modules/MicroMissile/LauncherRegistry")
local ChargeCost       = require("Modules/MicroMissile/ChargeCost")

local SalvoOverride = {}

local function dprint(msg)
    if Config and Config.DEBUG then
        print("[PLR/MicroMissile] " .. tostring(msg))
    end
end

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

-- Public-API equivalent of LeftHandCyberwareTransition.GetLeftHandWeaponObject.
local function GetLeftHandItemObject(scriptInterface)
    if not scriptInterface then return nil end
    local owner = scriptInterface.executionOwner
    if not owner then return nil end
    local ts = scriptInterface:GetTransactionSystem()
    if not ts then return nil end
    local slotID = RPGManager.GetAttachmentSlotID("WeaponLeft")
    return ts:GetItemInSlot(owner, slotID)
end

local function GetInstalledRoundTemplate(scriptInterface, leftHandItemObj)
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

local function FireSalvo(scriptInterface, angleOffset, leftHandItemObj, tier)
    local owner = scriptInterface.executionOwner
    local template = GetInstalledRoundTemplate(scriptInterface, leftHandItemObj)
    if not template then
        dprint("FireSalvo: no installed round template, falling back")
        return false
    end

    local baseAngle = angleOffset or 0.0
    local offsets = BuildOffsets(tier.missiles, tier.spreadDeg)
    for _, off in ipairs(offsets) do
        ProjectileLaunchHelper.SpawnArmsLauncherProjectileWithRotation(
            owner, template, leftHandItemObj, baseAngle + off
        )
    end

    pcall(function()
        ChargeCost.ApplyExtraDrain(scriptInterface, tier.missiles, tier.costMult)
    end)

    pcall(function()
        Game.GetTelemetrySystem():LogActiveCyberwareUsed(owner, leftHandItemObj:GetItemID())
    end)

    dprint(string.format("Fired salvo of %d missiles, spread=%.1f deg", tier.missiles, tier.spreadDeg))
    return true
end

function SalvoOverride.Install()
    Override("LeftHandCyberwareTransition", "DetachProjectile",
    function(_this, scriptInterface, angleOffset, wrapped)
        local ok, leftHandItemObj = pcall(GetLeftHandItemObject, scriptInterface)
        if not ok or not leftHandItemObj then
            dprint("DetachProjectile: no left-hand item, vanilla path")
            return wrapped(scriptInterface, angleOffset)
        end

        local tierOk, tier = pcall(LauncherRegistry.GetTierFromItemID, leftHandItemObj:GetItemID())
        if not tierOk or not tier then
            return wrapped(scriptInterface, angleOffset)
        end

        dprint(string.format("DetachProjectile: micro launcher detected, missiles=%d", tier.missiles))

        local salvoOk, salvoErr = pcall(FireSalvo, scriptInterface, angleOffset, leftHandItemObj, tier)
        if not salvoOk then
            print("[PLR/MicroMissile] FireSalvo error: " .. tostring(salvoErr) .. " - falling back to vanilla")
            return wrapped(scriptInterface, angleOffset)
        end
    end)

    print("[PLR/MicroMissile] DetachProjectile override installed")
end

return SalvoOverride
