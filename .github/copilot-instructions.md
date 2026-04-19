# Copilot Instructions for PLR Mod

## Project Context

This is a Cyberpunk 2077 mod called PLR (Projectile Launcher Rework). It uses:
- **CET (Cyber Engine Tweaks)** for Lua scripting
- **TweakXL** for YAML-based TweakDB modifications
- **ArchiveXL** for localization
- **WolvenKit** for building .archive files
- **NativeSettings** for in-game settings UI

## Code Conventions

### Lua (CET)
- Entry point: `init.lua` using `registerForEvent("onInit", function() ... end)`
- Module loading: `require("Modules/ModuleName")`
- TweakDB access: `TweakDB:SetFlat(path, value)`, `TweakDB:GetFlat(path)`
- Game hooks: `Override(className, methodName, callback)`, `Observe(className, methodName, callback)`
- NativeSettings API: `nativeSettings.addRangeFloat()`, `nativeSettings.addTab()`, etc.

### TweakXL YAML
- New records use `$type:` for the record type
- Inherited records use `$base:` referencing a parent record
- Array mutations use `!append` to add to existing arrays
- Record paths follow pattern: `Namespace.RecordName` (e.g., `Attacks.KineticProjectileCommon`)
- Inline records are auto-named: `ParentRecord_inlineN`

### Important Patterns
- Damage values use `gamedataCurveStatModifier_Record` with `columnName: damage_by_level` or `columnName: damage_by_tech_ability`
- Attack records are `gamedataAttack_GameEffect_Record`
- Item records for rounds base off `Items.ExplosiveDamageRound` or similar vanilla items
- Vendor integration appends to `Vendors.vendor_name.inventoryPreset.items`

## Known Pitfalls

1. `_inlineN` indices are positional and break when CDPR changes parent records between patches
2. Vendor TweakDB paths change between major game versions
3. The cyberware system was completely reworked in 2.0 (quality tiers → capacity system)
4. NativeSettings Integration.lua is extremely boilerplate-heavy — consider data-driven refactoring
5. Some paths have typos from the original game (e.g., "Zeatech" vs "Zetatech" in certain range paths)

## Reference

- 2.31 decompiled scripts: https://codeberg.org/adamsmasher/cyberpunk
- Redmodding wiki: https://wiki.redmodding.org/cyberpunk-2077-modding
- TweakXL: https://github.com/psiberx/cp2077-tweak-xl
