--------------------------------------------------------------------------
-- Projectile Launcer Rework
-- Set Values.lua
-- Created by: Riviera S. (Arealguywithajob)
-- Created for: Cyberpunk 2077
-- Last Edited: 6/13/2023 @ 09:03 PM
--
-- Special thanks given to: psiberx, wssdude, #1 tweakXL lover, mikeyray, keanuwheeze
-- and everyone else on the cyberpunk2077 modding community discord 
--
-- Special Special thanks to dillingspam for making the Launcher Rebalance mod which inspired me to make my original cyberware AoE rework
-- which is now turning into this. 
--------------------------------------------------------------------------
PLR = {
    description = "PLR"
}

local config = require("modules/utils/config")
local settings = config.loadFile("Data/config.json")

function PLR:new()



	--[[
	###### PLAYER LEVEL BASED DAMAGE VALUES ###############################################################################################################################################
	]]

	--Normal Attack setting, damage that is related to player level, all RARE variants of launcher
	TweakDB:SetFlat("Attacks.MissileProjectile_inline1.value", settings.NewMissileProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.EMPProjectile_inline1.value", settings.NewEMPProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ThermalProjectile_inline1.value", settings.NewThermalProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ChemicalProjectile_inline1.value", settings.NewChemicalProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.TranquilizerProjectile_inline0.value", settings.NewTranquilizerProjectileInlineValue1)
	
	--biotechnica
	TweakDB:SetFlat("Attacks.KineticProjectileCommon_inline1.value", settings.NewKineticProjectileCommonAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileUncommon_inline1.value", settings.NewKineticProjectileUncommonAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileRare_inline1.value", settings.NewKineticProjectileRareAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileEpic_inline1.value", settings.NewKineticProjectileEpicAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileLegendary_inline1.value", settings.NewKineticProjectileLegendaryAttackDamageByLevel)
	
	--zetatech
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundRare_inline1.value", settings.NewZetatechBounceRoundRareAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundEpic_inline1.value", settings.NewZetatechBounceRoundEpicAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundLegendary_inline1.value", settings.NewZetatechBounceRoundLegendaryAttackDamageByLevel)


	--'iconic' rounds (stil need to make them iconic)
	-- Rainbow round Millitech 
	TweakDB:SetFlat("Attacks.RainbowRound_inline4.value", settings.NewRainbowRoundAttackDamageByLevelPhysical)
	TweakDB:SetFlat("Attacks.RainbowRound_inline6.value", settings.NewRainbowRoundAttackDamageByLevelElectrical)
	TweakDB:SetFlat("Attacks.RainbowRound_inline8.value", settings.NewRainbowRoundAttackDamageByLevelChemical)
	TweakDB:SetFlat("Attacks.RainbowRound_inline10.value", settings.NewRainbowRoundAttackDamageByLevelThermal)


	-- Epic Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileEpic_inline1.value", settings.NewMissileProjectileEpicAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.EMPProjectileEpic_inline1.value", settings.NewEMPProjectileEpicAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ThermalProjectileEpic_inline1.value", settings.NewThermalProjectileEpicAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ChemicalProjectileEpic_inline1.value", settings.NewChemicalProjectileEpicAttackDamageByLevel)

	-- Legendary Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileLegendary_inline1.value", settings.NewMissileProjectileLegendaryAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.EMPProjectileLegendary_inline1.value", settings.NewEMPProjectileLegendaryAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ThermalProjectileLegendary_inline1.value", settings.NewThermalProjectileLegendaryAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ChemicalProjectileLegendary_inline1.value", settings.NewChemicalProjectileLegendaryAttackDamageByLevel)

	-- Uncommon explosive round:
	TweakDB:SetFlat("Attacks.MissileProjectileUncommon_inline1.value", settings.NewMissileProjectileUncommonAttackDamageByLevel)


