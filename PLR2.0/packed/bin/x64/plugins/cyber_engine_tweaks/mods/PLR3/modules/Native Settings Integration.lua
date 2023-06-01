--------------------------------------------------------------------------
-- Projectile Launcer Rework
-- Native Settings Integration.lua
-- Created by: Riviera S. (Arealguywithajob)
-- Created for: Cyberpunk 2077
-- Last Edited: 12/30/2022 4:35 AM
--
-- Special thanks given to: psiberx, wssdude, #1 tweakXL lover, mikeyray, keanuwheeze
-- and everyone else on the cyberpunk2077 modding community discord 
--
-- Special Special thanks to dillingspam for making the Launcher Rebalance mod which inspired me to make my original cyberware AoE rework
-- which is now turning into this. 
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--TODO:
-- create more launcher variants??
  -- kinetic ricochet Projectile
  -- nano missile projectiles launcher
  -- launcher that heals player when shot near them

-- Add in the rest of dillingspam "options"
  -- application chance sliders for chem and thermal
  -- stun duration slider??

-- Potential rework of Native Settings UI menu
  -- group settings by launcer type?
--------------------------------------------------------------------------

PLR = {
    description = "PLR"
}

local config = require("modules/utils/config")

curSettings = config.loadFile("Data/config.json")

--all the settings coming in

NewBaseProjectileAoEAttackRange = curSettings.NewBaseProjectileAoEAttackRange

NewMissileProjectileAoEAttackRange = curSettings.NewMissileProjectileAoEAttackRange
NewMissileProjectileInlineValue1 = curSettings.NewMissileProjectileInlineValue1
NewMissileProjectileInlineValue2 = curSettings.NewMissileProjectileInlineValue2

NewMissileProjectileChargedAoEAttackRange = curSettings.NewMissileProjectileChargedAoEAttackRange
NewMissileProjectileChargedInlineValue1 = curSettings.NewMissileProjectileChargedInlineValue1
NewMissileProjectileChargedInlineValue2 = curSettings.NewMissileProjectileChargedInlineValue2

NewEMPProjectileAoEAttackRange = curSettings.NewEMPProjectileAoEAttackRange
NewEMPProjectileInlineValue1 = curSettings.NewEMPProjectileInlineValue1
NewEMPProjectileInlineValue2 = curSettings.NewEMPProjectileInlineValue2

NewEMPChargedProjectileAoEAttackRange = curSettings.NewEMPChargedProjectileAoEAttackRange
NewEMPChargedProjectileInlineValue1 = curSettings.NewEMPChargedProjectileInlineValue1
NewEMPChargedProjectileInlineValue2 = curSettings.NewEMPChargedProjectileInlineValue2

NewThermalProjectileAoEAttackRange = curSettings.NewThermalProjectileAoEAttackRange
NewThermalProjectileInlineValue1 = curSettings.NewThermalProjectileInlineValue1
NewThermalProjectileInlineValue2 = curSettings.NewThermalProjectileInlineValue2

NewThermalChargedProjectileAoEAttackRange = curSettings.NewThermalChargedProjectileAoEAttackRange
NewThermalChargedProjectileInlineValue1 = curSettings.NewThermalChargedProjectileInlineValue1
NewThermalChargedProjectileInlineValue2 = curSettings.NewThermalChargedProjectileInlineValue2

NewChemicalProjectileAoEAttackRange = curSettings.NewChemicalProjectileAoEAttackRange
NewChemicalProjectileInlineValue1 = curSettings.NewChemicalProjectileInlineValue1
NewChemicalProjectileInlineValue2 = curSettings.NewChemicalProjectileInlineValue2

NewChemicalChargedProjectileAoEAttackRange = curSettings.NewChemicalChargedProjectileAoEAttackRange
NewChemicalChargedProjectileInlineValue1 = curSettings.NewChemicalChargedProjectileInlineValue1
NewChemicalChargedProjectileInlineValue2 = curSettings.NewChemicalChargedProjectileInlineValue2

NewTranquilizerProjectileAoEAttackRange = curSettings.NewTranquilizerProjectileAoEAttackRange
NewTranquilizerProjectileInlineValue1 = curSettings.NewTranquilizerProjectileInlineValue1
NewTranquilizerProjectileInlineValue2 = curSettings.NewTranquilizerProjectileInlineValue2

NewTranquilizerChargedProjectileAoEAttackRange = curSettings.NewTranquilizerChargedProjectileAoEAttackRange

