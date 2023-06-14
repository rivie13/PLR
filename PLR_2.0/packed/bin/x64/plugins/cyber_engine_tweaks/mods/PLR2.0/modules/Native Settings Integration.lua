--------------------------------------------------------------------------
-- Projectile Launcher Rework
-- Native Settings Integration.lua
-- Created by: Riviera S. (Arealguywithajob)
-- Created for: Cyberpunk 2077
-- Last Edited: 06/13/2023 09:05 PM
--
-- Special thanks given to: psiberx, wssdude, #1 tweakXL lover, mikeyray, keanuwheeze
-- and everyone else on the cyberpunk2077 modding community discord 
--
-- Special Special thanks to dillingspam for making the Launcher Rebalance mod which inspired me to make my original cyberware AoE rework
-- which is now turning into this. 
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--TODO:
-- finish this code

--- clean it up and make it look better this is bad and ugly as shit.

--- have to figure out a way to make this code cleaner very much boilerplate but is readable
--------------------------------------------------------------------------

--[[NOTE]] -- if coming into this section trying to figure out how it works it would be best to go to the native settings github page which helped me to figure out how to use this stuff. I will not be commenting here how this works.

PLR = {
    description = "PLR"
}

local config = require("modules/utils/config")

curSettings = config.loadFile("Data/config.json")


--all the settings coming in

-- EXPLOSIVE DAMAGE ROUND

NewMissileProjectileAoEAttackRange = curSettings.NewMissileProjectileAoEAttackRange
NewMissileProjectileInlineValue1 = curSettings.NewMissileProjectileInlineValue1
NewMissileProjectileInlineValue2 = curSettings.NewMissileProjectileInlineValue2

NewMissileProjectileChargedAoEAttackRange = curSettings.NewMissileProjectileChargedAoEAttackRange
NewMissileProjectileChargedInlineValue1 = curSettings.NewMissileProjectileChargedInlineValue1
NewMissileProjectileChargedInlineValue2 = curSettings.NewMissileProjectileChargedInlineValue2

-- ELECTRICAL DAMAGE ROUND

NewEMPProjectileAoEAttackRange = curSettings.NewEMPProjectileAoEAttackRange
NewEMPProjectileInlineValue1 = curSettings.NewEMPProjectileInlineValue1
NewEMPProjectileInlineValue2 = curSettings.NewEMPProjectileInlineValue2

NewEMPChargedProjectileAoEAttackRange = curSettings.NewEMPChargedProjectileAoEAttackRange
NewEMPChargedProjectileInlineValue1 = curSettings.NewEMPChargedProjectileInlineValue1
NewEMPChargedProjectileInlineValue2 = curSettings.NewEMPChargedProjectileInlineValue2


-- THERMAL DAMAGE ROUND

NewThermalProjectileAoEAttackRange = curSettings.NewThermalProjectileAoEAttackRange
NewThermalProjectileInlineValue1 = curSettings.NewThermalProjectileInlineValue1
NewThermalProjectileInlineValue2 = curSettings.NewThermalProjectileInlineValue2

NewThermalChargedProjectileAoEAttackRange = curSettings.NewThermalChargedProjectileAoEAttackRange
NewThermalChargedProjectileInlineValue1 = curSettings.NewThermalChargedProjectileInlineValue1
NewThermalChargedProjectileInlineValue2 = curSettings.NewThermalChargedProjectileInlineValue2


-- CHEMICAL DAMAGE ROUND

NewChemicalProjectileAoEAttackRange = curSettings.NewChemicalProjectileAoEAttackRange
NewChemicalProjectileInlineValue1 = curSettings.NewChemicalProjectileInlineValue1
NewChemicalProjectileInlineValue2 = curSettings.NewChemicalProjectileInlineValue2

NewChemicalChargedProjectileAoEAttackRange = curSettings.NewChemicalChargedProjectileAoEAttackRange
NewChemicalChargedProjectileInlineValue1 = curSettings.NewChemicalChargedProjectileInlineValue1
NewChemicalChargedProjectileInlineValue2 = curSettings.NewChemicalChargedProjectileInlineValue2

-- TRANQ ROUND

NewTranquilizerProjectileAoEAttackRange = curSettings.NewTranquilizerProjectileAoEAttackRange
NewTranquilizerProjectileInlineValue1 = curSettings.NewTranquilizerProjectileInlineValue1
NewTranquilizerProjectileInlineValue2 = curSettings.NewTranquilizerProjectileInlineValue2

NewTranquilizerChargedProjectileAoEAttackRange = curSettings.NewTranquilizerChargedProjectileAoEAttackRange

-- BIOTECHNICA KINETIC ROUNDS ###############################################################################################

--M1 Round
NewKineticProjectileCommonRange = curSettings.NewKineticProjectileCommonRange
NewKineticProjectileCommonAttackDamageByLevel = curSettings.NewKineticProjectileCommonAttackDamageByLevel
NewKineticProjectileCommonAttackDamageByTechAbility = curSettings.NewKineticProjectileCommonAttackDamageByTechAbility

NewKineticProjectileCommonChargedRange = curSettings.NewKineticProjectileCommonChargedRange
NewKineticProjectileCommonChargedAttackDamageByLevel = curSettings.NewKineticProjectileCommonChargedAttackDamageByLevel
NewKineticProjectileCommonChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileCommonChargedAttackDamageByTechAbility


--M2 Round
NewKineticProjectileUncommonRange = curSettings.NewKineticProjectileUncommonRange
NewKineticProjectileUncommonAttackDamageByLevel = curSettings.NewKineticProjectileUncommonAttackDamageByLevel
NewKineticProjectileUncommonAttackDamageByTechAbility = curSettings.NewKineticProjectileUncommonAttackDamageByTechAbility

NewKineticProjectileUncommonChargedRange = curSettings.NewKineticProjectileUncommonChargedRange
NewKineticProjectileUncommonChargedAttackDamageByLevel = curSettings.NewKineticProjectileUncommonChargedAttackDamageByLevel
NewKineticProjectileUncommonChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileUncommonChargedAttackDamageByTechAbility


--M3 Round
NewKineticProjectileRareRange = curSettings.NewKineticProjectileRareRange
NewKineticProjectileRareAttackDamageByLevel = curSettings.NewKineticProjectileRareAttackDamageByLevel
NewKineticProjectileRareAttackDamageByTechAbility = curSettings.NewKineticProjectileRareAttackDamageByTechAbility

NewKineticProjectileRareChargedRange = curSettings.NewKineticProjectileRareChargedRange
NewKineticProjectileRareChargedAttackDamageByLevel = curSettings.NewKineticProjectileRareChargedAttackDamageByLevel
NewKineticProjectileRareChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileRareChargedAttackDamageByTechAbility


--M4 Round
NewKineticProjectileEpicRange = curSettings.NewKineticProjectileEpicRange
NewKineticProjectileEpicAttackDamageByLevel = curSettings.NewKineticProjectileEpicAttackDamageByLevel
NewKineticProjectileCommonAttackDamageByTechAbility = curSettings.NewKineticProjectileEpicAttackDamageByTechAbility

NewKineticProjectileEpicChargedRange = curSettings.NewKineticProjectileEpicChargedRange
NewKineticProjectileEpicChargedAttackDamageByLevel = curSettings.NewKineticProjectileEpicChargedAttackDamageByLevel
NewKineticProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileEpicChargedAttackDamageByTechAbility


--M5 Round
NewKineticProjectileLegendaryRange = curSettings.NewKineticProjectileLegendaryRange
NewKineticProjectileLegendaryAttackDamageByLevel = curSettings.NewKineticProjectileLegendaryAttackDamageByLevel
NewKineticProjectileLegendaryAttackDamageByTechAbility = curSettings.NewKineticProjectileLegendaryAttackDamageByTechAbility

NewKineticProjectileLegendaryChargedRange = curSettings.NewKineticProjectileLegendaryChargedRange
NewKineticProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewKineticProjectileLegendaryChargedAttackDamageByLevel
NewKineticProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileLegendaryChargedAttackDamageByTechAbility


--ZETATECH BOUNCE ROUNDS########################################################################################

--M1  ROUND
NewZetatechBounceRoundRareRange = curSettings.NewZetatechBounceRoundRareRange
NewZetatechBounceRoundRareAttackDamageByLevel = curSettings.NewZetatechBounceRoundRareAttackDamageByLevel
NewZetatechBounceRoundRareAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundRareAttackDamageByTechAbility

NewZetatechBounceRoundRareChargedRange = curSettings.NewZetatechBounceRoundRareChargedRange
NewZetatechBounceRoundRareChargedAttackDamageByLevel = curSettings.NewZetatechBounceRoundRareChargedAttackDamageByLevel
NewZetatechBounceRoundRareChargedAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundRareChargedAttackDamageByTechAbility


--M2  ROUND
NewZetatechBounceRoundEpicRange = curSettings.NewZetatechBounceRoundEpicRange
NewZetatechBounceRoundEpicAttackDamageByLevel = curSettings.NewZetatechBounceRoundEpicAttackDamageByLevel
NewZetatechBounceRoundEpicAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundEpicAttackDamageByTechAbility

NewZetatechBounceRoundEpicChargedRange = curSettings.NewZetatechBounceRoundEpicChargedRange
NewZetatechBounceRoundEpicChargedAttackDamageByLevel = curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByLevel
NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility


--M3  ROUND
NewZetatechBounceRoundLegendaryRange = curSettings.NewZetatechBounceRoundLegendaryRange
NewZetatechBounceRoundLegendaryAttackDamageByLevel = curSettings.NewZetatechBounceRoundLegendaryAttackDamageByLevel
NewZetatechBounceRoundLegendaryAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundLegendaryAttackDamageByTechAbility

NewZetatechBounceRoundLegendaryChargedRange = curSettings.NewZetatechBounceRoundLegendaryChargedRange
NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel = curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel
NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility


--EPIC LAUNCHER ROUNDS##################################################################################################

-- EXPLOSIVE DAMAGE ROUND

NewMissileProjectileEpicRange = curSettings.NewMissileProjectileEpicRange
NewMissileProjectileEpicAttackDamageByLevel = curSettings.NewMissileProjectileEpicAttackDamageByLevel
NewMissileProjectileEpicAttackDamageByTechAbility = curSettings.NewMissileProjectileEpicAttackDamageByTechAbility

NewMissileProjectileEpicChargedRange = curSettings.NewMissileProjectileEpicChargedRange
NewMissileProjectileEpicChargedAttackDamageByLevel = curSettings.NewMissileProjectileEpicChargedAttackDamageByLevel
NewMissileProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewMissileProjectileEpicChargedAttackDamageByTechAbility


-- ELECTRICAL DAMAGE ROUND

NewEMPProjectileEpicRange = curSettings.NewEMPProjectileEpicRange
NewEMPProjectileEpicAttackDamageByLevel = curSettings.NewEMPProjectileEpicAttackDamageByLevel
NewEMPProjectileEpicAttackDamageByTechAbility = curSettings.NewEMPProjectileEpicAttackDamageByTechAbility

NewEMPProjectileEpicChargedRange = curSettings.NewEMPProjectileEpicChargedRange
NewEMPProjectileEpicChargedAttackDamageByLevel = curSettings.NewEMPProjectileEpicChargedAttackDamageByLevel
NewEMPProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewEMPProjectileEpicChargedAttackDamageByTechAbility


-- THERMAL DAMAGE ROUND

NewThermalProjectileEpicRange = curSettings.NewThermalProjectileEpicRange
NewThermalProjectileEpicAttackDamageByLevel = curSettings.NewThermalProjectileEpicAttackDamageByLevel
NewThermalProjectileEpicAttackDamageByTechAbility = curSettings.NewThermalProjectileEpicAttackDamageByTechAbility

NewThermalProjectileEpicChargedRange = curSettings.NewThermalProjectileEpicChargedRange
NewThermalProjectileEpicChargedAttackDamageByLevel = curSettings.NewThermalProjectileEpicChargedAttackDamageByLevel
NewThermalProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewThermalProjectileEpicChargedAttackDamageByTechAbility


-- CHEMICAL DAMAGE ROUND

NewChemicalProjectileEpicRange = curSettings.NewChemicalProjectileEpicRange
NewChemicalProjectileEpicAttackDamageByLevel = curSettings.NewChemicalProjectileEpicAttackDamageByLevel
NewChemicalProjectileEpicAttackDamageByTechAbility = curSettings.NewChemicalProjectileEpicAttackDamageByTechAbility

NewChemicalProjectileEpicChargedRange = curSettings.NewChemicalProjectileEpicChargedRange
NewChemicalProjectileEpicChargedAttackDamageByLevel = curSettings.NewChemicalProjectileEpicChargedAttackDamageByLevel
NewChemicalProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewChemicalProjectileEpicChargedAttackDamageByTechAbility


--LEGENDARY LAUNCHER ROUNDS##############################################################################################

-- EXPLOSIVE DAMAGE ROUND

NewMissileProjectileLegendaryRange = curSettings.NewMissileProjectileLegendaryRange
NewMissileProjectileLegendaryAttackDamageByLevel = curSettings.NewMissileProjectileLegendaryAttackDamageByLevel
NewMissileProjectileLegendaryAttackDamageByTechAbility = curSettings.NewMissileProjectileLegendaryAttackDamageByTechAbility

NewMissileProjectileLegendaryChargedRange = curSettings.NewMissileProjectileLegendaryChargedRange
NewMissileProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewMissileProjectileLegendaryChargedAttackDamageByLevel
NewMissileProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewMissileProjectileLegendaryChargedAttackDamageByTechAbility


-- ELECTRICAL DAMAGE ROUND

NewEMPProjectileLegendaryRange = curSettings.NewEMPProjectileLegendaryRange
NewEMPProjectileLegendaryAttackDamageByLevel = curSettings.NewEMPProjectileLegendaryAttackDamageByLevel
NewEMPProjectileLegendaryAttackDamageByTechAbility = curSettings.NewEMPProjectileLegendaryAttackDamageByTechAbility

NewEMPProjectileLegendaryChargedRange = curSettings.NewEMPProjectileLegendaryChargedRange
NewEMPProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewEMPProjectileLegendaryChargedAttackDamageByLevel
NewEMPProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewEMPProjectileLegendaryChargedAttackDamageByTechAbility


-- THERMAL DAMAGE ROUND

NewThermalProjectileLegendaryRange = curSettings.NewThermalProjectileLegendaryRange
NewThermalProjectileLegendaryAttackDamageByLevel = curSettings.NewThermalProjectileLegendaryAttackDamageByLevel
NewThermalProjectileLegendaryAttackDamageByTechAbility = curSettings.NewThermalProjectileLegendaryAttackDamageByTechAbility

NewThermalProjectileLegendaryChargedRange = curSettings.NewThermalProjectileLegendaryChargedRange
NewThermalProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewThermalProjectileLegendaryChargedAttackDamageByLevel
NewThermalProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewThermalProjectileLegendaryChargedAttackDamageByTechAbility


-- CHEMICAL DAMAGE ROUND

NewChemicalProjectileLegendaryRange = curSettings.NewChemicalProjectileLegendaryRange
NewChemicalProjectileLegendaryAttackDamageByLevel = curSettings.NewChemicalProjectileLegendaryAttackDamageByLevel
NewChemicalProjectileLegendaryAttackDamageByTechAbility = curSettings.NewChemicalProjectileLegendaryAttackDamageByTechAbility

NewChemicalProjectileLegendaryChargedRange = curSettings.NewChemicalProjectileLegendaryChargedRange
NewChemicalProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByLevel
NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility



---############################################################################################################################
function PLR:new()

	--defaults
    defaultSettings = {

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

	---NEED TO ADD IN THE DEFAULTS HERE LIKE HOW IT IS ABOVE FOR THE REST OF THE NEW ROUNDS!!!!!!!!!!

	NewKineticProjectileCommonRange = 0.5,
  	NewKineticProjectileCommonAttackDamageByLevel = -10,
  	NewKineticProjectileCommonAttackDamageByTechAbility = 1,
  	NewKineticProjectileCommonChargedRange = 0.5,
  	NewKineticProjectileCommonChargedAttackDamageByLevel = -7,
  	NewKineticProjectileCommonChargedAttackDamageByTechAbility = -3,
  	
	NewKineticProjectileUncommonRange = 0.75,
  	NewKineticProjectileUncommonAttackDamageByLevel = -7,
  	NewKineticProjectileUncommonAttackDamageByTechAbility = 1,
  	NewKineticProjectileUncommonChargedRange = 0.75,
  	NewKineticProjectileUncommonChargedAttackDamageByLevel = -4,
  	NewKineticProjectileUncommonChargedAttackDamageByTechAbility = -3,
 
	NewKineticProjectileRareRange = 1,
 	NewKineticProjectileRareAttackDamageByLevel = -4,
 	NewKineticProjectileRareAttackDamageByTechAbility = 1,
  	NewKineticProjectileRareChargedRange = 1,
  	NewKineticProjectileRareChargedAttackDamageByLevel = 1,
  	NewKineticProjectileRareChargedAttackDamageByTechAbility = -3,
  
	NewKineticProjectileEpicRange = 1.25,
  	NewKineticProjectileEpicAttackDamageByLevel = 1,
  	NewKineticProjectileEpicAttackDamageByTechAbility = 1,
  	NewKineticProjectileEpicChargedRange = 1.25,
  	NewKineticProjectileEpicChargedAttackDamageByLevel = 3,
  	NewKineticProjectileEpicChargedAttackDamageByTechAbility = -3,

  	NewKineticProjectileLegendaryRange = 1.5,
  	NewKineticProjectileLegendaryAttackDamageByLevel = 3,
  	NewKineticProjectileLegendaryAttackDamageByTechAbility = 1,
  	NewKineticProjectileLegendaryChargedRange = 1.5,
  	NewKineticProjectileLegendaryChargedAttackDamageByLevel = 7,
  	NewKineticProjectileLegendaryChargedAttackDamageByTechAbility = -3,

  	NewZetatechBounceRoundRareRange = 3,
  	NewZetatechBounceRoundRareAttackDamageByLevel = -2,
  	NewZetatechBounceRoundRareAttackDamageByTechAbility = 1,
  	NewZetatechBounceRoundRareChargedRange = 3,
  	NewZetatechBounceRoundRareChargedAttackDamageByLevel = -2,
  	NewZetatechBounceRoundRareChargedAttackDamageByTechAbility = 1,

  	NewZetatechBounceRoundEpicRange = 3,
  	NewZetatechBounceRoundEpicAttackDamageByLevel = -2,
  	NewZetatechBounceRoundEpicAttackDamageByTechAbility = 1,
  	NewZetatechBounceRoundEpicChargedRange = 3,
  	NewZetatechBounceRoundEpicChargedAttackDamageByLevel = -2,
  	NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility = 1,
  	
	NewZetatechBounceRoundLegendaryRange = 3,
  	NewZetatechBounceRoundLegendaryAttackDamageByLevel = -2,
  	NewZetatechBounceRoundLegendaryAttackDamageByTechAbility = 1,
  	NewZetatechBounceRoundLegendaryChargedRange = 3,
  	NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel = -2,
  	NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility = 1,
	
	NewMissileProjectileUncommonRange = 1,
  	NewMissileProjectileUncommonAttackDamageByLevel = -9,
  	NewMissileProjectileUncommonAttackDamageByTechAbility = 1,
  	NewMissileProjectileUncommonChargedRange = 1.5,
  	NewMissileProjectileUncommonChargedAttackDamageByLevel = 1,
  	NewMissileProjectileUncommonChargedAttackDamageByTechAbility = 1,

  	NewMissileProjectileEpicRange = 2,
  	NewMissileProjectileEpicAttackDamageByLevel = -5,
  	NewMissileProjectileEpicAttackDamageByTechAbility = 1,
  	NewMissileProjectileEpicChargedRange = 2.5,
  	NewMissileProjectileEpicChargedAttackDamageByLevel = 6,
  	NewMissileProjectileEpicChargedAttackDamageByTechAbility = 3,
  	
	NewMissileProjectileLegendaryRange = 4,
  	NewMissileProjectileLegendaryAttackDamageByLevel = -2,
  	NewMissileProjectileLegendaryAttackDamageByTechAbility = 1,
  	NewMissileProjectileLegendaryChargedRange = 4.5,
  	NewMissileProjectileLegendaryChargedAttackDamageByLevel = 10,
  	NewMissileProjectileLegendaryChargedAttackDamageByTechAbility = 3,

  	NewThermalProjectileEpicRange = 3,
  	NewThermalProjectileEpicAttackDamageByLevel = -5,
  	NewThermalProjectileEpicAttackDamageByTechAbility = 1,
  	NewThermalProjectileEpicChargedRange = 3.5,
  	NewThermalProjectileEpicChargedAttackDamageByLevel = -3,
  	NewThermalProjectileEpicChargedAttackDamageByTechAbility = 3.5,
  	
	NewThermalProjectileLegendaryRange = 3,
  	NewThermalProjectileLegendaryAttackDamageByLevel = -2,
  	NewThermalProjectileLegendaryAttackDamageByTechAbility = -3,
  	NewThermalProjectileLegendaryChargedRange = 3.5,
  	NewThermalProjectileLegendaryChargedAttackDamageByLevel = 3,
  	NewThermalProjectileLegendaryChargedAttackDamageByTechAbility = 3.5,

  	NewEMPProjectileEpicRange = 3,
  	NewEMPProjectileEpicAttackDamageByLevel = -5,
  	NewEMPProjectileEpicAttackDamageByTechAbility = 7,
  	NewEMPProjectileEpicChargedRange = 3.5,
  	NewEMPProjectileEpicChargedAttackDamageByLevel = -4,
  	NewEMPProjectileEpicChargedAttackDamageByTechAbility = 1,

  	NewEMPProjectileLegendaryRange = 5,
  	NewEMPProjectileLegendaryAttackDamageByLevel = -3,
  	NewEMPProjectileLegendaryAttackDamageByTechAbility = 7,
  	NewEMPProjectileLegendaryChargedRange = 6,
  	NewEMPProjectileLegendaryChargedAttackDamageByLevel = -2,
  	NewEMPProjectileLegendaryChargedAttackDamageByTechAbility = 1,
  	
	NewChemicalProjectileEpicRange = 3,
  	NewChemicalProjectileEpicAttackDamageByLevel = -5,
  	NewChemicalProjectileEpicAttackDamageByTechAbility = 1,
  	NewChemicalProjectileEpicChargedRange = 3.5,
  	NewChemicalProjectileEpicChargedAttackDamageByLevel = -2,
  	NewChemicalProjectileEpicChargedAttackDamageByTechAbility = 1,
  	
	NewChemicalProjectileLegendaryRange = 3,
  	NewChemicalProjectileLegendaryAttackDamageByLevel = -2,
  	NewChemicalProjectileLegendaryAttackDamageByTechAbility = 1,
  	NewChemicalProjectileLegendaryChargedRange =  3.5,
  	NewChemicalProjectileLegendaryChargedAttackDamageByLevel = 3,
  	NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility = 1,
  
	NewRainbowRoundRange = 6,
  	NewRainbowRoundAttackDamageByLevelPhysical = -7,
  	NewRainbowRoundAttackDamageByLevelElectrical = -7,
  	NewRainbowRoundAttackDamageByLevelChemical = -7,
  	NewRainbowRoundAttackDamageByLevelThermal = -7,
  	NewRainbowRoundAttackDamageByTechAbilityPhysical = 1,
  	NewRainbowRoundAttackDamageByTechAbilityElectrical = 1,
  	NewRainbowRoundAttackDamageByTechAbilityChemical = 1,
  	NewRainbowRoundAttackDamageByTechAbilityThermal = 1,

	}

	--bring in nativeSettings
	local nativeSettings = GetMod("nativeSettings")
    if not nativeSettings then
      print("[Projectile Launcher Rework] Error: NativeSettings lib not found!")
      return
    end

	--#####################################TESTING
	-- creating new subcategories for everything
	--DON'T FORGET TO CREATE YOUR FUCKING TAB IDIOT
	nativeSettings.addTab("/PLR", "Projectile Launcher Rework")
	nativeSettings.addSubcategory("/PLR/KineticProjectileRounds", "BIOTECHNICA ROUNDS")
	nativeSettings.addSubcategory("/PLR/BounceRounds", "ZETATECH ROUNDS")
	nativeSettings.addSubcategory("/PLR/SpecialRounds", "SPECIAL ROUNDS")
	nativeSettings.addSubcategory("/PLR/EpicVanillaRounds", "EPIC ROUNDS - VANILLA GAME")
	nativeSettings.addSubcategory("/PLR/LegendaryVanillaRounds", "LEGENDARY ROUNDS - VANILLA GAME")
	nativeSettings.addSubcategory("/PLR/VanillaRounds", "RARE ROUNDS FROM THE VANILLA GAME")


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


	--#################################################################################################################################### NEW STUFF ##############################################################################################################################################################################################################################################




	-- kinetic projectile round settings implementation
	
	--### M1 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M1 ROUND RANGE",
		"Determines the area of effect for the kinetic round.", 1, 10, .05, "%.2f", 
		curSettings.NewKineticProjectileCommonRange, defaultSettings.NewKineticProjectileCommonRange, function(value)
		curSettings.NewKineticProjectileCommonRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M1 ROUND DAMAGE VALUE - BY LEVEL", 
		"Determines the damage amaount of the kinetic round based off of player level.", -150, 150, .5, "%.2f", 
		curSettings.NewKineticProjectileCommonAttackDamageByLevel, defaultSettings.NewKineticProjectileCommonAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileCommonAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M1 ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the damage amaount of the kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f",
		curSettings.NewKineticProjectileCommonAttackDamageByTechAbility, defaultSettings.NewKineticProjectileCommonAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileCommonAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M1 ROUND CHARGED RANGE",
	    "Determines the area of effect for the charged kinetic round.", 1, 10, .05, "%.2f",
	    curSettings.NewKineticProjectileCommonChargedRange, defaultSettings.NewKineticProjectileCommonChargedRange, function(value)
		curSettings.NewKineticProjectileCommonChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M1 ROUND CHARGED DAMAGE VALUE - BY LEVEL",
	    "Determines the damage amaount of the charged kinetic round based off of player level.", -150, 150, .5, "%.2f",
	    curSettings.NewKineticProjectileCommonChargedAttackDamageByLevel, defaultSettings.NewKineticProjectileCommonChargedAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileCommonChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M1 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY",
		"Determines the damage amaount of the charged kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f",
		curSettings.NewKineticProjectileCommonChargedAttackDamageByTechAbility, defaultSettings.NewKineticProjectileCommonChargedAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileCommonChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	--### M2 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M2 ROUND RANGE", "Determines the area of effect for the kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileUncommonRange, defaultSettings.NewKineticProjectileUncommonRange, function(value)
		curSettings.NewKineticProjectileUncommonRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M2 ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileUncommonAttackDamageByLevel, defaultSettings.NewKineticProjectileUncommonAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileUncommonAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M2 ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileUncommonAttackDamageByTechAbility, defaultSettings.NewKineticProjectileUncommonAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileUncommonAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M2 ROUND CHARGED RANGE", "Determines the area of effect for the charged kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileUncommonChargedRange, defaultSettings.NewKineticProjectileUncommonChargedRange, function(value)
		curSettings.NewKineticProjectileUncommonChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M2 ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the charged kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileUncommonChargedAttackDamageByLevel, defaultSettings.NewKineticProjectileUncommonChargedAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileUncommonChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M2 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the charged kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileUncommonChargedAttackDamageByTechAbility, defaultSettings.NewKineticProjectileUncommonChargedAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileUncommonChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	--### M3 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M3 ROUND RANGE", "Determines the area of effect for the kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileRareRange, defaultSettings.NewKineticProjectileRareRange, function(value)
		curSettings.NewKineticProjectileRareRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M3 ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileRareAttackDamageByLevel, defaultSettings.NewKineticProjectileRareAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileRareAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M3 ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileRareAttackDamageByTechAbility, defaultSettings.NewKineticProjectileRareAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileRareAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M3 ROUND CHARGED RANGE", "Determines the area of effect for the charged kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileRareChargedRange, defaultSettings.NewKineticProjectileRareChargedRange, function(value)
		curSettings.NewKineticProjectileRareChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M3 ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the charged kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileRareChargedAttackDamageByLevel, defaultSettings.NewKineticProjectileRareChargedAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileRareChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M3 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the charged kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileRareChargedAttackDamageByTechAbility, defaultSettings.NewKineticProjectileRareChargedAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileRareChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	--### M4 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M4 ROUND RANGE", "Determines the area of effect for the kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileEpicRange, defaultSettings.NewKineticProjectileEpicRange, function(value)
		curSettings.NewKineticProjectileEpicRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M4 ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileEpicAttackDamageByLevel, defaultSettings.NewKineticProjectileEpicAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileEpicAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M4 ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileEpicAttackDamageByTechAbility, defaultSettings.NewKineticProjectileEpicAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileEpicAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M4 ROUND CHARGED RANGE", "Determines the area of effect for the charged kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileEpicChargedRange, defaultSettings.NewKineticProjectileEpicChargedRange, function(value)
		curSettings.NewKineticProjectileEpicChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M4 ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the charged kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileEpicChargedAttackDamageByLevel, defaultSettings.NewKineticProjectileEpicChargedAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileEpicChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M4 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the charged kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileEpicChargedAttackDamageByTechAbility, defaultSettings.NewKineticProjectileEpicChargedAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileEpicChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	--### M5 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M5 ROUND RANGE", "Determines the area of effect for the kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileLegendaryRange, defaultSettings.NewKineticProjectileLegendaryRange, function(value)
		curSettings.NewKineticProjectileLegendaryRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M5 ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileLegendaryAttackDamageByLevel, defaultSettings.NewKineticProjectileLegendaryAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileLegendaryAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M5 ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileLegendaryAttackDamageByTechAbility, defaultSettings.NewKineticProjectileLegendaryAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileLegendaryAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M5 ROUND CHARGED RANGE", "Determines the area of effect for the charged kinetic round.", 1, 10, .05, "%.2f", curSettings.NewKineticProjectileLegendaryChargedRange, defaultSettings.NewKineticProjectileLegendaryChargedRange, function(value)
		curSettings.NewKineticProjectileLegendaryChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M5 ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the charged kinetic round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileLegendaryChargedAttackDamageByLevel, defaultSettings.NewKineticProjectileLegendaryChargedAttackDamageByLevel, function(value)
		curSettings.NewKineticProjectileLegendaryChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/KineticProjectileRounds", "M5 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the charged kinetic round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewKineticProjectileLegendaryChargedAttackDamageByTechAbility, defaultSettings.NewKineticProjectileLegendaryChargedAttackDamageByTechAbility, function(value)
		curSettings.NewKineticProjectileLegendaryChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--################################################################################################################################################################################################################################################################################################################################################################################################################################################


	--ZETATECH ROUNDS HERE:
	--### M1 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M1 ROUND RANGE", "Determines the area of effect for the bounce round.", 1, 10, .05, "%.2f", curSettings.NewZetatechBounceRoundRareRange, defaultSettings.NewZetatechBounceRoundRareRange, function(value)
		curSettings.NewZetatechBounceRoundRareRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M1 ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the bounce round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundRareAttackDamageByLevel, defaultSettings.NewZetatechBounceRoundRareAttackDamageByLevel, function(value)
		curSettings.NewZetatechBounceRoundRareAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M1 ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the bounce round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundRareAttackDamageByTechAbility, defaultSettings.NewZetatechBounceRoundRareAttackDamageByTechAbility, function(value)
		curSettings.NewZetatechBounceRoundRareAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M1 ROUND CHARGED RANGE", "Determines the area of effect for the charged bounce round.", 1, 10, .05, "%.2f", curSettings.NewZetatechBounceRoundRareChargedRange, defaultSettings.NewZetatechBounceRoundRareChargedRange, function(value)
		curSettings.NewZetatechBounceRoundRareChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M1 ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the charged bounce round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundRareChargedAttackDamageByLevel, defaultSettings.NewZetatechBounceRoundRareChargedAttackDamageByLevel, function(value)
		curSettings.NewZetatechBounceRoundRareChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M1 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the charged bounce round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundRareChargedAttackDamageByTechAbility, defaultSettings.NewZetatechBounceRoundRareChargedAttackDamageByTechAbility, function(value)
		curSettings.NewZetatechBounceRoundRareChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	--### M2 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M2 ROUND RANGE", "Determines the area of effect for the bounce round.", 1, 10, .05, "%.2f", curSettings.NewZetatechBounceRoundRareRange, defaultSettings.NewZetatechBounceRoundRareRange, function(value)
		curSettings.NewZetatechBounceRoundEpicRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M2 ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the bounce round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundRareAttackDamageByLevel, defaultSettings.NewZetatechBounceRoundRareAttackDamageByLevel, function(value)
		curSettings.NewZetatechBounceRoundEpicAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M2 ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the bounce round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundRareAttackDamageByTechAbility, defaultSettings.NewZetatechBounceRoundRareAttackDamageByTechAbility, function(value)
		curSettings.NewZetatechBounceRoundEpicAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M2 ROUND CHARGED RANGE", "Determines the area of effect for the charged bounce round.", 1, 10, .05, "%.2f", curSettings.NewZetatechBounceRoundEpicChargedRange, defaultSettings.NewZetatechBounceRoundEpicChargedRange, function(value)
		curSettings.NewZetatechBounceRoundEpicChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M2 ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the charged bounce round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByLevel, defaultSettings.NewZetatechBounceRoundEpicChargedAttackDamageByLevel, function(value)
		curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M2 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the charged bounce round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility, defaultSettings.NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility, function(value)
		curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	--### M3 ROUND STUFF
	--normal round stuff
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M3 ROUND RANGE", "Determines the area of effect for the bounce round.", 1, 10, .05, "%.2f", curSettings.NewZetatechBounceRoundLegendaryRange, defaultSettings.NewZetatechBounceRoundLegendaryRange, function(value)
		curSettings.NewZetatechBounceRoundLegendaryRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M3 ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the bounce round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundLegendaryAttackDamageByLevel, defaultSettings.NewZetatechBounceRoundLegendaryAttackDamageByLevel, function(value)
		curSettings.NewZetatechBounceRoundLegendaryAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M3 ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the bounce round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundLegendaryAttackDamageByTechAbility, defaultSettings.NewZetatechBounceRoundLegendaryAttackDamageByTechAbility, function(value)
		curSettings.NewZetatechBounceRoundLegendaryAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged round stuff
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M3 ROUND CHARGED RANGE", "Determines the area of effect for the charged bounce round.", 1, 10, .05, "%.2f", curSettings.NewZetatechBounceRoundLegendaryChargedRange, defaultSettings.NewZetatechBounceRoundLegendaryChargedRange, function(value)
		curSettings.NewZetatechBounceRoundLegendaryChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M3 ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the charged bounce round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel, defaultSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel, function(value)
		curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/BounceRounds", "M3 ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amaount of the charged bounce round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility, defaultSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility, function(value)
		curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	--#################################################################################################################################################################################################################################################################################################################################################################################################################################################


	---SPECIAL ROUNDS START HERE: Special rounds include rainbow round
	--will create more special rounds later

	--##RAINBOW ROUND STUFF NO CHARGED SETTINGS BECAUSE I SAID SO

	--physical damage part of rainbow round and the range
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND RANGE", "Determines the area of effect for the rainbow round.", 1, 10, .05, "%.2f", curSettings.NewRainbowRoundRange, defaultSettings.NewRainbowRoundRange, function(value)
		curSettings.NewRainbowRoundRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND PHYSICAL DAMAGE VALUE - BY LEVEL", "Determines the physical damage amaount of the rainbow round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByLevelPhysical, defaultSettings.NewRainbowRoundAttackDamageByLevelPhysical, function(value)
		curSettings.NewRainbowRoundAttackDamageByLevelPhysical = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND PHYSICAL DAMAGE VALUE - BY TECH ABILITY", "Determines the physical damage amaount of the rainbow round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByTechAbilityPhysical, defaultSettings.NewRainbowRoundAttackDamageByTechAbilityPhysical, function(value)
		curSettings.NewRainbowRoundAttackDamageByTechAbilityPhysical = value
		config.saveFile("Data/config.json", curSettings)
	end )



	--chemical damage part of rainbow round
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND CHEMICAL DAMAGE VALUE - BY LEVEL", "Determines the chemical damage amaount of the rainbow round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByLevelChemical, defaultSettings.NewRainbowRoundAttackDamageByLevelChemical, function(value)
		curSettings.NewRainbowRoundAttackDamageByLevelChemical = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND CHEMICAL DAMAGE VALUE - BY TECH ABILITY", "Determines the chemical damage amaount of the rainbow round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByTechAbilityChemical, defaultSettings.NewRainbowRoundAttackDamageByTechAbilityChemical, function(value)
		curSettings.NewRainbowRoundAttackDamageByTechAbilityChemical = value
		config.saveFile("Data/config.json", curSettings)
	end )



	--thermal damage part of the round
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND THERMAL DAMAGE VALUE - BY LEVEL", "Determines the thermal damage amaount of the rainbow round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByLevelThermal, defaultSettings.NewRainbowRoundAttackDamageByLevelThermal, function(value)
		curSettings.NewRainbowRoundAttackDamageByLevelThermal = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND THERMAL DAMAGE VALUE - BY TECH ABILITY", "Determines the thermal damage amaount of the rainbow round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByTechAbilityThermal, defaultSettings.NewRainbowRoundAttackDamageByTechAbilityThermal, function(value)
		curSettings.NewRainbowRoundAttackDamageByTechAbilityThermal = value
		config.saveFile("Data/config.json", curSettings)
	end )



	--electrical damage part of the round
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND ELECTRICAL DAMAGE VALUE - BY LEVEL", "Determines the electrical damage amaount of the rainbow round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByLevelElectrical, defaultSettings.NewRainbowRoundAttackDamageByLevelElectrical, function(value)
		curSettings.NewRainbowRoundAttackDamageByLevelElectrical = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "RAINBOW ROUND ELECTRICAL DAMAGE VALUE - BY TECH ABILITY", "Determines the electrical damage amaount of the rainbow round based off of player tech attribut level.", -150, 150, .5, "%.2f", curSettings.NewRainbowRoundAttackDamageByTechAbilityElectrical, defaultSettings.NewRainbowRoundAttackDamageByTechAbilityElectrical, function(value)
		curSettings.NewRainbowRoundAttackDamageByTechAbilityElectrical = value
		config.saveFile("Data/config.json", curSettings)
	end )




	--UNCOMMON EXPLOSIVE ROUND STUFF IS GOING HERE TOO
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "UNCOMMON EXPLOSIVE ROUND RANGE", "Determines the area of effect for the uncommon explosive round.", 1, 10, .05, "%.2f", curSettings.NewMissileProjectileUncommonRange, defaultSettings.NewMissileProjectileUncommonRange, function(value)
		curSettings.NewMissileProjectileUncommonRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "UNCOMMON EXPLOSIVE ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amaount of the uncommon explosive round based off of player level.", -150, 150, .5, "%.2f", curSettings.NewMissileProjectileUncommonAttackDamageByLevel, defaultSettings.NewMissileProjectileUncommonAttackDamageByLevel, function(value)
		curSettings.NewMissileProjectileUncommonAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "UNCOMMON EXPLOSIVE ROUND DAMAGE VALUE - BY TECH ABILITY",
	 "Determines the physical damage amaount of the uncommon explosive round based off of player tech attribut level.",
	  -150, 150, .5, "%.2f", curSettings.NewMissileProjectileUncommonAttackDamageByTechAbility, defaultSettings.NewMissileProjectileUncommonAttackDamageByTechAbility, function(value)
		curSettings.NewMissileProjectileUncommonAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "UNCOMMON EXPLOSIVE CHARGED ROUND RANGE",
	 "Determines the area of effect for the uncommon charged explosive round.", 1, 10, .05, "%.2f",
	  curSettings.NewMissileProjectileUncommonRange, defaultSettings.NewMissileProjectileUncommonRange, function(value)
		curSettings.NewMissileProjectileUncommonChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "UNCOMMON EXPLOSIVE ROUND CHARGED DAMAGE VALUE - BY LEVEL",
	 "Determines the damage amaount of the uncommon explosive round based off of player level.", -150, 150, .5, "%.2f",
	  curSettings.NewMissileProjectileUncommonChargedAttackDamageByLevel, defaultSettings.NewMissileProjectileUncommonChargedAttackDamageByLevel, function(value)
		curSettings.NewMissileProjectileUncommonChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end )
	nativeSettings.addRangeFloat("/PLR/SpecialRounds", "UNCOMMON EXPLOSIVE ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the uncommon explosive round based off of player tech attribut level.", -150, 150, .5, "%.2f",
		curSettings.NewMissileProjectileUncommonChargedAttackDamageByTechAbility, defaultSettings.NewMissileProjectileUncommonChargedAttackDamageByTechAbility, function(value)
		curSettings.NewMissileProjectileUncommonChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end )


	