-----------------------------------------------------------------------------------------------------------------------------------------------


	--Charged Attack setting, damage that is related to player level, all variants of launcher
	TweakDB:SetFlat("Attacks.MissileProjectileCharged_inline1.value", settings.NewMissileProjectileChargedInlineValue1)
	TweakDB:SetFlat("Attacks.EMPProjectileCharged_inline1.value", settings.NewEMPChargedProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ThermalProjectileCharged_inline1.value", settings.NewThermalChargedProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ChemicalProjectileCharged_inline1.value", settings.NewChemicalChargedProjectileInlineValue1)



	--biotechnica
	TweakDB:SetFlat("Attacks.KineticProjectileCommonCharged_inline1.value", settings.NewKineticProjectileCommonChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileUncommonCharged_inline1.value", settings.NewKineticProjectileUncommonChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileRareCharged_inline1.value", settings.NewKineticProjectileRareChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileEpicCharged_inline1.value", settings.NewKineticProjectileEpicChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.KineticProjectileLegendaryCharged_inline1.value", settings.NewKineticProjectileLegendaryChargedAttackDamageByLevel)
	
	--zetatech
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundRareCharged_inline1.value", settings.NewZetatechBounceRoundRareChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundEpicCharged_inline1.value", settings.NewZetatechBounceRoundEpicChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundLegendaryCharged_inline1.value", settings.NewZetatechBounceRoundLegendaryChargedAttackDamageByLevel)


	-- Epic Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileEpicCharged_inline1.value", settings.NewMissileProjectileEpicChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.EMPProjectileEpicCharged_inline1.value", settings.NewEMPProjectileEpicChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ThermalProjectileEpicCharged_inline1.value", settings.NewThermalProjectileEpicChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ChemicalProjectileEpicCharged_inline1.value", settings.NewChemicalProjectileEpicChargedAttackDamageByLevel)

	-- Legendary Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileLegendaryCharged_inline1.value", settings.NewMissileProjectileLegendaryChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.EMPProjectileLegendaryCharged_inline1.value", settings.NewEMPProjectileLegendaryChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ThermalProjectileLegendaryCharged_inline1.value", settings.NewThermalProjectileLegendaryChargedAttackDamageByLevel)
	TweakDB:SetFlat("Attacks.ChemicalProjectileLegendaryCharged_inline1.value", settings.NewChemicalProjectileLegendaryChargedAttackDamageByLevel)


	-- Uncommon explosive round:
	TweakDB:SetFlat("Attacks.MissileProjectileUncommonCharged_inline1.value", settings.NewMissileProjectileUncommonChargedAttackDamageByLevel)




--[[
###### TECH ABILITY / LEVEL BASED DAMAGE VALUES #########################################################################################################################################
]]

	--############################################# NORMAL SETTINGS ###################################################################

	--Normal Attack setting, damage that is related to player tech attribute level, all RARE variants of launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectile_inline2.value", settings.NewMissileProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.EMPProjectile_inline2.value", settings.NewEMPProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ThermalProjectile_inline2.value", settings.NewThermalProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ChemicalProjectile_inline2.value", settings.NewChemicalProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.TranquilizerProjectile_inline1.value", settings.NewTranquilizerProjectileInlineValue2)
	

	--Rainbow Round tech settings damage stuff
	---Rainbow round
	TweakDB:SetFlat("Attacks.RainbowRound_inline5.value", settings.NewRainbowRoundAttackDamageByTechAbilityPhysical)
	TweakDB:SetFlat("Attacks.RainbowRound_inline7.value", settings.NewRainbowRoundAttackDamageByTechAbilityElectrical)
	TweakDB:SetFlat("Attacks.RainbowRound_inline9.value", settings.NewRainbowRoundAttackDamageByTechAbilityChemical)
	TweakDB:SetFlat("Attacks.RainbowRound_inline11.value", settings.NewRainbowRoundAttackDamageByTechAbilityThermal)


	--biotechnica
	TweakDB:SetFlat("Attacks.KineticProjectileCommonCharged_inline2.value", settings.NewKineticProjectileCommonAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileUncommonCharged_inline2.value", settings.NewKineticProjectileUncommonAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileRareCharged_inline2.value", settings.NewKineticProjectileRareAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileEpicCharged_inline2.value", settings.NewKineticProjectileEpicAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileLegendaryCharged_inline2.value", settings.NewKineticProjectileLegendaryAttackDamageByTechAbility)
	

	--zetatech
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundRare_inline2.value", settings.NewZetatechBounceRoundRareAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundEpic_inline2.value", settings.NewZetatechBounceRoundEpicAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundLegendary_inline2.value", settings.NewZetatechBounceRoundLegendaryAttackDamageByTechAbility)
	
	
	-- Epic Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileEpicCharged_inline2.value", settings.NewMissileProjectileEpicAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.EMPProjectileEpicCharged_inline2.value", settings.NewEMPProjectileEpicAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ThermalProjectileEpicCharged_inline2.value", settings.NewThermalProjectileEpicAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ChemicalProjectileEpicCharged_inline2.value", settings.NewChemicalProjectileEpicAttackDamageByTechAbility)
	

	-- Legendary Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileLegendary_inline2.value", settings.NewMissileProjectileLegendaryAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.EMPProjectileLegendary_inline2.value", settings.NewEMPProjectileLegendaryAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ThermalProjectileLegendary_inline2.value", settings.NewThermalProjectileLegendaryAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ChemicalProjectileLegendary_inline2.value", settings.NewChemicalProjectileLegendaryAttackDamageByTechAbility)


	-- Uncommon explosive round:
	TweakDB:SetFlat("Attacks.MissileProjectileUncommon_inline2.value", settings.NewMissileProjectileUncommonAttackDamageByTechAbility)



	--#################################################### CHARGED SETTINGS ##############################################################


	--Charged Attack setting, damage that is related to player tech attribute level, all variants of launcher
	TweakDB:SetFlat("Attacks.MissileProjectileCharged_inline2.value", settings.NewMissileProjectileChargedInlineValue2)
	TweakDB:SetFlat("Attacks.EMPProjectileCharged_inline2.value", settings.NewEMPChargedProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ThermalProjectileCharged_inline2.value", settings.NewThermalChargedProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ChemicalProjectileCharged_inline2.value", settings.NewChemicalChargedProjectileInlineValue2)


	--biotechnica
	TweakDB:SetFlat("Attacks.KineticProjectileCommonCharged_inline2.value", settings.NewKineticProjectileCommonChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileUncommonCharged_inline2.value", settings.NewKineticProjectileUncommonChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileRareCharged_inline2.value", settings.NewKineticProjectileRareChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileEpicCharged_inline2.value", settings.NewKineticProjectileEpicChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.KineticProjectileLegendaryCharged_inline2.value", settings.NewKineticProjectileLegendaryChargedAttackDamageByTechAbility)
	
	--zetatech
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundRareCharged_inline2.value", settings.NewZetatechBounceRoundRareChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundEpicCharged_inline2.value", settings.NewZetatechBounceRoundEpicChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ZetatechBounceRoundLegendaryCharged_inline2.value", settings.NewZetatechBounceRoundLegendaryChargedAttackDamageByTechAbility)


	-- Epic Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileEpicCharged_inline2.value", settings.NewMissileProjectileEpicChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.EMPProjectileEpicCharged_inline2.value", settings.NewEMPProjectileEpicChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ThermalProjectileEpicCharged_inline2.value", settings.NewThermalProjectileEpicChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ChemicalProjectileEpicCharged_inline2.value", settings.NewChemicalProjectileEpicChargedAttackDamageByTechAbility)

	-- Legendary Variants of the launcher rounds
	TweakDB:SetFlat("Attacks.MissileProjectileLegendaryCharged_inline2.value", settings.NewMissileProjectileLegendaryChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.EMPProjectileLegendaryCharged_inline2.value", settings.NewEMPProjectileLegendaryChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ThermalProjectileLegendaryCharged_inline2.value", settings.NewThermalProjectileLegendaryChargedAttackDamageByTechAbility)
	TweakDB:SetFlat("Attacks.ChemicalProjectileLegendaryCharged_inline2.value", settings.NewChemicalProjectileLegendaryChargedAttackDamageByTechAbility)


	-- Uncommon explosive round:
	TweakDB:SetFlat("Attacks.MissileProjectileUncommonCharged_inline2.value", settings.NewMissileProjectileUncommonChargedAttackDamageByTechAbility)



	--[[
		###################################################################################################################### RANGE STUFF
	]]
