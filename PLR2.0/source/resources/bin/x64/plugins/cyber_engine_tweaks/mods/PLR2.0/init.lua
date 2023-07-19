--------------------------------------------------------------------------
-- Projectile Launcher Rework
-- init.lua
-- Created by: Riviera S. (Arealguywithajob)
-- Created for: Cyberpunk 2077
-- Last Edited: 06/13/2023 9:02 PM
--
-- Special thanks given to: psiberx, wssdude, #1 tweakXL lover, mikeyray, keanuwheeze
-- and everyone else on the cyberpunk2077 modding community discord
--
-- more thanks given to manavortex, neon engine vangelis RMK and many others in that same discord as well.
--
-- Special Special thanks to dillingspam for making the Launcher Rebalance mod which inspired me to make my original cyberware AoE rework
-- which is now turning into this. 
--------------------------------------------------------------------------
PLR = { 
    description = "PLR"
}


function PLR:new()



	



	registerForEvent("onInit", function() 
	require("modules/Native Settings Integration.lua")
	dofile("modules/Native Settings Integration.lua")
	dofile("modules/Set Values.lua")

--[[
    This code below was kindly provided by psiberx. I would like to thank them for all their help and teaching
    that they have been provided to me. I honestly have no idea how it really works but I will try my best to describe it.
]]

--[[
    IsGreaterQuality = Game['OperatorGreater;gamedataQualitygamedataQuality;Bool']

    Override('InventoryDataManagerV2', 'GetPlayerInventoryPartsForItem;ItemIDTweakDBID', function(this, itemID, slotID, wrapped)
        local parts = wrapped(itemID, slotID)
        local item = TweakDB:GetRecord(itemID:GetTDBID())
        if item:ItemType():Type() == gamedataItemType.Cyb_Launcher then
            local itemData = this.TransactionSystem:GetItemData(this.Player, itemID)
            local itemQuality = RPGManager.GetItemDataQuality(itemData)
            for _, part in ipairs(parts) do
                if InventoryItemData.GetItemType(part) == gamedataItemType.Prt_Fragment then
                    local partQuality = InventoryItemData.GetComparedQuality(part)
                    if IsGreaterQuality(partQuality, itemQuality) then
                        part.IsRequirementMet = false
                        print("part lower quality")
                    end
                end
            end
        end
        return parts
    end)

]]

	print("Projectile Launcher Rework fully loaded!!")	
    end)












end -- end PLR new



return PLR:new()