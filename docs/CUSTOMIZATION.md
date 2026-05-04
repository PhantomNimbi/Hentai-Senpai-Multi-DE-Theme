# Customization Guide

> 🌐 **Languages:** English | [日本語](CUSTOMIZATION.ja.md) | [Español](CUSTOMIZATION.es.md) | [Français](CUSTOMIZATION.fr.md) | [Deutsch](CUSTOMIZATION.de.md) | [中文](CUSTOMIZATION.zh.md) | [한국어](CUSTOMIZATION.ko.md) | [Русский](CUSTOMIZATION.ru.md) | [Português](CUSTOMIZATION.pt.md)

How to customize and personalize the Hentai-Senpai theme.

## Table of Contents

- [Before You Start](#before-you-start)
- [Customizing Colors](#customizing-colors)
- [Adjusting Transparency](#adjusting-transparency)
- [Changing Border Radius](#changing-border-radius)
- [Custom Wallpapers](#custom-wallpapers)
- [Creating Variants](#creating-variants)

---

## Before You Start

### Backup Your Theme

Always make a backup before modifying theme files:

```bash
# Backup the original theme
cp -r ~/.themes/Hentai-Senpai ~/.themes/Hentai-Senpai-backup

# Or backup just the source
cp -r src src-backup
```

### Understanding the Structure

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/main.rc           # GTK2 apps (older applications)
├── gtk-3.0/gtk.css           # GTK3 apps (most current apps)
├── gtk-4.0/gtk.css           # GTK4 apps (modern GNOME apps)
├── gnome-shell/gnome-shell.css  # GNOME Shell UI
├── cinnamon/cinnamon.css     # Cinnamon desktop
└── metacity-1/               # Window decorations
```

---

## Customizing Colors

### Quick Color Change

1. Find the color you want to change in the CSS files
2. Replace with your preferred color
3. Reinstall the theme

### Example: Change Primary Accent

Edit `gtk-4.0/gtk.css`:

```css
/* Find this line */
@define-color accent_bg_color #5e81ac;

/* Change to your color */
@define-color accent_bg_color #cc7a00;  /* Amber */
```

### Multiple Color Changes

Create a color mapping script:

```bash
#!/bin/bash
# customize-colors.sh

THEME_DIR="$HOME/.themes/Hentai-Senpai"

# Replace primary accent (nord10)
find "$THEME_DIR" -name "*.css" -exec sed -i 's/#5e81ac/#cc7a00/g' {} \;

# Replace secondary accent (nord9)
find "$THEME_DIR" -name "*.css" -exec sed -i 's/#81a1c1/#d4a017/g' {} \;
```

Run after each theme update:
```bash
./install.sh --update && ./customize-colors.sh
```

---

## Adjusting Transparency

### Transparency Locations

| Component | File | Property |
|-----------|------|----------|
| Popovers | gtk-4.0/gtk.css | `background: rgba(59, 66, 82, 0.95)` |
| Panel | gnome-shell/gnome-shell.css | `background-color: rgba...` |
| Menus | gnome-shell/gnome-shell.css | `background-color: rgba...` |

### Make Everything Solid

Edit `gtk-4.0/gtk.css`:

```css
/* Find popover styling */
popover > contents {
    /* Change from: */
    background: rgba(59, 66, 82, 0.95);
    /* To: */
    background: #3b4252;
}
```

Edit `gnome-shell/gnome-shell.css`:

```css
/* Find panel styling */
#panel {
    /* Change from: */
    background-color: rgba(46, 52, 64, 0.9);
    /* To: */
    background-color: #2e3440;
}
```

### Adjust Opacity Values

RGBA format: `rgba(red, green, blue, alpha)`
- Alpha 1.0 = fully opaque
- Alpha 0.0 = fully transparent
- Alpha 0.5 = 50% transparent

---

## Changing Border Radius

### Current Border Radius Values

| Element | Default Radius |
|---------|---------------|
| Buttons | 12px |
| Cards | 12px |
| Entries | 12px |
| Popovers | 20px |
| Checkboxes | 9999px (circular) |

### Make Everything Sharper (Less Rounded)

Edit `gtk-4.0/gtk.css`:

```css
button {
    border-radius: 6px;  /* Instead of 12px */
}

card {
    border-radius: 6px;
}

entry {
    border-radius: 6px;
}

popover > contents {
    border-radius: 12px;  /* Instead of 20px */
}
```

### Make Everything Rounder

```css
button {
    border-radius: 20px;
}

card {
    border-radius: 16px;
}
```

---

## Custom Wallpapers

### Adding Your Own Wallpapers

1. Copy your wallpapers to the theme:
   ```bash
   cp ~/Pictures/my-wallpaper.png wallpapers/
   ```

2. Update the install script to include them (optional)

3. Apply manually:
   ```bash
   # GNOME
   gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/Pictures/my-wallpaper.png"
   
   # Or use the apply script and select your wallpaper
   ```

### Creating Wallpaper Variants

The theme includes several wallpapers in the `wallpapers/` directory. You can create color variants using ImageMagick:

```bash
# Adjust color temperature (warmer)
convert wallpapers/001.png -modulate 100,80 -fill '#d08770' -colorize 10% wallpapers/001-warm.png

# Adjust color temperature (cooler)
convert wallpapers/001.png -fill '#88c0d0' -colorize 10% wallpapers/001-cool.png
```

---

## Creating Variants

### Creating a Light Variant

1. Copy the theme:
   ```bash
   cp -r src src-light
   ```

2. Create a color swap script:
   ```bash
   # swap-to-light.sh
   # Swap dark colors with light equivalents
   
   # nord0 (dark bg) -> nord6 (light bg)
   find src-light -name "*.css" -exec sed -i 's/#2e3440/#eceff4/g' {} \;
   
   # nord4 (light text) -> nord0 (dark text)
   find src-light -name "*.css" -exec sed -i 's/#d8dee9/#2e3440/g' {} \;
   
   # Adjust other colors as needed...
   ```

3. Update `index.theme`:
   ```ini
   [Desktop Entry]
   Name=Hentai-Senpai-Light
   ```

4. Install:
   ```bash
   ./install.sh -n Hentai-Senpai-Light
   ```

### Creating Accent Variants

Create different accent color variants:

```bash
# Create green accent variant
cp -r src src-green

# Replace blue accent with green
find src-green -name "*.css" -exec sed -i 's/#5e81ac/#a3be8c/g' {} \;
find src-green -name "*.css" -exec sed -i 's/#81a1c1/#8fbcbb/g' {} \;

# Update name
sed -i 's/Hentai-Senpai/Hentai-Senpai-Green/g' src-green/index.theme

# Install
./install.sh -n Hentai-Senpai-Green
```

---

## Advanced Customization

### Custom CSS Overrides

Create a user stylesheet that loads after the theme:

1. Create `~/.config/gtk-3.0/gtk.css`:
   ```css
   /* Your custom overrides */
   button {
       font-weight: bold;
   }
   ```

2. For GTK4, create `~/.config/gtk-4.0/gtk.css`:
   ```css
   /* Your custom overrides */
   button {
       font-weight: bold;
   }
   ```

### GNOME Shell Extensions

Install extensions that complement the theme:

- **Blur My Shell** — Adds blur to transparent elements
- **Rounded Window Corners** — Ensures all windows have rounded corners
- **User Themes** — Required for Shell theming

---

## Testing Changes

### Quick Test

1. Make your changes
2. Run `./install.sh --update`
3. Apply: `./apply-theme.sh`
4. Test in an application

### GTK Inspector

Use GTK Inspector to test changes live:

```bash
# Enable GTK inspector
GTK_DEBUG=interactive my-app

# Or set globally
gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true
# Then press Ctrl+Shift+I in any GTK app
```

---

## Restoring Defaults

If something goes wrong:

```bash
# Restore from backup
cp -r ~/.themes/Hentai-Senpai-backup/* ~/.themes/Hentai-Senpai/

# Or reinstall completely
./install.sh --uninstall
./install.sh --update
```

---

## Related Documentation

- [Installation Guide](INSTALLATION.md)
- [Troubleshooting Guide](TROUBLESHOOTING.md)
- [Color Palette Reference](COLOR_PALETTE.md)

---

[← Back to Documentation Home](HOME.md) | [Docs Index](README.md) | [Main README](../README.md)
