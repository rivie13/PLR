--------------------------------------------------------------------------
-- Projectile Launcer Rework
-- init.lua
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

function PLR:new()

    registerForEvent("onInit", function() 
	require("modules/Native Settings Integration.lua")
	dofile("modules/Native Settings Integration.lua")
	dofile("modules/Set Values.lua")

	print("Projectile Launcher Rework fully loaded!!")	
    end)

end



return PLR:new()