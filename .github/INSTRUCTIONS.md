# PLR (Projectile Launcher Rework) — Update Instructions

## Overview

This mod adds custom projectile launcher rounds to Cyberpunk 2077, including:
- **Biotechnica Kinetic Rounds** (M1-M5, Common → Legendary)
- **Zetatech Bounce Rounds** (M1-M3, Rare → Legendary)
- **Millitech Rainbow Round** (Iconic)
- **Quality variants** of vanilla Explosive, EMP, Thermal, Chemical rounds
- **In-game NativeSettings UI** for tuning damage/range per round
- **Ripperdoc vendor integration** across Night City

## Architecture

```
PLR/
├── bin/x64/plugins/cyber_engine_tweaks/mods/PLR/
│   ├── init.lua                          # CET entry point
│   ├── Modules/
│   │   ├── Native Settings Integration.lua  # NativeSettings UI (~2000 lines)
│   │   └── Set Values.lua                   # TweakDB:SetFlat() overrides
│   └── Data/config.json                     # Saved user settings
├── r6/tweaks/PLR2.0/
│   ├── new_projectile_launcher_round_attacks.yaml  # Attack record definitions
│   └── new_rounds_and_changes.yaml                 # Item records + vendor integration
├── source/archive/PLR2.0/
│   └── localization/en-us.json             # Item names/descriptions
├── PLR2.0.cpmodproj                        # WolvenKit project
└── ProjectileLauncherRework.archive.xl     # ArchiveXL localization linkage
```

## Tech Stack

| Tool | Purpose | Min Version |
|------|---------|-------------|
| [CET](https://www.nexusmods.com/cyberpunk2077/mods/107) | Lua scripting runtime | Latest for 2.31 |
| [TweakXL](https://github.com/psiberx/cp2077-tweak-xl) | YAML-based TweakDB mods | 1.11.3+ |
| [ArchiveXL](https://www.nexusmods.com/cyberpunk2077/mods/4198) | Localization/asset loading | Latest for 2.31 |
| [Red4ext](https://www.nexusmods.com/cyberpunk2077/mods/2380) | Native plugin loader | Latest for 2.31 |
| [WolvenKit](https://github.com/WolvenKit/WolvenKit) | .archive building | 8.16+ |
| [NativeSettings](https://www.nexusmods.com/cyberpunk2077/mods/3518) | In-game settings UI | Latest |

## Key TweakDB Patterns

### Attack Records (YAML)
Custom attacks use `$base` referencing vanilla attacks:
```yaml
Attacks.KineticProjectileCommon:
  $type: gamedataAttack_GameEffect_Record
  $base: Attacks.MissileProjectile
```

### Item Records (YAML)
Custom rounds base off vanilla rounds:
```yaml
Items.BiotechnicaKineticProjectileRoundM1:
  $base: Items.ExplosiveDamageRound
```

### Runtime Overrides (Lua)
CET scripts override TweakDB flats at runtime:
```lua
TweakDB:SetFlat("Attacks.MissileProjectile_inline1.value", damageValue)
TweakDB:SetFlat("Attacks.KineticProjectileCommon.range", rangeValue)
```

## Critical: Inline Index References

The mod heavily relies on `_inlineN` TweakDB paths (e.g., `Attacks.MissileProjectile_inline1`). These indices are **positional** within the game's TweakDB and **shift when CDPR restructures records**. Every inline reference must be verified against the current game version.

## 2.31 Reference

Decompiled game scripts for 2.31 are available at:
https://codeberg.org/adamsmasher/cyberpunk

Use WolvenKit's Tweak Browser for TweakDB path verification.

## Testing Workflow

0. Run staged lint validation before commit (YAML + Lua): `npm run precommit`
1. Build `.archive` via WolvenKit
2. Install mod files to game directory (WolvenKit Install button)
3. Launch game, open CET console
4. Spawn items: `Game.AddToInventory("Items.BiotechnicaKineticProjectileRoundM1", 1)`
5. Check TweakXL log: `red4ext/plugins/TweakXL/TweakXL.log`
6. Check CET log for Lua errors
