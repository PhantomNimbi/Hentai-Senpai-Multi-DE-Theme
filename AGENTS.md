# Hentai-Senpai Theme - Orchis Dark Nord Variant

## Overview

This is a GTK/GNOME Shell theme based on **Orchis Dark Nord** styling. It combines the Material Design principles of the Orchis theme with the Nord color palette for a cohesive, modern dark theme.

## Color Palette (Nord)

### Base Colors
- **Polar Night** (Backgrounds)
  - nord0: `#2e3440` - Main background
  - nord1: `#3b4252` - Secondary background / Cards
  - nord2: `#434c5e` - Tertiary background / Hover states
  - nord3: `#4c566a` - Borders / Dividers

- **Snow Storm** (Text)
  - nord4: `#d8dee9` - Primary text
  - nord5: `#e5e9f0` - Secondary text
  - nord6: `#eceff4` - Highlight text

- **Frost** (Accents)
  - nord7: `#8fbcbb` - Teal accent
  - nord8: `#88c0d0` - Light blue accent
  - nord9: `#81a1c1` - Blue accent
  - nord10: `#5e81ac` - Primary accent (main theme color)

- **Aurora** (Semantic colors)
  - nord11: `#bf616a` - Error / Danger
  - nord12: `#d08770` - Orange
  - nord13: `#ebcb8b` - Warning / Yellow
  - nord14: `#a3be8c` - Success / Green
  - nord15: `#b48ead` - Purple

## Theme Structure

```
src/Hentai-Senpai/
├── gtk-2.0/
│   └── main.rc           # GTK2 theme configuration
├── gtk-3.0/
│   └── gtk.css           # GTK3 theme stylesheet
├── gtk-4.0/
│   ├── gtk.css           # GTK4 theme stylesheet (main)
│   └── gtk-dark.css      # GTK4 dark variant
├── gnome-shell/
│   ├── gnome-shell.css   # GNOME Shell stylesheet
│   └── assets/           # Shell assets (checkboxes, toggles, etc.)
├── cinnamon/
│   └── cinnamon.css      # Cinnamon desktop stylesheet
├── xfwm4/
│   └── themerc           # XFWM window manager theme
├── metacity-1/
│   └── metacity-theme-3.xml  # Metacity window decorations
└── backgrounds/          # Wallpaper assets

```

## Installation

### Basic Installation
```bash
./install.sh
```

### With All Fixes
```bash
./install.sh --update -l -f --dock
```

### Options
- `-u, --uninstall` - Remove the theme
- `--update` - Update/reinstall the theme
- `-l, --libadwaita` - Apply libadwaita fix for GTK4 apps
- `-f, --flatpak` - Apply Flatpak theme fix
- `--dock [TYPE]` - Apply dock theme fix (TYPE: transparent|solid, default: transparent)

### Apply Theme
```bash
./apply-theme.sh
```

## Key Features

### Material Design Principles
- Rounded corners (4px default border-radius - clean squared look with ballpoint corners)
- Elevation shadows
- Ripple effects on buttons
- Consistent spacing and padding

### Nord Color Integration
- Background: `#2e3440` (nord0)
- Surface: `#3b4252` (nord1)
- Primary: `#5e81ac` (nord10)
- Success: `#a3be8c` (nord14)
- Warning: `#ebcb8b` (nord13)
- Error: `#bf616a` (nord11)

### Supported Desktop Environments
- GNOME (Shell 40+)
- Cinnamon
- XFCE (with xfwm4)
- Budgie
- MATE

## Build Notes

### CSS Variables (GTK4)
The theme uses CSS custom properties for consistent theming:
```css
@define-color accent_bg_color #5e81ac;
@define-color accent_fg_color white;
@define-color window_bg_color #2e3440;
@define-color view_bg_color #3b4252;
```

### Transparency
- Popovers: Semi-transparent with blur
- Panel: Slight transparency
- Dialogs: Solid background

### Border Radius
- Buttons: 12px
- Cards: 12px
- Entries: 12px
- Popovers: 20px
- Checkboxes/Radios: 9999px (circular)

## Dock Themes

### Dash-to-Dock / Ubuntu Dock
The theme includes styles for dash-to-dock and ubuntu-dock extensions. Run the dock fix to enable proper theming:

```bash
./install.sh --dock              # Transparent dock (default)
./install.sh --dock solid        # Solid dock
./install.sh --dock transparent  # Explicit transparent dock
```

### Plank Dock
The transparent dock option automatically installs the transparent Plank theme:
- **Transparent**: More transparent background (35% opacity)

To use it, run:
```bash
plank --preferences
```
Then select 'Hentai-Senpai-Transparent' from the theme dropdown.

## Troubleshooting

### GTK4 Apps Not Themed
Run the libadwaita fix:
```bash
./install.sh -l
```

### Flatpak Apps Not Themed
Run the flatpak fix:
```bash
./install.sh -f
```

### Dock Issues
Run the dock fix:
```bash
./install.sh --dock              # Transparent dock (default)
./install.sh --dock solid        # Solid dock
```

## Credits

- Based on [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) by vinceliuice
- Nord color palette by [Arctic Ice Studio](https://www.nordtheme.com/)
- Material Design by Google

## License

GPL-3.0 License
