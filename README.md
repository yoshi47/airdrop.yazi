# airdrop.yazi

Share files via AirDrop from [Yazi](https://yazi-rs.github.io/).

> **macOS only** — requires `NSSharingService` (AppKit).

## Requirements

- macOS
- Xcode Command Line Tools (`xcode-select --install`)
- `~/.local/bin` in your `PATH`

## Install

1. Install the plugin:

```bash
ya pkg add yoshi47/airdrop
```

2. Build and install the Swift binary:

```bash
git clone https://github.com/yoshi47/airdrop.yazi /tmp/airdrop-build
cd /tmp/airdrop-build && make && make install
rm -rf /tmp/airdrop-build
```

This installs the `airdrop` binary to `~/.local/bin/`.

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
