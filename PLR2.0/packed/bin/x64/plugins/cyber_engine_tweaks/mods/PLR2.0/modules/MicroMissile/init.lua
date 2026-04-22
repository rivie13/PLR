--------------------------------------------------------------------------
-- Micro Missile Launcher - module entry point
-- Part of EPIC #27 / sub-issue #29
--
-- Required from PLR2.0/init.lua during onInit. Self-contained: nothing
-- else in the existing PLR mod is touched.
--------------------------------------------------------------------------

local SalvoOverride = require("Modules/MicroMissile/SalvoOverride")

SalvoOverride.Install()

print("[PLR] Micro Missile Launcher module loaded")
