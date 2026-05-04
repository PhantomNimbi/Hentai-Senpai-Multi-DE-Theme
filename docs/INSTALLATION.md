# Installation Guide

> 🌐 **Languages:** English | [日本語](INSTALLATION.ja.md) | [Español](INSTALLATION.es.md) | [Français](INSTALLATION.fr.md) | [Deutsch](INSTALLATION.de.md) | [中文](INSTALLATION.zh.md) | [한국어](INSTALLATION.ko.md) | [Русский](INSTALLATION.ru.md) | [Português](INSTALLATION.pt.md)

This comprehensive guide covers all installation methods, options, and post-installation steps for the Hentai-Senpai theme.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Quick Install](#quick-install)
- [Basic Installation](#basic-installation)
- [Installation Options](#installation-options)
- [Post-Installation](#post-installation)
- [Uninstallation](#uninstallation)
- [Troubleshooting Installation](#troubleshooting-installation)

---

## Prerequisites

### Required

| Requirement | Version | Notes |
|-------------|---------|-------|
| GTK | 3.20+ or 4.0+ | For application theming |
| Bash | 4.0+ | For installation scripts |

### Optional (Desktop Environment Specific)

| Desktop Environment | Version | Notes |
|---------------------|---------|-------|
| **GNOME** | 40+ | For Shell theming (requires User Themes extension) |
| **Cinnamon** | 4.0+ | Full desktop support |
| **XFCE** | Latest | Requires xfwm4 for window decorations |
| **Budgie** | 10.5+ | Full desktop support |
| **MATE** | 1.24+ | Full desktop support |

---

## Quick Install

For a complete installation with all recommended fixes:

```bash
./install.sh --update -l -f --dock && ./apply-theme.sh
```

This single command will:
1. Install/update the theme
2. Apply libadwaita fix for GTK4 apps
3. Apply Flatpak fix for sandboxed apps
4. Style your dock
5. Apply the theme to your desktop

---

## Basic Installation

The simplest way to install the theme:

```bash
./install.sh
```

This will:
- Copy theme files to `~/.themes/Hentai-Senpai/`
- Install wallpapers to `~/Pictures/Wallpapers/Hentai-Senpai/`

> **Note:** This installs the theme but doesn't apply it automatically. Run `./apply-theme.sh` to activate it.

---

## Installation Options

### Option Summary

| Option | Short | Description | Example |
|--------|-------|-------------|---------|
| `--update` | | Reinstall/update theme | `./install.sh --update` |
| `--uninstall` | `-u` | Remove theme | `./install.sh --uninstall` |
| `--libadwaita` | `-l` | Fix GTK4 apps | `./install.sh -l` |
| `--flatpak` | `-f` | Fix Flatpak apps | `./install.sh -f` |
| `--dock [TYPE]` | | Style dock | `./install.sh --dock transparent` |
| `--wallpapers` | `-w` | Install wallpapers | `./install.sh -w` |
| `--dest DIR` | `-d` | Custom directory | `./install.sh -d /usr/share/themes` |
| `--name NAME` | `-n` | Custom name | `./install.sh -n MyTheme` |
| `--check-deps` | | Check dependencies | `./install.sh --check-deps` |
| `--system-info` | | Show system info | `./install.sh --system-info` |

### Complete Installation (Recommended)

For the best experience with all fixes applied:

```bash
./install.sh --update -l -f --dock
```

This includes:
- ✅ Theme installation
- ✅ GTK4/libadwaita app support (`-l`)
- ✅ Flatpak app support (`-f`)
- ✅ Dock theming (`--dock`)

### Individual Options

#### `--update`

Reinstalls the theme, useful when updating or modifying theme files:

```bash
./install.sh --update
```

#### `-l, --libadwaita`

Applies the libadwaita fix for GTK4 applications (required for modern GNOME apps like Settings, Files, etc.):

```bash
./install.sh -l
```

**What this does:**
- Copies GTK4 CSS to `~/.config/gtk-4.0/`
- Ensures libadwaita-based apps respect the theme

**Note:** Log out and log back in for changes to take effect.

#### `-f, --flatpak`

Enables the theme for Flatpak sandboxed applications (Spotify, Discord, etc.):

```bash
./install.sh -f
```

**What this does:**
- Creates override for Flatpak permissions
- Allows Flatpak apps to access the theme
- Sets `GTK_THEME` environment variable

**Note:** Restart Flatpak apps for changes to take effect.

#### `--dock [TYPE]`

Styles your dock with the theme colors:

```bash
# Transparent dock (default)
./install.sh --dock

# Or explicitly:
./install.sh --dock transparent

# Solid dock
./install.sh --dock solid
```

**Supported docks:**
- Dash-to-Dock (GNOME extension)
- Ubuntu Dock (GNOME extension)
- Plank (transparent theme included)

#### `-w, --wallpapers`

Installs the theme wallpapers:

```bash
./install.sh -w
```

Wallpapers are installed to `~/Pictures/Wallpapers/Hentai-Senpai/`.

#### `-d, --dest DIR`

Specify a custom installation directory:

```bash
# User directory (default)
./install.sh -d ~/.themes

# System directory (requires root)
sudo ./install.sh -d /usr/share/themes
```

> **Note:** Installing to system directories requires root privileges.

#### `-n, --name NAME`

Install with a custom name:

```bash
./install.sh -n "My-Custom-Theme"
```

This installs the theme as `~/.themes/My-Custom-Theme/`.

#### `--check-deps`

Check and install missing system dependencies (GTK engines, etc.):

```bash
./install.sh --check-deps
```

**What this does:**
- Detects your Linux distribution
- Checks for required GTK2/3/4 packages
- Offers to install missing dependencies automatically

#### `--system-info`

Show system information and compatibility:

```bash
./install.sh --system-info
```

**What this shows:**
- Detected distribution and version
- Desktop environment
- GTK version compatibility
- Missing dependencies

### Combining Options

Options can be combined for convenience:

```bash
# All fixes with transparent dock
./install.sh -lfd

# All fixes with wallpapers
./install.sh -lfdw

# All fixes with solid dock
./install.sh -lfd solid
```

---

## Post-Installation

### Apply the Theme

After installation, apply the theme to your desktop:

```bash
./apply-theme.sh
```

This automatically:
1. Sets the GTK theme
2. Sets the icon theme
3. Sets the GNOME Shell theme (if on GNOME)
4. Applies the wallpaper

### Manual Application

If you prefer to set themes manually:

#### GNOME

```bash
# Set GTK theme
gsettings set org.gnome.desktop.interface gtk-theme "Hentai-Senpai"

# Set icon theme
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

# Set GNOME Shell theme (requires User Themes extension)
gsettings set org.gnome.shell.extensions.user-theme name "Hentai-Senpai"

# Set wallpaper
gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/Pictures/Wallpapers/Hentai-Senpai/001.png"
```

#### Cinnamon

Use the Themes settings application:
1. Open System Settings → Themes
2. Select "Hentai-Senpai" for Controls, Desktop, and Window borders

#### XFCE

```bash
# Set GTK theme
xfconf-query -c xsettings -p /Net/ThemeName -s "Hentai-Senpai"

# Set window manager theme
xfconf-query -c xfwm4 -p /general/theme -s "Hentai-Senpai"
```

#### MATE

```bash
# Set GTK theme
gsettings set org.mate.interface gtk-theme "Hentai-Senpai"

# Set window manager theme
gsettings set org.mate.Marco.general theme "Hentai-Senpai"
```

---

## Uninstallation

To completely remove the theme:

```bash
./install.sh --uninstall
```

This removes:
- Theme files from `~/.themes/`
- Wallpapers from `~/Pictures/Wallpapers/`
- GTK4 configuration from `~/.config/gtk-4.0/`
- Flatpak overrides
- Dock themes

### Partial Removal

To remove only specific components:

```bash
# Remove theme files only
rm -rf ~/.themes/Hentai-Senpai

# Remove wallpapers only
rm -rf ~/Pictures/Wallpapers/Hentai-Senpai

# Remove GTK4 config only
rm -f ~/.config/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk-dark.css
```

---

## Troubleshooting Installation

### Permission Denied

If you get permission errors when installing to system directories:

```bash
sudo ./install.sh -d /usr/share/themes
```

### Theme Not Showing

If the theme doesn't appear in your settings:

1. **Verify installation:**
   ```bash
   ls ~/.themes/Hentai-Senpai/
   ```

2. **Reinstall:**
   ```bash
   ./install.sh --update
   ```

3. **Restart your session:**
   ```bash
   # For GNOME
   killall gnome-shell
   
   # For Cinnamon
   cinnamon --replace &
   
   # Or simply log out and back in
   ```

### GTK4 Apps Not Themed

Run the libadwaita fix:

```bash
./install.sh -l
```

Then log out and back in.

### Flatpak Apps Not Themed

Run the Flatpak fix:

```bash
./install.sh -f
```

Then restart Flatpak applications.

### Dock Not Styled

Run the dock fix:

```bash
./install.sh --dock transparent
```

For Plank specifically:
```bash
plank --preferences
# Then select "Hentai-Senpai-Transparent" from the theme dropdown
```

---

## Next Steps

- 📖 [Troubleshooting Guide](TROUBLESHOOTING.md) — Solutions to common issues
- 🎨 [Customization Guide](CUSTOMIZATION.md) — Personalize the theme
- 🌈 [Color Palette Reference](COLOR_PALETTE.md) — Theme colors reference

---

**Installation complete!** 🎉

Enjoy your newly themed desktop environment!

---

[← Back to Documentation Home](HOME.md) | [Docs Index](README.md) | [Main README](../README.md)