--###############################################################################################################################################################################################################################################################################################################################################################################################################



--###################################### EPIC ROUNDS - VANILLA GAME

				-- COPY STUFF FROM "original stuff DO NOT CHANGE" and use that as a base. make sure to change everything that is needed to be changed due to different structure

	--missile stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC EXPLOSIVE ROUND RANGE",
		"Determines the area of effect for the epic explosive round.", 1, 10, .05, "%.2f",
		curSettings.NewMissileProjectileEpicRange, defaultSettings.NewMissileProjectileEpicRange, function(value)
		curSettings.NewMissileProjectileEpicRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC EXPLOSIVE ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the epic explosive round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewMissileProjectileEpicAttackDamageByLevel,
		defaultSettings.NewMissileProjectileEpicAttackDamageByLevel, function(value)
		curSettings.NewMissileProjectileEpicAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC EXPLOSIVE ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the epic explosive round based off of player tech attribut level.",
		-150, 150, .5, "%.2f", curSettings.NewMissileProjectileEpicAttackDamageByTechAbility,
		defaultSettings.NewMissileProjectileEpicAttackDamageByTechAbility, function(value)
		curSettings.NewMissileProjectileEpicAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC EXPLOSIVE CHARGED ROUND RANGE",
		"Determines the area of effect for the epic charged explosive round.", 1, 10, .05, "%.2f",
		curSettings.NewMissileProjectileEpicChargedRange, defaultSettings.NewMissileProjectileEpicChargedRange, function(value)
		curSettings.NewMissileProjectileEpicChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC EXPLOSIVE ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the epic explosive round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewMissileProjectileEpicChargedAttackDamageByLevel,
		defaultSettings.NewMissileProjectileEpicChargedAttackDamageByLevel, function(value)
		curSettings.NewMissileProjectileEpicChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC EXPLOSIVE ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the epic explosive round based off of player tech attribut level.",
		-150, 150, .5, "%.2f", curSettings.NewMissileProjectileEpicChargedAttackDamageByTechAbility,
		defaultSettings.NewMissileProjectileEpicChargedAttackDamageByTechAbility, function(value)
		curSettings.NewMissileProjectileEpicChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)


	--EMP round stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC ELECTRICAL ROUND RANGE",
		"Determines the area of effect for the epic EMP round.", 1, 10, .05, "%.2f",
		curSettings.NewEMPProjectileEpicRange, defaultSettings.NewEMPProjectileEpicRange, function(value)
		curSettings.NewEMPProjectileEpicRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC ELECTRICAL ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the epic EMP round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewEMPProjectileEpicAttackDamageByLevel, defaultSettings.NewEMPProjectileEpicAttackDamageByLevel,
		function(value)
			curSettings.NewEMPProjectileEpicAttackDamageByLevel = value
			config.saveFile("Data/config.json", curSettings)
		end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC ELECTRICAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the epic EMP round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewEMPProjectileEpicAttackDamageByTechAbility,
		defaultSettings.NewEMPProjectileEpicAttackDamageByTechAbility, function(value)
		curSettings.NewEMPProjectileEpicAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC ELECTRICAL CHARGED ROUND RANGE",
		"Determines the area of effect for the epic charged EMP round.", 1, 10, .05, "%.2f",
		curSettings.NewEMPProjectileEpicChargedRange, defaultSettings.NewEMPProjectileEpicChargedRange, function(value)
		curSettings.NewEMPProjectileEpicChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC ELECTRICAL ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the epic EMP round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewEMPProjectileEpicChargedAttackDamageByLevel,
		defaultSettings.NewEMPProjectileEpicChargedAttackDamageByLevel, function(value)
		curSettings.NewEMPProjectileEpicChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC ELECTRICAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the epic EMP round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewEMPProjectileEpicChargedAttackDamageByTechAbility,
		defaultSettings.NewEMPProjectileEpicChargedAttackDamageByTechAbility, function(value)
		curSettings.NewEMPProjectileEpicChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)


	--Thermal round stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC THERMAL ROUND RANGE",
		"Determines the area of effect for the epic thermal round.", 1, 10, .05, "%.2f",
		curSettings.NewThermalProjectileEpicRange, defaultSettings.NewThermalProjectileEpicRange, function(value)
		curSettings.NewThermalProjectileEpicRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC THERMAL ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the epic thermal round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewThermalProjectileEpicAttackDamageByLevel,
		defaultSettings.NewThermalProjectileEpicAttackDamageByLevel, function(value)
		curSettings.NewThermalProjectileEpicAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC THERMAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the epic thermal round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewThermalProjectileEpicAttackDamageByTechAbility,
		defaultSettings.NewThermalProjectileEpicAttackDamageByTechAbility, function(value)
		curSettings.NewThermalProjectileEpicAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC THERMAL CHARGED ROUND RANGE",
		"Determines the area of effect for the epic charged thermal round.", 1, 10, .05, "%.2f",
		curSettings.NewThermalProjectileEpicChargedRange, defaultSettings.NewThermalProjectileEpicChargedRange, function(value)
		curSettings.NewThermalProjectileEpicChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC THERMAL ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the epic thermal round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewThermalProjectileEpicChargedAttackDamageByLevel,
		defaultSettings.NewThermalProjectileEpicChargedAttackDamageByLevel, function(value)
		curSettings.NewThermalProjectileEpicChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC THERMAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the epic thermal round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewThermalProjectileEpicChargedAttackDamageByTechAbility,
		defaultSettings.NewThermalProjectileEpicChargedAttackDamageByTechAbility, function(value)
		curSettings.NewThermalProjectileEpicChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)


	 --Chemical round stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC CHEMICAL ROUND RANGE",
		"Determines the area of effect for the epic chemical round.", 1, 10, .05, "%.2f",
		curSettings.NewChemicalProjectileEpicRange, defaultSettings.NewChemicalProjectileEpicRange, function(value)
		curSettings.NewChemicalProjectileEpicRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC CHEMICAL ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the epic chemical round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewChemicalProjectileEpicAttackDamageByLevel, defaultSettings.NewChemicalProjectileEpicAttackDamageByLevel,
		function(value)
			curSettings.NewChemicalProjectileEpicAttackDamageByLevel = value
			config.saveFile("Data/config.json", curSettings)
		end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds",
		"EPIC CHEMICAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the damage amaount of the epic chemical round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewChemicalProjectileEpicAttackDamageByTechAbility,
		defaultSettings.NewChemicalProjectileEpicAttackDamageByTechAbility, function(value)
		curSettings.NewChemicalProjectileEpicAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC CHEMICAL CHARGED ROUND RANGE",
		"Determines the area of effect for the epic charged chemical round.", 1, 10, .05, "%.2f",
		curSettings.NewChemicalProjectileEpicChargedRange, defaultSettings.NewChemicalProjectileEpicChargedRange, function(value)
		curSettings.NewChemicalProjectileEpicChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds",
		"EPIC CHEMICAL ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the charged damage amaount of the epic chemical round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewChemicalProjectileEpicChargedAttackDamageByLevel,
		defaultSettings.NewChemicalProjectileEpicChargedAttackDamageByLevel, function(value)
		curSettings.NewChemicalProjectileEpicChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/EpicVanillaRounds", "EPIC CHEMICAL ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY",
		"Determines the charged damage amaount of the legendary chemical round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewChemicalProjectileEpicChargedAttackDamageByTechAbility,
		defaultSettings.NewChemicalProjectileEpicChargedAttackDamageByTechAbility, function(value)
		curSettings.NewChemicalProjectileEpicChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)
