--------------------------------------------------------------------------
-- Micro Missile Launcher - ChargeCost
-- Part of EPIC #27 / sub-issue #29
--
-- The vanilla DetachProjectile already drains 1 base shoot cost from the
-- ProjectileLauncherCharges stat pool (via DrainLeftHandWeaponCharge in
-- the calling state). After we fan N missiles, we drain the EXTRA cost
-- so that total drain = (missiles * costMult) * baseShootCost.
--
-- baseShootCost == ProjectileLauncherRechargeDuration (per the listener
-- in cyberpunk/player/playerListeners.swift).
--------------------------------------------------------------------------

local ChargeCost = {}

function ChargeCost.ApplyExtraDrain(scriptInterface, missiles, costMult)
    if not scriptInterface then return end
    local owner = scriptInterface.executionOwner
    if not owner then return end
    local player = owner:IsA("PlayerPuppet") and owner or nil
    if not player then return end

    local baseCost = player:GetProjectileLauncherShootCost()
    if not baseCost or baseCost <= 0 then return end

    -- Vanilla already drained 1 baseCost. We owe (missiles*costMult - 1).
    local extra = (missiles * costMult) - 1.0
    if extra <= 0 then return end

    local statsObjectID = Game.GetStatsSystem():CreateStatsObjectID(owner:GetEntityID())
    Game.GetStatPoolsSystem():RequestChangingStatPoolValue(
        statsObjectID,
        gamedataStatPoolType.ProjectileLauncherCharges,
        -(baseCost * extra),
        nil,
        false,
        false
    )
end

return ChargeCost
