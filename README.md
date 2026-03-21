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

Then build and install the Swift binary:

```bash
cd ~/.config/yazi/plugins/airdrop.yazi/
make && make install
```

This compiles `airdrop.swift` and copies the binary to `~/.local/bin/airdrop`. Make sure `~/.local/bin` is in your `PATH`.

> If you installed via `ya pkg`, the plugin may be in `~/.local/state/yazi/packages/`. Use `ya pkg list` to find the path.

## Usage

Add a keybinding in `~/.config/yazi/keymap.toml`:

```toml
[mgr]
prepend_keymap = [
  { on = "A", run = "plugin airdrop", desc = "Share via AirDrop" },
]
```

Select files (or hover over a file) and press `A` to open the AirDrop dialog.

## License

MIT