--################################################################################################################################################################################################################################################################################################################################################################################################################################################################

--###################################### LEGENDARY ROUNDS - VANILLA GAME

				

	--missile stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY EXPLOSIVE ROUND RANGE",
		"Determines the area of effect for the legendary explosive round.", 1, 10, .05, "%.2f",
		curSettings.NewMissileProjectileLegendaryRange, defaultSettings.NewMissileProjectileLegendaryRange, function(value)
		curSettings.NewMissileProjectileLegendaryRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY EXPLOSIVE ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the legendary explosive round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewMissileProjectileLegendaryAttackDamageByLevel,
		defaultSettings.NewMissileProjectileLegendaryAttackDamageByLevel, function(value)
		curSettings.NewMissileProjectileLegendaryAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY EXPLOSIVE ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the legendary explosive round based off of player tech attribut level.",
		-150, 150, .5, "%.2f", curSettings.NewMissileProjectileLegendaryAttackDamageByTechAbility,
		defaultSettings.NewMissileProjectileLegendaryAttackDamageByTechAbility, function(value)
		curSettings.NewMissileProjectileLegendaryAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY EXPLOSIVE CHARGED ROUND RANGE",
		"Determines the area of effect for the legendary charged explosive round.", 1, 10, .05, "%.2f",
		curSettings.NewMissileProjectileLegendaryChargedRange, defaultSettings.NewMissileProjectileLegendaryChargedRange, function(value)
		curSettings.NewMissileProjectileLegendaryChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY EXPLOSIVE ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the legendary explosive round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewMissileProjectileLegendaryChargedAttackDamageByLevel,
		defaultSettings.NewMissileProjectileLegendaryChargedAttackDamageByLevel, function(value)
		curSettings.NewMissileProjectileLegendaryChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY EXPLOSIVE ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the damage amaount of the legendary explosive round based off of player tech attribut level.",
		-150, 150, .5, "%.2f", curSettings.NewMissileProjectileLegendaryChargedAttackDamageByTechAbility,
		defaultSettings.NewMissileProjectileLegendaryChargedAttackDamageByTechAbility, function(value)
		curSettings.NewMissileProjectileLegendaryChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)


	--EMP round stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY ELECTRICAL ROUND RANGE",
		"Determines the area of effect for the legendary EMP round.", 1, 10, .05, "%.2f",
		curSettings.NewEMPProjectileLegendaryRange, defaultSettings.NewEMPProjectileLegendaryRange, function(value)
		curSettings.NewEMPProjectileLegendaryRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY ELECTRICAL ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the legendary EMP round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewEMPProjectileLegendaryAttackDamageByLevel, defaultSettings.NewEMPProjectileLegendaryAttackDamageByLevel,
		function(value)
			curSettings.NewEMPProjectileLegendaryAttackDamageByLevel = value
			config.saveFile("Data/config.json", curSettings)
		end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY ELECTRICAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the physical damage amaount of the legendary EMP round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewEMPProjectileLegendaryAttackDamageByTechAbility,
		defaultSettings.NewEMPProjectileLegendaryAttackDamageByTechAbility, function(value)
		curSettings.NewEMPProjectileLegendaryAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY ELECTRICAL CHARGED ROUND RANGE",
		"Determines the area of effect for the legendary charged EMP round.", 1, 10, .05, "%.2f",
		curSettings.NewEMPProjectileLegendaryChargedRange, defaultSettings.NewEMPProjectileLegendaryChargedRange, function(value)
		curSettings.NewEMPProjectileLegendaryChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY ELECTRICAL ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the legendary EMP round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewEMPProjectileLegendaryChargedAttackDamageByLevel,
		defaultSettings.NewEMPProjectileLegendaryChargedAttackDamageByLevel, function(value)
		curSettings.NewEMPProjectileLegendaryChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY ELECTRICAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the charged damage amaount of the legendary EMP round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewEMPProjectileLegendaryChargedAttackDamageByTechAbility,
		defaultSettings.NewEMPProjectileLegendaryChargedAttackDamageByTechAbility, function(value)
		curSettings.NewEMPProjectileLegendaryChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)


	--Thermal round stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY THERMAL ROUND RANGE",
		"Determines the area of effect for the legendary thermal round.", 1, 10, .05, "%.2f",
		curSettings.NewThermalProjectileLegendaryRange, defaultSettings.NewThermalProjectileLegendaryRange, function(value)
		curSettings.NewThermalProjectileLegendaryRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY THERMAL ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the legendary thermal round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewThermalProjectileLegendaryAttackDamageByLevel,
		defaultSettings.NewThermalProjectileLegendaryAttackDamageByLevel, function(value)
		curSettings.NewThermalProjectileLegendaryAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY THERMAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the damage amaount of the legendary thermal round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewThermalProjectileLegendaryAttackDamageByTechAbility,
		defaultSettings.NewThermalProjectileLegendaryAttackDamageByTechAbility, function(value)
		curSettings.NewThermalProjectileLegendaryAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY THERMAL CHARGED ROUND RANGE",
		"Determines the area of effect for the legendary charged thermal round.", 1, 10, .05, "%.2f",
		curSettings.NewThermalProjectileLegendaryChargedRange, defaultSettings.NewThermalProjectileLegendaryChargedRange, function(value)
		curSettings.NewThermalProjectileLegendaryChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY THERMAL ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the charged damage amaount of the legendary thermal round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewThermalProjectileLegendaryChargedAttackDamageByLevel,
		defaultSettings.NewThermalProjectileLegendaryChargedAttackDamageByLevel, function(value)
		curSettings.NewThermalProjectileLegendaryChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY THERMAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the charged damage amaount of the legendary thermal round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewThermalProjectileLegendaryChargedAttackDamageByTechAbility,
		defaultSettings.NewThermalProjectileLegendaryChargedAttackDamageByTechAbility, function(value)
		curSettings.NewThermalProjectileLegendaryChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)


	--Chemical round stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY CHEMICAL ROUND RANGE",
		"Determines the area of effect for the legendary chemical round.", 1, 10, .05, "%.2f",
		curSettings.NewChemicalProjectileLegendaryRange, defaultSettings.NewChemicalProjectileLegendaryRange, function(value)
		curSettings.NewChemicalProjectileLegendaryRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY CHEMICAL ROUND DAMAGE VALUE - BY LEVEL",
		"Determines the damage amaount of the legendary chemical round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewChemicalProjectileLegendaryAttackDamageByLevel, defaultSettings.NewChemicalProjectileLegendaryAttackDamageByLevel,
		function(value)
			curSettings.NewChemicalProjectileLegendaryAttackDamageByLevel = value
			config.saveFile("Data/config.json", curSettings)
		end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY CHEMICAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the damage amaount of the legendary chemical round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewChemicalProjectileLegendaryAttackDamageByTechAbility,
		defaultSettings.NewChemicalProjectileLegendaryAttackDamageByTechAbility, function(value)
		curSettings.NewChemicalProjectileLegendaryAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)

	--charged stuff
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY CHEMICAL CHARGED ROUND RANGE",
		"Determines the area of effect for the legendary charged chemical round.", 1, 10, .05, "%.2f",
		curSettings.NewChemicalProjectileLegendaryChargedRange, defaultSettings.NewChemicalProjectileLegendaryChargedRange, function(value)
		curSettings.NewChemicalProjectileLegendaryChargedRange = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds",
		"LEGENDARY CHEMICAL ROUND CHARGED DAMAGE VALUE - BY LEVEL",
		"Determines the charged damage amaount of the legendary chemical round based off of player level.", -150, 150, .5, "%.2f",
		curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByLevel,
		defaultSettings.NewChemicalProjectileLegendaryChargedAttackDamageByLevel, function(value)
		curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByLevel = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeFloat("/PLR/LegendaryVanillaRounds", "LEGENDARY CHEMICAL ROUND DAMAGE VALUE - BY TECH ABILITY",
		"Determines the charged damage amaount of the legendary chemical round based off of player tech attribut level.", -150,
		150, .5, "%.2f", curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility,
		defaultSettings.NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility, function(value)
		curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility = value
		config.saveFile("Data/config.json", curSettings)
	end)



