# Installation Guide

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Language</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Installation-Guide" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Installation-Guide-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

This guide will help you install the Hentai-Senpai GTK Theme on your Linux system.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Quick Install](#quick-install)
- [Installation Options](#installation-options)
- [Desktop Environment Specific](#desktop-environment-specific)
- [Flatpak Support](#flatpak-support)
- [Uninstallation](#uninstallation)

## Prerequisites

Before installing, ensure you have:

- **GTK libraries**: GTK 2, GTK 3, and/or GTK 4 (depending on your system)
- **Git**: For cloning the repository
- **Sass compiler**: `sassc` or `dart-sass` (for building from source)
- **Root access**: Only if installing system-wide

### Installing Dependencies

**Debian/Ubuntu:**
```bash
sudo apt install git sassc
```

**Fedora:**
```bash
sudo dnf install git sassc
```

**Arch Linux:**
```bash
sudo pacman -S git sassc
```

## Quick Install

The fastest way to install:

```bash
# Clone the repository
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Install the theme
./install.sh --update -l -f --dock

# Apply the theme
./apply-theme.sh
```

## Installation Options

The install script supports various options:

| Option | Description |
|--------|-------------|
| `-d`, `--dest` | Set installation destination (default: `~/.themes`) |
| `-n`, `--name` | Set theme name (default: `Hentai-Senpai`) |
| `-l`, `--libadwaita` | Link to libadwaita theme |
| `-f`, `--flatpak` | Install Flatpak theme |
| `--dock` | Install dock theme (Plank) |
| `-r`, `--remove` | Remove installed themes |
| `--update` | Update existing installation |

### Examples

**System-wide installation:**
```bash
sudo ./install.sh -d /usr/share/themes
```

**Custom theme name:**
```bash
./install.sh -n "My-Custom-Theme"
```

**Install with all features:**
```bash
./install.sh -l -f --dock
```

**Remove theme:**
```bash
./install.sh -r
```

## Desktop Environment Specific

### GNOME

After installation, activate the theme:

```bash
# Enable User Themes extension (if not already enabled)
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Apply theme
./apply-theme.sh
```

Or manually set via **Settings > Appearance**.

### Cinnamon

Go to **System Settings > Themes** and select `Hentai-Senpai`.

### XFCE

1. Go to **Settings > Appearance**
2. Select `Hentai-Senpai` from the list
3. Go to **Window Manager** and select the theme there as well

### MATE

Go to **System > Preferences > Appearance** and select the theme.

### Budgie

Go to **Settings > Desktop > Appearance** and select the theme.

## Flatpak Support

To theme Flatpak applications:

```bash
# Allow Flatpak apps to access the theme
flatpak override --filesystem=$HOME/.themes

# Install Flatpak theme (during installation)
./install.sh -f
```

**Note:** You may need to restart Flatpak apps for changes to take effect.

## Uninstallation

To remove the theme:

```bash
./install.sh -r
```

Or manually delete:
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## Next Steps

- Read the [Customization Guide](Customization) to personalize your theme
- Check [Troubleshooting](Troubleshooting) if you encounter issues
- View the [Color Palette](Color-Palette) for theme colors
