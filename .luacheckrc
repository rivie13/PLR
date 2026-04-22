-- Luacheck configuration for CET-based Cyberpunk 2077 Lua mods.

std = "lua54"

-- TweakDB paths and record names are intentionally long in this project.
max_line_length = false

-- CET/runtime globals provided by the game environment.
globals = {
  "TweakDB",
  "PLR",
  "config",
  "registerForEvent",
  "Observe",
  "ObserveAfter",
  "Override",
  "Cron",
  "Game",
  "GameInstance",
  "GetSingleton",
  "GetMod",
  "Vector4",
  "EulerAngles",
  "nativeSettings",
  "json",
  -- Additional CET-runtime globals used by the Micro Missile module
  "ItemID",
  "TweakDBID",
  "ItemModificationSystem",
  "ESlotState",
  "RPGManager",
  "ProjectileLaunchHelper",
  "gamedataStatPoolType",
}

-- Keep lint focused on correctness over formatting-only noise.
ignore = {
  "611", -- line contains only whitespace
  "614", -- trailing whitespace
  "631", -- line is too long
  "212", -- unused argument
}
