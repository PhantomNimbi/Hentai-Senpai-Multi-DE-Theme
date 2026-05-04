<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Language</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Home" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-fr-fr" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-de-de" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-it-it" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Home-ru-ru" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Hentai-Senpai Theme

A beautiful dark GTK theme based on Orchis with Nord colors. This theme brings a modern, cohesive look to your Linux desktop with carefully selected color schemes that are easy on the eyes during long coding sessions or daily use.

![Hero Screenshot](../../assets/screenshots/hero.png)

## Requirements

Before installing, make sure you have:

- **GTK Libraries**: GTK 2, GTK 3, and GTK 4 development libraries
- **Git**: For cloning the repository
- **Sass Compiler**: Either `sassc` (recommended) or `dart-sass`
- **Linux System**: Any distribution with a GTK-based desktop environment (GNOME, Cinnamon, XFCE, Budgie, MATE, etc.)
- **Disk Space**: Approximately 50MB free space

### Install dependencies (Ubuntu/Debian):
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### Install dependencies (Fedora):
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### Install dependencies (Arch):
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## Quick Start

The fastest way to get started:

```bash
# Basic installation
./install.sh

# Full installation with all fixes and options
./install.sh --update -l -f --dock

# Apply the theme
./scripts/apply.sh
```

### Common One-Liners

```bash
# Clone and install in one command
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# Update existing installation
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## Installation Options

| Option | Description |
|--------|-------------|
| `--update` | Update/reinstall the theme (preserves customizations) |
| `-l, --libadwaita` | Fix GTK4/libadwaita applications theming |
| `-f, --flatpak` | Fix Flatpak sandboxed applications theming |
| `--dock [TYPE]` | Apply dock theme (transparent, solid, or blur) |
| `-w, --wallpapers` | Install and apply theme wallpapers |
| `-d, --dest DIR` | Custom installation directory (default: ~/.themes) |
| `-t, --theme VARIANT` | Install specific color variant |
| `-c, --color VARIANT` | Install specific accent color |
| `-s, --size SIZE` | Install specific size variant (standard, compact) |
| `-h, --help` | Show detailed help message |

### Examples:

```bash
# Install with transparent dock and all fixes
./install.sh -l -f --dock transparent

# Install to system-wide directory
sudo ./install.sh -d /usr/share/themes

# Install only dark variant with blue accent
./install.sh -t dark -c blue
```

## Common Issues

### Theme not applying?
- **GNOME Users**: Enable the "User Themes" extension from GNOME Extensions
- **Other DEs**: Make sure you have a compatible theme engine installed
- Try logging out and back in, or restart your desktop environment

### Flatpak apps not themed?
Run the install script with the `--flatpak` flag:
```bash
./install.sh -f
```

### GTK4/libadwaita apps look different?
Apply the libadwaita fix:
```bash
./install.sh -l
```

### Missing icons?
Install one of these recommended icon themes:
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## Features

- **Dark & Elegant Nord Colors**: Based on the popular Nord color palette for a comfortable viewing experience
- **Material Design Principles**: Modern, clean interface following Google's Material Design guidelines
- **Multi-DE Support**: Works with GNOME, Cinnamon, XFCE, Budgie, MATE, and other GTK-based desktop environments
- **Complete GTK Support**: Covers GTK 2, GTK 3, GTK 4, GNOME Shell, and window decorations
- **Modern GTK4/libadwaita Support**: Full compatibility with the latest GTK4 applications
- **Flatpak Ready**: Seamlessly theme Flatpak sandboxed applications
- **Customizable**: Multiple color variants, sizes, and accent colors available
- **Dock Themes**: Optional transparent, solid, or blur dock styling
- **Wallpaper Collection**: Curated wallpapers that match the theme perfectly

## Contributing

We welcome contributions from the community! Here's how you can help:

- **Found a bug?** [Report it on GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - Please include screenshots and system details
- **Have a suggestion?** [Open a GitHub Discussion](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - Share your ideas for improvements
- **Want to help?** Check our [Contributing Guide](Contributing) - Learn how to submit pull requests, report bugs, and contribute code

## Quick Links

- [Installation Guide](Installation-Guide) - Detailed installation instructions
- [Troubleshooting](Troubleshooting) - Solutions to common problems
- [Customization](Customization) - How to customize the theme
- [Color Palette](Color-Palette) - Theme color reference
- [Contributing](Contributing) - How to contribute to the project

## View on GitHub

[View on GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
