--------------------------------------------------------------------------
-- Projectile Launcer Rework
-- Set Values.lua
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
PLR = {
    description = "PLR"
}

local config = require("modules/utils/config")
local settings = config.loadFile("Data/config.json")

function PLR:new()

	--Normal Attack setting, damage that is related to player level, all variants of launcher
	TweakDB:SetFlat("Attacks.MissileProjectile_inline1.value", settings.NewMissileProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.EMPProjectile_inline1.value", settings.NewEMPProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ThermalProjectile_inline1.value", settings.NewThermalProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ChemicalProjectile_inline1.value", settings.NewChemicalProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.TranquilizerProjectile_inline0.value", settings.NewTranquilizerProjectileInlineValue1)

	--Charged Attack setting, damage that is related to player level, all variants of launcher
	TweakDB:SetFlat("Attacks.MissileProjectileCharged_inline1.value", settings.NewMissileProjectileChargedInlineValue1)
	TweakDB:SetFlat("Attacks.EMPProjectileCharged_inline1.value", settings.NewEMPChargedProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ThermalProjectileCharged_inline1.value", settings.NewThermalChargedProjectileInlineValue1)
	TweakDB:SetFlat("Attacks.ChemicalProjectileCharged_inline1.value", settings.NewChemicalChargedProjectileInlineValue1)

	--Normal Attack setting, damage that is related to player tech attribute level, all variants of launcher
	TweakDB:SetFlat("Attacks.MissileProjectile_inline2.value", settings.NewMissileProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.EMPProjectile_inline2.value", settings.NewEMPProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ThermalProjectile_inline2.value", settings.NewThermalProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ChemicalProjectile_inline2.value", settings.NewChemicalProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.TranquilizerProjectile_inline1.value", settings.NewTranquilizerProjectileInlineValue2)
	
	--Charged Attack setting, damage that is related to player tech attribute level, all variants of launcher
	TweakDB:SetFlat("Attacks.MissileProjectileCharged_inline2.value", settings.NewMissileProjectileChargedInlineValue2)
	TweakDB:SetFlat("Attacks.EMPProjectileCharged_inline2.value", settings.NewEMPChargedProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ThermalProjectileCharged_inline2.value", settings.NewThermalChargedProjectileInlineValue2)
	TweakDB:SetFlat("Attacks.ChemicalProjectileCharged_inline2.value", settings.NewChemicalChargedProjectileInlineValue2)

	--Normal Attack Range
	TweakDB:SetFlat("Attacks.MissileProjectile.range", settings.NewMissileProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.BaseProjectileAoEAttack.range", settings.NewBaseProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.EMPProjectile.range", settings.NewEMPProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ThermalProjectile.range", settings.NewThermalProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectile.range", settings.NewChemicalProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.TranquilizerProjectile.range", settings.NewTranquilizerProjectileAoEAttackRange)

	
	--Charged Attack Range
	TweakDB:SetFlat("Attacks.MissileProjectileCharged.range", settings.NewMissileProjectileChargedAoEAttackRange)
	TweakDB:SetFlat("Attacks.EMPProjectileCharged.range", settings.NewEMPChargedProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ThermalProjectileCharged.range", settings.NewThermalChargedProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.ChemicalProjectileCharged.range", settings.NewChemicalChargedProjectileAoEAttackRange)
	TweakDB:SetFlat("Attacks.TranquilizerProjectileCharged.range", settings.NewTranquilizerChargedProjectileAoEAttackRange)

end


return PLR:new()