---############################################################################################################################# original stuff DO NOT CHANGE ############################################################################################################################################################################################################################################################
	-------original stuff that works is below

	--add all the sliders


---- these are the vanilla rounds change them so that they show up in the proper tab above can keep everything else the same

	 --missile stuff
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EXPLOSIVE ROUND RANGE", "Determines the area of effect for the missile round.", 1, 10, .01, "%.2f", curSettings.NewMissileProjectileAoEAttackRange, defaultSettings.NewMissileProjectileAoEAttackRange, function(value)
		curSettings.NewMissileProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EXPLOSIVE ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the missile round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileInlineValue1, defaultSettings.NewMissileProjectileInlineValue1, function(value)
		curSettings.NewMissileProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EXPLOSIVE ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the missile round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileInlineValue2, defaultSettings.NewMissileProjectileInlineValue2, function(value)
		curSettings.NewMissileProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EXPLOSIVE ROUND CHARGED RANGE", "Determines the area of effect for the missile charged round.", 1, 10, .01, "%.2f", curSettings.NewMissileProjectileChargedAoEAttackRange, defaultSettings.NewMissileProjectileChargedAoEAttackRange, function(value)
		curSettings.NewMissileProjectileChargedAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EXPLOSIVE ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the missile charged round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileChargedInlineValue1, defaultSettings.NewMissileProjectileChargedInlineValue1, function(value)
		curSettings.NewMissileProjectileChargedInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EXPLOSIVE ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the missile charged round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewMissileProjectileChargedInlineValue2, defaultSettings.NewMissileProjectileChargedInlineValue2, function(value)
		curSettings.NewMissileProjectileChargedInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --EMP round stuff
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EMP ROUND RANGE", "Determines the area of effect for the EMP round.", 1, 10, .01, "%.2f", curSettings.NewEMPProjectileAoEAttackRange, defaultSettings.NewEMPProjectileAoEAttackRange, function(value)
		curSettings.NewEMPProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EMP ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the EMP round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewEMPProjectileInlineValue1, defaultSettings.NewEMPProjectileInlineValue1, function(value)
		curSettings.NewEMPProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EMP ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the EMP round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewEMPProjectileInlineValue2, defaultSettings.NewEMPProjectileInlineValue2, function(value)
		curSettings.NewEMPProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EMP ROUND CHARGED RANGE", "Determines the area of effect for the EMP charged round.", 1, 10, .01, "%.2f", curSettings.NewEMPChargedProjectileAoEAttackRange, defaultSettings.NewEMPChargedProjectileAoEAttackRange, function(value)
		curSettings.NewEMPChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EMP ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the EMP charged round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewEMPChargedProjectileInlineValue1, defaultSettings.NewEMPChargedProjectileInlineValue1, function(value)
		curSettings.NewEMPChargedProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE EMP ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the EMP charged round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewEMPChargedProjectileInlineValue2, defaultSettings.NewEMPChargedProjectileInlineValue2, function(value)
		curSettings.NewEMPChargedProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --Thermal round stuff
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE THERMAL ROUND RANGE", "Determines the area of effect for the thermal round.", 1, 10, .01, "%.2f", curSettings.NewThermalProjectileAoEAttackRange, defaultSettings.NewThermalProjectileAoEAttackRange, function(value)
		curSettings.NewThermalProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE THERMAL ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the thermal round based on player level.", -150, 150, .01, "%.2f", curSettings.NewThermalProjectileInlineValue1, defaultSettings.NewThermalProjectileInlineValue1, function(value)
		curSettings.NewThermalProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE THERMAL ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the thermal round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewThermalProjectileInlineValue2, defaultSettings.NewThermalProjectileInlineValue2, function(value)
		curSettings.NewThermalProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE THERMAL ROUND CHARGED RANGE", "Determines the area of effect for the charged thermal round.", 1, 10, .01, "%.2f", curSettings.NewThermalChargedProjectileAoEAttackRange, defaultSettings.NewThermalChargedProjectileAoEAttackRange, function(value)
		curSettings.NewThermalChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE THERMAL ROUND CHARGED DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the charged thermal round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewThermalChargedProjectileInlineValue1, defaultSettings.NewThermalChargedProjectileInlineValue1, function(value)
		curSettings.NewThermalChargedProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE THERMAL ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the charged thermal round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewThermalChargedProjectileInlineValue2, defaultSettings.NewThermalChargedProjectileInlineValue2, function(value)
		curSettings.NewThermalChargedProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --Chemical round stuff
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE CHEMICAL ROUND RANGE", "Determines the area of effect for the chemical round.", 1, 10, .01, "%.2f", curSettings.NewChemicalProjectileAoEAttackRange, defaultSettings.NewChemicalProjectileAoEAttackRange, function(value)
		curSettings.NewChemicalProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE CHEMICAL ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the chemical round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewChemicalProjectileInlineValue1, defaultSettings.NewChemicalProjectileInlineValue1, function(value)
		curSettings.NewChemicalProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE CHEMICAL ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the chemical round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewChemicalProjectileInlineValue2, defaultSettings.NewChemicalProjectileInlineValue2, function(value)
		curSettings.NewChemicalProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE CHEMICAL ROUND RANGE", "Determines the area of effect for the charged chemical round.", 1, 10, .01, "%.2f", curSettings.NewChemicalChargedProjectileAoEAttackRange, defaultSettings.NewChemicalChargedProjectileAoEAttackRange, function(value)
		curSettings.NewChemicalChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE CHEMICAL ROUND CHARGED DAMAGE VALUE - BY PLAYER LEVEL", "Determines the damage amount of the charged chemical round based off of player level.", -150, 150, .01, "%.2f", curSettings.NewChemicalChargedProjectileInlineValue1, defaultSettings.NewChemicalChargedProjectileInlineValue1, function(value)
		curSettings.NewChemicalChargedProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE CHEMICAL ROUND CHARGED DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the charged chemical round based off of player tech attribute level.", -150, 150, .01, "%.2f", curSettings.NewChemicalChargedProjectileInlineValue2, defaultSettings.NewChemicalChargedProjectileInlineValue2, function(value)
		curSettings.NewChemicalChargedProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)


	 --Tranquilizer round stuff
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE TRANQ ROUND RANGE", "Determines the area of effect for the tranq round.", 0, 5, .01, "%.2f", curSettings.NewTranquilizerProjectileAoEAttackRange, defaultSettings.NewTranquilizerProjectileAoEAttackRange, function(value)
		curSettings.NewTranquilizerProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE TRANQ ROUND DAMAGE VALUE - BY LEVEL", "Determines the damage amount of the tranq round based off of player level for the tranq round.", -10, 10, .01, "%.2f", curSettings.NewTranquilizerProjectileInlineValue1, defaultSettings.NewTranquilizerProjectileInlineValue1, function(value)
		curSettings.NewTranquilizerProjectileInlineValue1 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE TRANQ ROUND DAMAGE VALUE - BY TECH ABILITY", "Determines the damage amount of the tranq round based off of player tech attribute level.", -10, 10, .01, "%.2f", curSettings.NewTranquilizerProjectileInlineValue2, defaultSettings.NewTranquilizerProjectileInlineValue2, function(value)
		curSettings.NewTranquilizerProjectileInlineValue2 = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	nativeSettings.addRangeFloat("/PLR/VanillaRounds", "RARE TRANQ ROUND CHARGED RANGE", "Determines the area of effect for the charged tranq round.", 0, 5, .01, "%.2f", curSettings.NewTranquilizerChargedProjectileAoEAttackRange, defaultSettings.NewTranquilizerChargedProjectileAoEAttackRange, function(value)
		curSettings.NewTranquilizerChargedProjectileAoEAttackRange = value
		config.saveFile("Data/config.json", curSettings)
	 end)
	
