--------------------------------------------------------------------------
-- Micro Missile Launcher - Config
-- Part of EPIC #27 / sub-issue #29
--
-- Pure data table. Tier name -> behavior. Damage normalization is
-- applied to per-missile damage so that total burst damage is roughly
--   sqrt(missiles) * vanilla missile damage.
--
-- A NativeSettings UI for these values can be added later without
-- touching the rest of the salvo code.
--------------------------------------------------------------------------

local Config = {}

Config.LAUNCHER_TAG = "MicroMissileLauncher"
Config.ICONIC_TAG   = "MicroMissileLauncherIconic"

-- Set to true to print salvo diagnostics to the CET console.
Config.DEBUG = true

-- Tier table keyed by gamedataQuality enum value.
-- missiles    = number of projectiles per shot
-- costMult    = multiplier on the base shoot cost (1.0 = vanilla cost)
-- spreadDeg   = total fan width in degrees (missiles distributed across)
-- damageScale = per-missile damage multiplier vs vanilla (1/sqrt(N) keeps
--               total burst ~= sqrt(N) * vanilla so it is meaningful but
--               not OP)
Config.tiers = {
    Rare = {
        missiles    = 3,
        costMult    = 2.0,
        spreadDeg   = 12.0,
        damageScale = 1.0 / math.sqrt(3),
    },
    Epic = {
        missiles    = 5,
        costMult    = 3.0,
        spreadDeg   = 16.0,
        damageScale = 1.0 / math.sqrt(5),
    },
    Legendary = {
        missiles    = 7,
        costMult    = 4.0,
        spreadDeg   = 20.0,
        damageScale = 1.0 / math.sqrt(7),
    },
}

return Config
