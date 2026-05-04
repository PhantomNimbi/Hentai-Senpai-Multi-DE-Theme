# Installation Guide

This guide covers all installation methods and options for the Hentai-Senpai theme.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Basic Installation](#basic-installation)
- [Installation Options](#installation-options)
- [Post-Installation](#post-installation)
- [Uninstallation](#uninstallation)

---

## Prerequisites

### Required

- GTK 3.20 or higher (for legacy apps)
- GTK 4.0 or higher (for modern apps)
- Bash 4.0 or higher

### Optional (for specific desktop environments)

- **GNOME**: GNOME Shell 40 or higher
- **Cinnamon**: Cinnamon 4.0+
- **XFCE**: xfwm4 window manager
- **Budgie**: Budgie Desktop 10.5+
- **MATE**: MATE Desktop 1.24+

---

## Basic Installation

The simplest way to install the theme:

```bash
./install.sh
```

This will:
1. Copy theme files to `~/.themes/Hentai-Senpai/`
2. Install wallpapers to `~/Pictures/Wallpapers/Hentai-Senpai/`

> **Note:** This installs the theme but doesn't apply it automatically. Run `./apply-theme.sh` to activate it.

---

## Installation Options

### Complete Installation (Recommended)

For the best experience with all fixes applied:

```bash
./install.sh --update -l -f --dock
```

This includes:
- Theme installation
- GTK4/libadwaita app support
- Flatpak app support
- Dock theming

### Individual Options

#### `--update`

Reinstalls the theme, useful when updating or modifying theme files:

```bash
./install.sh --update
```

#### `-l, --libadwaita`

Applies the libadwaita fix for GTK4 applications (required for modern GNOME apps):

```bash
./install.sh -l
```

**What this does:**
- Copies GTK4 CSS to `~/.config/gtk-4.0/`
- Ensures libadwaita-based apps respect the theme

#### `-f, --flatpak`

Enables the theme for Flatpak sandboxed applications:

```bash
./install.sh -f
```

**What this does:**
- Creates override for Flatpak permissions
- Allows Flatpak apps to access the theme

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
- Plank

#### `-d, --dest DIR`

Specify a custom installation directory:

```bash
./install.sh -d /usr/share/themes
```

> **Note:** Installing to system directories requires root privileges.

#### `-n, --name NAME`

Install with a custom name:

```bash
./install.sh -n "My-Custom-Theme"
```

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

---

## Uninstallation

To completely remove the theme:

```bash
./install.sh --uninstall
```

This removes:
- Theme files from `~/.themes/`
- Wallpapers from `~/Pictures/Wallpapers/`
- GTK4 configuration
- Flatpak overrides
- Dock themes

---

## Troubleshooting Installation Issues

### Permission Denied

If you get permission errors when installing to system directories:

```bash
sudo ./install.sh -d /usr/share/themes
```

### Theme Not Showing

If the theme doesn't appear in your settings:

1. Verify installation:
   ```bash
   ls ~/.themes/Hentai-Senpai/
   ```

2. Restart your session or run:
   ```bash
   # For GNOME
   killall gnome-shell
   
   # For Cinnamon
   cinnamon --replace &
   ```

### GTK4 Apps Not Themed

Run the libadwaita fix:

```bash
./install.sh -l
```

Then log out and back in.

---

## Next Steps

- [Troubleshooting Guide](TROUBLESHOOTING.md)
- [Customization Guide](CUSTOMIZATION.md)
- [Color Palette Reference](COLOR_PALETTE.md)
