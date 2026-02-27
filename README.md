# Nerd Font Patcher

Docker image for converting regular fonts into Nerd Fonts using the
[official Nerd Fonts patcher](https://github.com/ryanoasis/nerd-fonts#font-patcher).

## Quick Start

```bash
# Patch a font with all Nerd Font glyphs
./patch-font ~/Library/Fonts/MyFont.ttf --complete

# Patch as monospaced + all glyphs
./patch-font ~/Library/Fonts/MyFont.ttf --complete --mono
```

The Docker image is built automatically on first run.

## Rebuild

To rebuild the image (e.g. after a new Nerd Fonts release):

```bash
docker rmi nerd-font-patcher
# Edit NERD_FONTS_VERSION in the Dockerfile if needed
./patch-font ~/Library/Fonts/MyFont.ttf --complete
```

## Common Options

| Flag | Description |
|------|-------------|
| `-c`, `--complete` | Patch with **all** Nerd Font glyphs |
| `-s`, `--mono` | Force single-width (monospace) output |
| `--careful` | Don't overwrite existing glyphs |
| `-l` | Adjust line height |

The patched font is written to the same directory as the input file.