--           ################################################### NORMAL ATTACK RANGE
	--Normal Attack Range RARE VARIANTS OF LAUNCHER
	TweakDB:SetFlat("Attacks.MissileProjectile.range", settings.NewMissileProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.EMPProjectile.range", settings.NewEMPProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ThermalProjectile.range", settings.NewThermalProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectile.range", settings.NewChemicalProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.TranquilizerProjectile.range", settings.NewTranquilizerProjectileAoEAttackRange)


	--BIOTECHNICA NORMAL ATTACK RANGE STUFF
	TweakDB:SetFlat("Attacks.KineticProjectileCommon.range", settings.NewKineticProjectileCommonRange)
	TweakDB:SetFlat("Attacks.KineticProjectileUncommon.range", settings.NewKineticProjectileUncommonRange)
	TweakDB:SetFlat("Attacks.KineticProjectileRare.range", settings.NewKineticProjectileRareRange)
	TweakDB:SetFlat("Attacks.KineticProjectileEpic.range", settings.NewKineticProjectileEpicRange)
	TweakDB:SetFlat("Attacks.KineticProjectileLegendary.range", settings.NewKineticProjectileLegendaryRange)


	--ZETATECH NORMAL ATTACK RANGE STUFF
	TweakDB:SetFlat("Attacks.ZeatechBounceRoundRare.range", settings.NewZetatechBounceRoundRareRange)
	TweakDB:SetFlat("Attacks.ZeatechBounceRoundEpic.range", settings.NewZetatechBounceRoundEpicRange)
	TweakDB:SetFlat("Attacks.ZeatechBounceRoundLegendary.range", settings.NewZetatechBounceRoundLegendaryRange)


	--EPIC LAUNCHER ROUNDS NORMAL ATTACK RANGE
	TweakDB:SetFlat("Attacks.MissileProjectileEpic.range", settings.NewMissileProjectileEpicRange)
	TweakDB:SetFlat("Attacks.EMPProjectileEpic.range", settings.NewEMPProjectileEpicRange)
	TweakDB:SetFlat("Attacks.ThermalProjectileEpic.range", settings.NewThermalProjectileEpicRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectileEpic.range", settings.NewChemicalProjectileEpicRange)


	--LEGENDARY LAUNCHER ROUNDS NORMAL ATTACK RANGE
	TweakDB:SetFlat("Attacks.MissileProjectileLegendary.range", settings.NewMissileProjectileLegendaryRange)
	TweakDB:SetFlat("Attacks.EMPProjectileLegendary.range", settings.NewEMPProjectileLegendaryRange)
	TweakDB:SetFlat("Attacks.ThermalProjectileLegenary.range", settings.NewThermalProjectileLegendaryRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectileLegendary.range", settings.NewChemicalProjectileLegendaryRange)


	--RAINBOW ROUND NORMAL ATTACK RANGE
	TweakDB:SetFlat("Attacks.RainbowRound.range", settings.NewRainbowRoundRange)


	-- UNCOMMON EXPLOSIVE ROUND
	TweakDB:SetFlat("Attacks.MissileProjectileUncommon.range", settings.NewMissileProjectileUncommonRange)


--################################################################# CHARGED ATTACK RANGE

		
	--Charged Attack Range RARE VARIANTS OF LAUNCHER CHARGED ROUNDS
	TweakDB:SetFlat("Attacks.MissileProjectileCharged.range", settings.NewMissileProjectileChargedAoEAttackRange)
	TweakDB:SetFlat("Attacks.EMPProjectileCharged.range", settings.NewEMPChargedProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ThermalProjectileCharged.range", settings.NewThermalChargedProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectileCharged.range", settings.NewChemicalChargedProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.TranquilizerProjectileCharged.range", settings.NewTranquilizerChargedProjectileAoEAttackRange)

	--BIOTECHNICA charged ATTACK RANGE STUFF
	TweakDB:SetFlat("Attacks.KineticProjectileCommonCharged.range", settings.NewKineticProjectileCommonChargedRange)
	TweakDB:SetFlat("Attacks.KineticProjectileUncommonCharged.range", settings.NewKineticProjectileUncommonChargedRange)
	TweakDB:SetFlat("Attacks.KineticProjectileRareCharged.range", settings.NewKineticProjectileRareChargedRange)
	TweakDB:SetFlat("Attacks.KineticProjectileEpicCharged.range", settings.NewKineticProjectileEpicChargedRange)
	TweakDB:SetFlat("Attacks.KineticProjectileLegendaryCharged.range", settings.NewKineticProjectileLegendaryChargedRange)


	--ZETATECH charged ATTACK RANGE STUFF
	TweakDB:SetFlat("Attacks.ZeatechBounceRoundRareCharged.range", settings.NewZetatechBounceRoundRareChargedRange)
	TweakDB:SetFlat("Attacks.ZeatechBounceRoundEpicCharged.range", settings.NewZetatechBounceRoundEpicChargedRange)
	TweakDB:SetFlat("Attacks.ZeatechBounceRoundLegendaryCharged.range", settings.NewZetatechBounceRoundLegendaryChargedRange)


	--EPIC LAUNCHER ROUNDS charged ATTACK RANGE
	TweakDB:SetFlat("Attacks.MissileProjectileEpicCharged.range", settings.NewMissileProjectileEpicChargedRange)
	TweakDB:SetFlat("Attacks.EMPProjectileEpicCharged.range", settings.NewEMPProjectileEpicChargedRange)
	TweakDB:SetFlat("Attacks.ThermalProjectileEpicCharged.range", settings.NewThermalProjectileEpicChargedRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectileEpicCharged.range", settings.NewChemicalProjectileEpicChargedRange)


	--LEGENDARY LAUNCHER ROUNDS charged ATTACK RANGE
	TweakDB:SetFlat("Attacks.MissileProjectileLegendaryCharged.range", settings.NewMissileProjectileLegendaryChargedRange)
	TweakDB:SetFlat("Attacks.EMPProjectileLegendaryCharged.range", settings.NewEMPProjectileLegendaryChargedRange)
	TweakDB:SetFlat("Attacks.ThermalProjectileLegenaryCharged.range", settings.NewThermalProjectileLegendaryChargedRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectileLegendaryCharged.range", settings.NewChemicalProjectileLegendaryChargedRange)


	-- UNCOMMON CHARGED EXPLOSIVE ROUND
	TweakDB:SetFlat("Attacks.MissileProjectileUncommonCharged.range", settings.NewMissileProjectileUncommonChargedRange)


end


return PLR:new()