function PLR:new()

	--defaults
    defaultSettings = {
	NewBaseProjectileAoEAttackRange = 1,
	NewMissileProjectileAoEAttackRange = 2,
	NewMissileProjectileInlineValue1 = -7,
	NewMissileProjectileInlineValue2 = 1,
	NewMissileProjectileChargedAoEAttackRange = 3,
	NewMissileProjectileChargedInlineValue1 = 3,
	NewMissileProjectileChargedInlineValue2 = 3,
	NewEMPProjectileAoEAttackRange = 2,
	NewEMPProjectileInlineValue1 = -10,
	NewEMPProjectileInlineValue2 = 1,
	NewEMPChargedProjectileAoEAttackRange = 4,
	NewEMPChargedProjectileInlineValue1 = -4,
	NewEMPChargedProjectileInlineValue2 = 1,
	NewThermalProjectileAoEAttackRange = 2,
	NewThermalProjectileInlineValue1 = -10,
	NewThermalProjectileInlineValue2 = 1,
	NewThermalChargedProjectileAoEAttackRange = 4,
	NewThermalChargedProjectileInlineValue1 = -5,
	NewThermalChargedProjectileInlineValue2 = 1,
	NewChemicalProjectileAoEAttackRange = 2,
	NewChemicalProjectileInlineValue1 = -10,
	NewChemicalProjectileInlineValue2 = 1,
	NewChemicalChargedProjectileAoEAttackRange = 4,
	NewChemicalChargedProjectileInlineValue1 = -4,
	NewChemicalChargedProjectileInlineValue2 = 1,
	NewTranquilizerProjectileAoEAttackRange = .1,
	NewTranquilizerProjectileInlineValue1 = .2,
	NewTranquilizerProjectileInlineValue2 = 1,
	NewTranquilizerChargedProjectileAoEAttackRange = .1,
	}

	--bring in nativeSettings
	local nativeSettings = GetMod("nativeSettings")
    if not nativeSettings then
      print("[Projectile Launcher Rework] Error: NativeSettings lib not found!")
      return
    end

	--creating tabs and subtabs
	nativeSettings.addTab("/PLR", "Projectile Launcher Rework")
   	nativeSettings.addSubcategory("/PLR/Range", "AoE Settings")
	nativeSettings.addSubcategory("/PLR/Normal", "Normal Shot Damage Settings")
	nativeSettings.addSubcategory("/PLR/Charged", "Charged Shot Damage Settings")

	--Enable reloading mods on exit (courtesy of keanuWheeze)
	local fromMods = false
	Observe("PauseMenuGameController", "OnMenuItemActivated", function (_, _, target)
		fromMods = target:GetData().label == "Mods"
	end)
	Observe("gameuiMenuItemListGameController", "OnMenuItemActivated", function (_, _, target)
		fromMods = target:GetData().label == "Mods"
	end)
	Observe("SettingsMainGameController", "RequestClose", function () -- Handle mod settings close
		if fromMods then
			reloadPLRMods()
			fromMods = false
		end
	end)

	--add all the sliders


	--basic round stuff

	 nativeSettings.addRangeFloat("/PLR/Range", "Basic Round AoE Range", "Determines the area of effect for the basic round.", 1, 10, .01, "%.2f", curSettings.NewBaseProjectileAoEAttackRange, defaultSettings.NewBaseProjectileAoEAttackRange, function(value)
		curSettings.NewBaseProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --missile stuff
	nativeSettings.addRangeFloat("/PLR/Range", "Missile Round AoE Range", "Determines the area of effect for the missile round.", 1, 10, .01, "%.2f", curSettings.NewMissileProjectileAoEAttackRange, defaultSettings.NewMissileProjectileAoEAttackRange, function(value)
		curSettings.NewMissileProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Missile Round Damage Value 1", "Determines the damage amount of the missile round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileInlineValue1, defaultSettings.NewMissileProjectileInlineValue1, function(value)
		curSettings.NewMissileProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Missile Round Damage Value 2", "Determines the damage amount of the missile round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileInlineValue2, defaultSettings.NewMissileProjectileInlineValue2, function(value)
		curSettings.NewMissileProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Range", "Missile Round Charged AoE Range", "Determines the area of effect for the missile charged round.", 1, 10, .01, "%.2f", curSettings.NewMissileProjectileChargedAoEAttackRange, defaultSettings.NewMissileProjectileChargedAoEAttackRange, function(value)
		curSettings.NewMissileProjectileChargedAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "Missile Round Charged Damage Value 1", "Determines the damage amount of the missile charged round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileChargedInlineValue1, defaultSettings.NewMissileProjectileChargedInlineValue1, function(value)
		curSettings.NewMissileProjectileChargedInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "Missile Round Charged Damage Value 2", "Determines the damage amount of the missile charged round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileChargedInlineValue2, defaultSettings.NewMissileProjectileChargedInlineValue2, function(value)
		curSettings.NewMissileProjectileChargedInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --EMP round stuff
	nativeSettings.addRangeFloat("/PLR/Range", "EMP Round AoE Range", "Determines the area of effect for the EMP round.", 1, 10, .01, "%.2f", curSettings.NewEMPProjectileAoEAttackRange, defaultSettings.NewEMPProjectileAoEAttackRange, function(value)
		curSettings.NewEMPProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "EMP Round Damage Value 1", "Determines the damage amount of the EMP round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewEMPProjectileInlineValue1, defaultSettings.NewEMPProjectileInlineValue1, function(value)
		curSettings.NewEMPProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "EMP Round Damage Value 2", "Determines the damage amount of the EMP round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewEMPProjectileInlineValue2, defaultSettings.NewEMPProjectileInlineValue2, function(value)
		curSettings.NewEMPProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Range", "EMP Round Charged AoE Range", "Determines the area of effect for the EMP charged round.", 1, 10, .01, "%.2f", curSettings.NewEMPChargedProjectileAoEAttackRange, defaultSettings.NewEMPChargedProjectileAoEAttackRange, function(value)
		curSettings.NewEMPChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "EMP Round Charged Damage Value 1", "Determines the damage amount of the EMP charged round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewEMPChargedProjectileInlineValue1, defaultSettings.NewEMPChargedProjectileInlineValue1, function(value)
		curSettings.NewEMPChargedProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "EMP Round Charged Damage Value 2", "Determines the damage amount of the EMP charged round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewEMPChargedProjectileInlineValue2, defaultSettings.NewEMPChargedProjectileInlineValue2, function(value)
		curSettings.NewEMPChargedProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --Thermal round stuff
	nativeSettings.addRangeFloat("/PLR/Range", "Thermal Round AoE Range", "Determines the area of effect for the thermal round.", 1, 10, .01, "%.2f", curSettings.NewThermalProjectileAoEAttackRange, defaultSettings.NewThermalProjectileAoEAttackRange, function(value)
		curSettings.NewThermalProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Thermal Round Damage Value 1", "Determines the damage amount of the thermal round based on player level.", -150, 150, .01, "%.2f", curSettings.NewThermalProjectileInlineValue1, defaultSettings.NewThermalProjectileInlineValue1, function(value)
		curSettings.NewThermalProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Thermal Round Damage Value 2", "Determines the damage amount of the thermal round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewThermalProjectileInlineValue2, defaultSettings.NewThermalProjectileInlineValue2, function(value)
		curSettings.NewThermalProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Range", "Thermal Round Charged AoE Range", "Determines the area of effect for the charged thermal round.", 1, 10, .01, "%.2f", curSettings.NewThermalChargedProjectileAoEAttackRange, defaultSettings.NewThermalChargedProjectileAoEAttackRange, function(value)
		curSettings.NewThermalChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "Thermal Round Charged Damage Value 1", "Determines the damage amount of the charged thermal round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewThermalChargedProjectileInlineValue1, defaultSettings.NewThermalChargedProjectileInlineValue1, function(value)
		curSettings.NewThermalChargedProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "Thermal Round Charged Damage Value 2", "Determines the damage amount of the charged thermal round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewThermalChargedProjectileInlineValue2, defaultSettings.NewThermalChargedProjectileInlineValue2, function(value)
		curSettings.NewThermalChargedProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --Chemical round stuff
	nativeSettings.addRangeFloat("/PLR/Range", "Chemical Round AoE Range", "Determines the area of effect for the chemical round.", 1, 10, .01, "%.2f", curSettings.NewChemicalProjectileAoEAttackRange, defaultSettings.NewChemicalProjectileAoEAttackRange, function(value)
		curSettings.NewChemicalProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Chemical Round Damage Value 1", "Determines the damage amount of the chemical round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewChemicalProjectileInlineValue1, defaultSettings.NewChemicalProjectileInlineValue1, function(value)
		curSettings.NewChemicalProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Chemical Round Damage Value 2", "Determines the damage amount of the chemical round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewChemicalProjectileInlineValue2, defaultSettings.NewChemicalProjectileInlineValue2, function(value)
		curSettings.NewChemicalProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Range", "Chemical Round Charged AoE Range", "Determines the area of effect for the charged chemical round.", 1, 10, .01, "%.2f", curSettings.NewChemicalChargedProjectileAoEAttackRange, defaultSettings.NewChemicalChargedProjectileAoEAttackRange, function(value)
		curSettings.NewChemicalChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "Chemical Round Charged Damage Value 1", "Determines the damage amount of the charged chemical round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewChemicalChargedProjectileInlineValue1, defaultSettings.NewChemicalChargedProjectileInlineValue1, function(value)
		curSettings.NewChemicalChargedProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Charged", "Chemical Round Charged Damage Value 2", "Determines the damage amount of the charged chemical round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewChemicalChargedProjectileInlineValue2, defaultSettings.NewChemicalChargedProjectileInlineValue2, function(value)
		curSettings.NewChemicalChargedProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --Tranquilizer round stuff
	nativeSettings.addRangeFloat("/PLR/Range", "Tranquilizer Round AoE Range", "Determines the area of effect for the tranq round.", 0, 5, .01, "%.2f", curSettings.NewTranquilizerProjectileAoEAttackRange, defaultSettings.NewTranquilizerProjectileAoEAttackRange, function(value)
		curSettings.NewTranquilizerProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Tranquilizer Round Damage Value 1", "Determines the damage amount of the tranq round based off of player level for the tranq round.", -10, 10, .01, "%.2f", curSettings.NewTranquilizerProjectileInlineValue1, defaultSettings.NewTranquilizerProjectileInlineValue1, function(value)
		curSettings.NewTranquilizerProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Normal", "Tranquilizer Round Damage Value 2", "Determines the damage amount of the tranq round based off of player tech attribute level.", -10, 10, .01, "%.2f", curSettings.NewTranquilizerProjectileInlineValue2, defaultSettings.NewTranquilizerProjectileInlineValue2, function(value)
		curSettings.NewTranquilizerProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/Range", "Tranquilizer Round Charged AoE Range", "Determines the area of effect for the charged tranq round.", 0, 5, .01, "%.2f", curSettings.NewTranquilizerChargedProjectileAoEAttackRange, defaultSettings.NewTranquilizerChargedProjectileAoEAttackRange, function(value)
		curSettings.NewTranquilizerChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	
end

function refreshVariables()
	NewBaseProjectileAoEAttackRange = curSettings.NewBaseProjectileAoEAttackRange
	NewMissileProjectileAoEAttackRange = curSettings.NewMissileProjectileAoEAttackRange
	NewMissileProjectileInlineValue1 = curSettings.NewMissileProjectileInlineValue1
	NewMissileProjectileInlineValue2 = curSettings.NewMissileProjectileInlineValue2
	NewMissileProjectileChargedAoEAttackRange = curSettings.NewMissileProjectileChargedAoEAttackRange
	NewMissileProjectileChargedInlineValue1 = curSettings.NewMissileProjectileChargedInlineValue1
	NewMissileProjectileChargedInlineValue2 = curSettings.NewMissileProjectileChargedInlineValue2
	NewEMPProjectileAoEAttackRange = curSettings.NewEMPProjectileAoEAttackRange
	NewEMPProjectileInlineValue1 = curSettings.NewEMPProjectileInlineValue1
	NewEMPProjectileInlineValue2 = curSettings.NewEMPProjectileInlineValue2
	NewEMPChargedProjectileAoEAttackRange = curSettings.NewEMPChargedProjectileAoEAttackRange
	NewEMPChargedProjectileInlineValue1 = curSettings.NewEMPChargedProjectileInlineValue1
	NewEMPChargedProjectileInlineValue2 = curSettings.NewEMPChargedProjectileInlineValue2
	NewThermalProjectileAoEAttackRange = curSettings.NewThermalProjectileAoEAttackRange
	NewThermalProjectileInlineValue1 = curSettings.NewThermalProjectileInlineValue1
	NewThermalProjectileInlineValue2 = curSettings.NewThermalProjectileInlineValue2
	NewThermalChargedProjectileAoEAttackRange = curSettings.NewThermalChargedProjectileAoEAttackRange
	NewThermalChargedProjectileInlineValue1 = curSettings.NewThermalChargedProjectileInlineValue1
	NewThermalChargedProjectileInlineValue2 = curSettings.NewThermalChargedProjectileInlineValue2
	NewChemicalProjectileAoEAttackRange = curSettings.NewChemicalProjectileAoEAttackRange
	NewChemicalProjectileInlineValue1 = curSettings.NewChemicalProjectileInlineValue1
	NewChemicalProjectileInlineValue2 = curSettings.NewChemicalProjectileInlineValue2
	NewChemicalChargedProjectileAoEAttackRange = curSettings.NewChemicalChargedProjectileAoEAttackRange
	NewChemicalChargedProjectileInlineValue1 = curSettings.NewChemicalChargedProjectileInlineValue1
	NewChemicalChargedProjectileInlineValue2 = curSettings.NewChemicalChargedProjectileInlineValue2
	NewTranquilizerProjectileAoEAttackRange = curSettings.NewTranquilizerProjectileAoEAttackRange
	NewTranquilizerProjectileInlineValue1 = curSettings.NewTranquilizerProjectileInlineValue1
	NewTranquilizerProjectileInlineValue2 = curSettings.NewTranquilizerProjectileInlineValue2
	NewTranquilizerChargedProjectileAoEAttackRange = curSettings.NewTranquilizerChargedProjectileAoEAttackRange
end
function reloadPLRMods()
	refreshVariables()
	dofile("modules/Set Values.lua")
end

return PLR:new()
