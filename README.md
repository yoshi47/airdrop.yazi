# airdrop.yazi

Share files via AirDrop from [Yazi](https://yazi-rs.github.io/).

> **macOS only** — requires `NSSharingService` (AppKit).

## Requirements

- macOS
- Xcode Command Line Tools (`xcode-select --install`)

## Install

```bash
ya pack -a yoshi47/airdrop
```

Then build the Swift binary:

```bash
cd ~/.local/state/yazi/packages/yoshi47/airdrop.yazi/
make
```

> If you installed via a different method, `cd` to wherever the plugin is located and run `make`.

## Usage

Add a keybinding in `~/.config/yazi/keymap.toml`:

```toml
[mgr]
prepend_keymap = [
  { on = "A", run = "plugin airdrop", desc = "Share via AirDrop" },
]
```

Select files (or hover over a file) and press `A` to open the AirDrop dialog.

### Alternative: opener (not recommended)

You can also register it as an opener in `yazi.toml`, but the binary path depends on the install method, making it less portable:

```toml
[opener]
airdrop = [
  { run = "~/.local/state/yazi/packages/yoshi47/airdrop.yazi/airdrop %s", desc = "Share via AirDrop", for = "macos", orphan = true },
]
```

## License

MIT
