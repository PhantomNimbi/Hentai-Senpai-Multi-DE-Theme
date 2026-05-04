# Hentai-Senpai Theme

> 🌐 **Languages:** English | [日本語](README.ja.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [中文](README.zh.md) | [한국어](README.ko.md) | [Русский](README.ru.md) | [Português](README.pt.md)

[![Version](https://img.shields.io/github/v/release/PhantomNimbi/Hentai-Senpai-GTK-Theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/blob/main/src/COPYING) [![Stars](https://img.shields.io/github/stars/PhantomNimbi/Hentai-Senpai-GTK-Theme?style=flat-square&color=yellow)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/stargazers)

A beautiful dark GTK theme based on [Orchis](https://github.com/vinceliuice/Orchis-theme) with the elegant [Nord](https://www.nordtheme.com/) color palette.

![Theme Preview](wallpapers/001.png)

## Features

- **Dark & Elegant** — Deep blue-gray backgrounds with comfortable contrast
- **Nord Colors** — Arctic-inspired color scheme designed for clarity
- **Material Design** — Rounded corners, smooth shadows, ripple effects
- **Multi-DE Support** — GNOME, Cinnamon, XFCE, Budgie, and MATE
- **Complete Theming** — GTK 2/3/4, GNOME Shell, window decorations, wallpapers
- **Modern GTK4** — Full support for libadwaita-based applications
- **Flatpak Ready** — Theme support for sandboxed applications

## Quick Start

```bash
# Install with all recommended fixes
./install.sh --update -l -f --dock

# Apply the theme
./scripts/apply.sh
```

## Requirements

- GTK 3.20+ or GTK 4.0+
- GNOME Shell 40+ (for GNOME users)
- Bash 4.0+

## Installation

```bash
# Basic install
./install.sh

# Complete install (recommended) - includes GTK4, Flatpak, and dock fixes
./install.sh --update -l -f --dock
```

### Installation Options

| Option | Short | Description |
|--------|-------|-------------|
| `--update` | | Update/reinstall theme |
| `--uninstall` | `-u` | Remove theme |
| `--libadwaita` | `-l` | Fix GTK4/libadwaita apps |
| `--flatpak` | `-f` | Fix Flatpak apps |
| `--dock [TYPE]` | | Dock theme (transparent\|solid) |
| `--wallpapers` | `-w` | Install wallpapers |

## Documentation

📚 **[Full Documentation Wiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — Comprehensive guides and troubleshooting

- **[Installation Guide](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — Detailed setup instructions
- **[Troubleshooting](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — Common issues and solutions
- **[Color Palette](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Nord color reference
- **[Customization](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — Personalize the theme
- **[Contributing](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — How to contribute

## Quick Fixes

**GTK4 apps not themed?** `./install.sh -l` then log out and back in

**Flatpak apps not themed?** `./install.sh -f` then restart Flatpak apps

**Dock not styled?** `./install.sh --dock transparent` or `--dock solid`

## Contributing

Contributions welcome! See the [Contributing Guide](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing) for guidelines.

- 🐛 [Report bugs](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [Suggest features](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 Improve documentation

## Credits

- Based on [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) by vinceliuice
- [Nord Theme](https://www.nordtheme.com/) color palette by Arctic Ice Studio

## License

GPL-3.0 License — see [COPYING](src/COPYING) file for details.

---

**Enjoy your new theme!** 🎨

For help, check the [documentation wiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki).
