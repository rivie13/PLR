# Contributing to PLR

## Branch Strategy

- `main` — Last stable release (1.63 era)
- `update/2.31` — Active development branch for the 2.31 update

All work for the update should branch from and PR into `update/2.31`.

## Development Setup

1. Clone this repo
2. Clone the [2.31 decompiled scripts](https://codeberg.org/adamsmasher/cyberpunk) as a reference
3. Open `PLR-Update.code-workspace` (multi-root workspace with both repos)
4. Install latest WolvenKit, CET, TweakXL, ArchiveXL, Red4ext, NativeSettings

## Making Changes

### YAML Tweaks
- Files in `r6/tweaks/PLR2.0/`
- Validate syntax: https://www.yamllint.com/
- Check TweakXL log after loading: `red4ext/plugins/TweakXL/TweakXL.log`

### Lua Scripts
- Files in `bin/x64/plugins/cyber_engine_tweaks/mods/PLR/`
- CET console for testing: press `~` in-game
- Check CET log for errors

### TweakDB Path Verification
- Use WolvenKit Tweak Browser on current game version
- Cross-reference with decompiled scripts
- Document any changed inline indices

## Commit Convention

Use conventional commits:
- `fix:` — Bug fixes, broken TweakDB paths
- `feat:` — New rounds, features
- `chore:` — Project config, docs
- `refactor:` — Code cleanup without behavior change

## Testing Checklist

- [ ] YAML files pass yamllint validation
- [ ] TweakXL.log shows no errors on load
- [ ] CET console shows no Lua errors
- [ ] Custom items spawn via `Game.AddToInventory()`
- [ ] Vendor inventories include custom rounds
- [ ] NativeSettings sliders appear and save correctly
- [ ] Damage/range values apply in gameplay