end

function refreshVariables()

	---All the old stuff that works for sure ###################################################################################

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

	---######################################################################################################################

	--- NEED TO ADD IN NEW STUFF HERE



	NewKineticProjectileCommonRange = curSettings.NewKineticProjectileCommonRange
  	NewKineticProjectileCommonAttackDamageByLevel = curSettings.NewKineticProjectileCommonAttackDamageByLevel
  	NewKineticProjectileCommonAttackDamageByTechAbility = curSettings.NewKineticProjectileCommonAttackDamageByTechAbility
  	NewKineticProjectileCommonChargedRange = curSettings.NewKineticProjectileCommonChargedRange
  	NewKineticProjectileCommonChargedAttackDamageByLevel = curSettings.NewKineticProjectileCommonChargedAttackDamageByLevel
  	NewKineticProjectileCommonChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileCommonChargedAttackDamageByTechAbility
  	
	NewKineticProjectileUncommonRange = curSettings.NewKineticProjectileUncommonRange
  	NewKineticProjectileUncommonAttackDamageByLevel = curSettings.NewKineticProjectileUncommonAttackDamageByLevel
  	NewKineticProjectileUncommonAttackDamageByTechAbility = curSettings.NewKineticProjectileUncommonAttackDamageByTechAbility
  	NewKineticProjectileUncommonChargedRange = curSettings.NewKineticProjectileUncommonChargedRange
  	NewKineticProjectileUncommonChargedAttackDamageByLevel = curSettings.NewKineticProjectileUncommonChargedAttackDamageByLevel
  	NewKineticProjectileUncommonChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileUncommonChargedAttackDamageByTechAbility
 
	NewKineticProjectileRareRange = curSettings.NewKineticProjectileRareRange
 	NewKineticProjectileRareAttackDamageByLevel = curSettings.NewKineticProjectileRareAttackDamageByLevel
 	NewKineticProjectileRareAttackDamageByTechAbility = curSettings.NewKineticProjectileRareAttackDamageByTechAbility
  	NewKineticProjectileRareChargedRange = curSettings.NewKineticProjectileRareChargedRange
  	NewKineticProjectileRareChargedAttackDamageByLevel = curSettings.NewKineticProjectileRareChargedAttackDamageByLevel
  	NewKineticProjectileRareChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileRareChargedAttackDamageByTechAbility
  
	NewKineticProjectileEpicRange = curSettings.NewKineticProjectileEpicRange
  	NewKineticProjectileEpicAttackDamageByLevel = curSettings.NewKineticProjectileEpicAttackDamageByLevel
  	NewKineticProjectileEpicAttackDamageByTechAbility = curSettings.NewKineticProjectileEpicAttackDamageByTechAbility
  	NewKineticProjectileEpicChargedRange = curSettings.NewKineticProjectileEpicChargedRange
  	NewKineticProjectileEpicChargedAttackDamageByLevel = curSettings.NewKineticProjectileEpicChargedAttackDamageByLevel
  	NewKineticProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileEpicChargedAttackDamageByTechAbility

  	NewKineticProjectileLegendaryRange = curSettings.NewKineticProjectileLegendaryRange
  	NewKineticProjectileLegendaryAttackDamageByLevel = curSettings.NewKineticProjectileLegendaryAttackDamageByLevel
  	NewKineticProjectileLegendaryAttackDamageByTechAbility = curSettings.NewKineticProjectileLegendaryAttackDamageByTechAbility
  	NewKineticProjectileLegendaryChargedRange = curSettings.NewKineticProjectileLegendaryChargedRange
  	NewKineticProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewKineticProjectileLegendaryChargedAttackDamageByLevel
  	NewKineticProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewKineticProjectileLegendaryChargedAttackDamageByTechAbility

  	NewZetatechBounceRoundRareRange = curSettings.NewZetatechBounceRoundRareRange
  	NewZetatechBounceRoundRareAttackDamageByLevel = curSettings.NewZetatechBounceRoundRareAttackDamageByLevel
  	NewZetatechBounceRoundRareAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundRareAttackDamageByTechAbility
  	NewZetatechBounceRoundRareChargedRange = curSettings.NewZetatechBounceRoundRareChargedRange
  	NewZetatechBounceRoundRareChargedAttackDamageByLevel = curSettings.NewZetatechBounceRoundRareChargedAttackDamageByLevel
  	NewZetatechBounceRoundRareChargedAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundRareChargedAttackDamageByTechAbility

  	NewZetatechBounceRoundEpicRange = curSettings.NewZetatechBounceRoundEpicRange
  	NewZetatechBounceRoundEpicAttackDamageByLevel = curSettings.NewZetatechBounceRoundEpicAttackDamageByLevel
  	NewZetatechBounceRoundEpicAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundEpicAttackDamageByTechAbility
  	NewZetatechBounceRoundEpicChargedRange = curSettings.NewZetatechBounceRoundEpicChargedRange
  	NewZetatechBounceRoundEpicChargedAttackDamageByLevel = curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByLevel
  	NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility
  	
	NewZetatechBounceRoundLegendaryRange = curSettings.NewZetatechBounceRoundLegendaryRange
  	NewZetatechBounceRoundLegendaryAttackDamageByLevel = curSettings.NewZetatechBounceRoundLegendaryAttackDamageByLevel
  	NewZetatechBounceRoundLegendaryAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundLegendaryAttackDamageByTechAbility
  	NewZetatechBounceRoundLegendaryChargedRange = curSettings.NewZetatechBounceRoundLegendaryChargedRange
  	NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel = curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel
  	NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility = curSettings.NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility
	
	NewMissileProjectileUncommonRange = curSettings.NewMissileProjectileUncommonRange
  	NewMissileProjectileUncommonAttackDamageByLevel = curSettings.NewMissileProjectileUncommonAttackDamageByLevel
  	NewMissileProjectileUncommonAttackDamageByTechAbility = curSettings.NewMissileProjectileUncommonAttackDamageByTechAbility
  	NewMissileProjectileUncommonChargedRange = curSettings.NewMissileProjectileUncommonChargedRange
  	NewMissileProjectileUncommonChargedAttackDamageByLevel = curSettings.NewMissileProjectileUncommonChargedAttackDamageByLevel
  	NewMissileProjectileUncommonChargedAttackDamageByTechAbility = curSettings.NewMissileProjectileUncommonChargedAttackDamageByTechAbility

  	NewMissileProjectileEpicRange = curSettings.NewMissileProjectileEpicRange
  	NewMissileProjectileEpicAttackDamageByLevel = curSettings.NewMissileProjectileEpicAttackDamageByLevel
  	NewMissileProjectileEpicAttackDamageByTechAbility = curSettings.NewMissileProjectileEpicAttackDamageByTechAbility
  	NewMissileProjectileEpicChargedRange = curSettings.NewMissileProjectileEpicChargedRange
  	NewMissileProjectileEpicChargedAttackDamageByLevel = curSettings.NewMissileProjectileEpicChargedAttackDamageByLevel
  	NewMissileProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewMissileProjectileEpicChargedAttackDamageByTechAbility
  	
	NewMissileProjectileLegendaryRange = curSettings.NewMissileProjectileLegendaryRange
  	NewMissileProjectileLegendaryAttackDamageByLevel = curSettings.NewMissileProjectileLegendaryAttackDamageByLevel
  	NewMissileProjectileLegendaryAttackDamageByTechAbility = curSettings.NewMissileProjectileLegendaryAttackDamageByTechAbility
  	NewMissileProjectileLegendaryChargedRange = curSettings.NewMissileProjectileLegendaryChargedRange
  	NewMissileProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewMissileProjectileLegendaryChargedAttackDamageByLevel
  	NewMissileProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewMissileProjectileLegendaryChargedAttackDamageByTechAbility

  	NewThermalProjectileEpicRange = curSettings.NewThermalProjectileEpicRange
  	NewThermalProjectileEpicAttackDamageByLevel = curSettings.NewThermalProjectileEpicAttackDamageByLevel
  	NewThermalProjectileEpicAttackDamageByTechAbility = curSettings.NewThermalProjectileEpicAttackDamageByTechAbility
  	NewThermalProjectileEpicChargedRange = curSettings.NewThermalProjectileEpicChargedRange
  	NewThermalProjectileEpicChargedAttackDamageByLevel = curSettings.NewThermalProjectileEpicChargedAttackDamageByLevel
  	NewThermalProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewThermalProjectileEpicChargedAttackDamageByTechAbility
  	
	NewThermalProjectileLegendaryRange = curSettings.NewThermalProjectileLegendaryRange
  	NewThermalProjectileLegendaryAttackDamageByLevel = curSettings.NewThermalProjectileLegendaryAttackDamageByLevel
  	NewThermalProjectileLegendaryAttackDamageByTechAbility = curSettings.NewThermalProjectileLegendaryAttackDamageByTechAbility
  	NewThermalProjectileLegendaryChargedRange = curSettings.NewThermalProjectileLegendaryChargedRange
  	NewThermalProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewThermalProjectileLegendaryChargedAttackDamageByLevel
  	NewThermalProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewThermalProjectileLegendaryChargedAttackDamageByTechAbility

  	NewEMPProjectileEpicRange = curSettings.NewEMPProjectileEpicRange
  	NewEMPProjectileEpicAttackDamageByLevel = curSettings.NewEMPProjectileEpicAttackDamageByLevel
  	NewEMPProjectileEpicAttackDamageByTechAbility = curSettings.NewEMPProjectileEpicAttackDamageByTechAbility
  	NewEMPProjectileEpicChargedRange = curSettings.NewEMPProjectileEpicChargedRange
  	NewEMPProjectileEpicChargedAttackDamageByLevel = curSettings.NewEMPProjectileEpicChargedAttackDamageByLevel
  	NewEMPProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewEMPProjectileEpicChargedAttackDamageByTechAbility

  	NewEMPProjectileLegendaryRange = curSettings.NewEMPProjectileLegendaryRange
  	NewEMPProjectileLegendaryAttackDamageByLevel = curSettings.NewEMPProjectileLegendaryAttackDamageByLevel
  	NewEMPProjectileLegendaryAttackDamageByTechAbility = curSettings.NewEMPProjectileLegendaryAttackDamageByTechAbility
  	NewEMPProjectileLegendaryChargedRange = curSettings.NewEMPProjectileLegendaryChargedRange
  	NewEMPProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewEMPProjectileLegendaryChargedAttackDamageByLevel
  	NewEMPProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewEMPProjectileLegendaryChargedAttackDamageByTechAbility
  	
	NewChemicalProjectileEpicRange = curSettings.NewChemicalProjectileEpicRange
  	NewChemicalProjectileEpicAttackDamageByLevel = curSettings.NewChemicalProjectileEpicAttackDamageByLevel
  	NewChemicalProjectileEpicAttackDamageByTechAbility = curSettings.NewChemicalProjectileEpicAttackDamageByTechAbility
  	NewChemicalProjectileEpicChargedRange = curSettings.NewChemicalProjectileEpicChargedRange
  	NewChemicalProjectileEpicChargedAttackDamageByLevel = curSettings.NewChemicalProjectileEpicChargedAttackDamageByLevel
  	NewChemicalProjectileEpicChargedAttackDamageByTechAbility = curSettings.NewChemicalProjectileEpicChargedAttackDamageByTechAbility
  	
	NewChemicalProjectileLegendaryRange = curSettings.NewChemicalProjectileLegendaryRange
  	NewChemicalProjectileLegendaryAttackDamageByLevel = curSettings.NewChemicalProjectileLegendaryAttackDamageByLevel
  	NewChemicalProjectileLegendaryAttackDamageByTechAbility = curSettings.NewChemicalProjectileLegendaryAttackDamageByTechAbility
  	NewChemicalProjectileLegendaryChargedRange =  curSettings.NewChemicalProjectileLegendaryChargedRange
  	NewChemicalProjectileLegendaryChargedAttackDamageByLevel = curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByLevel
  	NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility = curSettings.NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility
  
	NewRainbowRoundRange = curSettings.NewRainbowRoundRange
  	NewRainbowRoundAttackDamageByLevelPhysical = curSettings.NewRainbowRoundAttackDamageByLevelPhysical
  	NewRainbowRoundAttackDamageByLevelElectrical = curSettings.NewRainbowRoundAttackDamageByLevelElectrical
  	NewRainbowRoundAttackDamageByLevelChemical = curSettings.NewRainbowRoundAttackDamageByLevelChemical
  	NewRainbowRoundAttackDamageByLevelThermal = curSettings.NewRainbowRoundAttackDamageByLevelThermal
  	NewRainbowRoundAttackDamageByTechAbilityPhysical = curSettings.NewRainbowRoundAttackDamageByTechAbilityPhysical
  	NewRainbowRoundAttackDamageByTechAbilityElectrical = curSettings.NewRainbowRoundAttackDamageByTechAbilityElectrical
  	NewRainbowRoundAttackDamageByTechAbilityChemical = curSettings.NewRainbowRoundAttackDamageByTechAbilityChemical
  	NewRainbowRoundAttackDamageByTechAbilityThermal = curSettings.NewRainbowRoundAttackDamageByTechAbilityThermal

end
function reloadPLRMods()
	refreshVariables()
	dofile("modules/Set Values.lua")
end

return PLR:new()
