# Hentai-Senpai Theme

> 🌐 **Languages:** English | [日本語](README.ja.md) | [Español](README.es.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [中文](README.zh.md) | [한국어](README.ko.md) | [Русский](README.ru.md) | [Português](README.pt.md)

> 🔗 **Share:** [![Twitter/X](https://img.shields.io/badge/Share-Twitter%2FX-1DA1F2?logo=twitter&style=flat-square)](https://twitter.com/intent/tweet?text=Check%20out%20Hentai-Senpai%20-%20A%20beautiful%20dark%20GTK%20theme%20based%20on%20Orchis%20with%20Nord%20colors!&url=https%3A%2F%2Fgithub.com%2Fowner%2Fhentai-senpai-theme) [![Reddit](https://img.shields.io/badge/Share-Reddit-FF4500?logo=reddit&style=flat-square)](https://reddit.com/submit?title=Hentai-Senpai%20-%20A%20beautiful%20dark%20GTK%20theme&url=https%3A%2F%2Fgithub.com%2Fowner%2Fhentai-senpai-theme) [![Facebook](https://img.shields.io/badge/Share-Facebook-1877F2?logo=facebook&style=flat-square)](https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fgithub.com%2Fowner%2Fhentai-senpai-theme) [![LinkedIn](https://img.shields.io/badge/Share-LinkedIn-0A66C2?logo=linkedin&style=flat-square)](https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fgithub.com%2Fowner%2Fhentai-senpai-theme) [![Mastodon](https://img.shields.io/badge/Share-Mastodon-6364FF?logo=mastodon&style=flat-square)](https://mastodonshare.com/?text=Hentai-Senpai%20-%20A%20beautiful%20dark%20GTK%20theme&url=https%3A%2F%2Fgithub.com%2Fowner%2Fhentai-senpai-theme) [![Telegram](https://img.shields.io/badge/Share-Telegram-26A5E4?logo=telegram&style=flat-square)](https://t.me/share/url?url=https%3A%2F%2Fgithub.com%2Fowner%2Fhentai-senpai-theme&text=Hentai-Senpai%20-%20A%20beautiful%20dark%20GTK%20theme)

> 📊 **Status:** [![Version](https://img.shields.io/github/v/release/owner/hentai-senpai-theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/owner/hentai-senpai-theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/owner/hentai-senpai-theme/blob/main/src/Hentai-Senpai/COPYING) [![Stars](https://img.shields.io/github/stars/owner/hentai-senpai-theme?style=flat-square&color=yellow)](https://github.com/owner/hentai-senpai-theme/stargazers) [![Last Commit](https://img.shields.io/github/last-commit/owner/hentai-senpai-theme?style=flat-square&color=green)](https://github.com/owner/hentai-senpai-theme/commits/main) [![Repo Size](https://img.shields.io/github/repo-size/owner/hentai-senpai-theme?style=flat-square&color=orange)](https://github.com/owner/hentai-senpai-theme) [![Contributors](https://img.shields.io/github/contributors/owner/hentai-senpai-theme?style=flat-square&color=purple)](https://github.com/owner/hentai-senpai-theme/graphs/contributors) [![Issues](https://img.shields.io/github/issues/owner/hentai-senpai-theme?style=flat-square&color=red)](https://github.com/owner/hentai-senpai-theme/issues)

A beautiful dark GTK theme based on [Orchis](https://github.com/vinceliuice/Orchis-theme) with the elegant [Nord](https://www.nordtheme.com/) color palette.

![Theme Preview](wallpapers/001.png)

## Features

- **Dark & Elegant** — Deep blue-gray backgrounds with comfortable contrast ratios
- **Nord Colors** — Beautiful Arctic-inspired color scheme designed for clarity
- **Material Design** — Rounded corners, smooth shadows, and subtle ripple effects
- **Multi-DE Support** — Works with GNOME, Cinnamon, XFCE, Budgie, and MATE
- **Complete Theming** — GTK2/3/4, GNOME Shell, window decorations, wallpapers, and dock themes
- **Modern GTK4** — Full support for libadwaita-based applications
- **Flatpak Ready** — Theme support for sandboxed applications

## Quick Start

```bash
# Install the theme with all recommended fixes
./install.sh --update -l -f --dock

# Apply the theme to your desktop
./apply-theme.sh
```

## Requirements

- GTK 3.20+ or GTK 4.0+
- GNOME Shell 40+ (for GNOME users)
- Bash 4.0+

## Installation

### Basic Installation

```bash
./install.sh
```

### Complete Installation (Recommended)

For the best experience with all fixes applied:

```bash
./install.sh --update -l -f --dock
```

This installs:
- The complete theme
- GTK4/libadwaita application support
- Flatpak application support
- Dock theming (transparent or solid)

## Installation Options

| Option | Short | Description |
|--------|-------|-------------|
| `--update` | | Update/reinstall the theme |
| `--uninstall` | `-u` | Remove the theme completely |
| `--libadwaita` | `-l` | Fix GTK4/libadwaita apps |
| `--flatpak` | `-f` | Fix Flatpak sandboxed apps |
| `--dock [TYPE]` | | Style your dock (transparent\|solid) |
| `--wallpapers` | `-w` | Install theme wallpapers |
| `--check-deps` | | Check and install dependencies |
| `--system-info` | | Show system compatibility info |
| `--dest DIR` | `-d` | Custom install directory |
| `--name NAME` | `-n` | Custom theme name |

## Usage Examples

```bash
# Fresh install with all fixes (recommended)
./install.sh --update -l -f --dock

# Install with solid dock instead of transparent
./install.sh --update -l -f --dock solid

# Install and apply wallpapers
./install.sh --update -l -f --dock -w

# Check and install missing dependencies
./install.sh --check-deps

# Show system information
./install.sh --system-info

# Remove everything
./install.sh --uninstall
```

## Documentation

📖 **[Full Documentation](docs/)** — Comprehensive guides and references

- **[Documentation Home](docs/HOME.md)** — Complete overview and getting started guide
- **[Installation Guide](docs/INSTALLATION.md)** — Detailed installation instructions
- **[Troubleshooting](docs/TROUBLESHOOTING.md)** — Solutions to common problems
- **[Color Palette](docs/COLOR_PALETTE.md)** — Complete Nord color reference
- **[Customization](docs/CUSTOMIZATION.md)** — Personalize the theme

## Screenshots

| GTK Interface | Desktop Overview |
|---------------|------------------|
| ![](images/preview-1.png) | ![](images/preview-2.png) |

## Color Palette

The theme uses the [Nord](https://www.nordtheme.com/) color palette:

| Group | Colors | Usage |
|-------|--------|-------|
| **Polar Night** | `#2e3440`, `#3b4252`, `#434c5e`, `#4c566a` | Backgrounds |
| **Snow Storm** | `#d8dee9`, `#e5e9f0`, `#eceff4` | Text colors |
| **Frost** | `#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac` | Accents |
| **Aurora** | `#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead` | Semantic colors |

## Supported Desktop Environments

- **GNOME** 40+ — Full Shell theming with User Themes extension
- **Cinnamon** 4.0+ — Complete desktop and panel support
- **XFCE** — GTK theme and xfwm4 window decorations
- **Budgie** 10.5+ — Full desktop integration
- **MATE** 1.24+ — GTK and Metacity support

## Theme Components

- **GTK 2.0/3.0/4.0** — Complete widget theming
- **GNOME Shell** — Panel, menus, notifications, and overview
- **Cinnamon** — Desktop, panel, and menu styling
- **XFWM4/Metacity** — Window decorations
- **Plank** — Transparent dock theme

## Quick Fixes

### GTK4 Apps Not Themed?

```bash
./install.sh -l
# Then log out and back in
```

### Flatpak Apps Not Themed?

```bash
./install.sh -f
# Then restart Flatpak apps
```

### Dock Not Styled?

```bash
./install.sh --dock transparent
# Or for solid dock:
./install.sh --dock solid
```

## Contributing

Contributions are welcome! Please see the [Contributing Guide](docs/CONTRIBUTING.md) for guidelines on how to contribute to this project.

You can contribute by:
- 🐛 [Reporting bugs](.github/ISSUE_TEMPLATE/bug_report.md)
- ✨ [Suggesting features](.github/ISSUE_TEMPLATE/feature_request.md)
- 📝 Improving documentation
- 🎨 Submitting code changes
- 🧪 Testing on different desktop environments

## Credits

- Based on [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) by vinceliuice
- [Nord Theme](https://www.nordtheme.com/) color palette by Arctic Ice Studio
- Material Design principles by Google

## License

This project is licensed under the GPL-3.0 License — see the [COPYING](src/COPYING) file for details.

## Acknowledgments

This project was developed with assistance from [OpenCode](https://opencode.ai/), an AI-powered coding agent. OpenCode helped with:
- Documentation structure and content
- GitHub issue templates
- Contributing guidelines
- Translation infrastructure
- Social media integration

Human oversight and decision-making guided all AI-generated content.

---

**Enjoy your new theme!** 🎨

For help and more information, check the [documentation](docs/) or [changelog](CHANGELOG.md).
