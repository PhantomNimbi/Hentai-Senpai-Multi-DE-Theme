# Troubleshooting Guide

Common issues and their solutions for the Hentai-Senpai theme.

## Table of Contents

- [GTK4/Libadwaita Apps Not Themed](#gtk4libadwaita-apps-not-themed)
- [Flatpak Apps Not Themed](#flatpak-apps-not-themed)
- [GNOME Shell Theme Not Applied](#gnome-shell-theme-not-applied)
- [Dock Not Styled](#dock-not-styled)
- [Theme Not Appearing in Settings](#theme-not-appearing-in-settings)
- [Colors Look Wrong](#colors-look-wrong)
- [Performance Issues](#performance-issues)

---

## GTK4/Libadwaita Apps Not Themed

### Problem
Modern GTK4 applications (like Settings, Files, etc.) don't use the theme and show default Adwaita styling.

### Solution

1. Run the libadwaita fix:
   ```bash
   ./install.sh -l
   ```

2. Log out and log back in (required for changes to take effect)

### Alternative Manual Fix

If the script doesn't work:

```bash
# Create gtk-4.0 config directory
mkdir -p ~/.config/gtk-4.0

# Copy theme CSS
cp ~/.themes/Hentai-Senpai/gtk-4.0/gtk.css ~/.config/gtk-4.0/
cp ~/.themes/Hentai-Senpai/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/
```

### Why This Happens

GTK4 apps using libadwaita look for CSS in `~/.config/gtk-4.0/` instead of the themes directory. This is a security feature of modern GTK.

---

## Flatpak Apps Not Themed

### Problem
Flatpak applications (Spotify, Discord, etc.) don't respect the theme.

### Solution

1. Run the Flatpak fix:
   ```bash
   ./install.sh -f
   ```

2. Restart Flatpak apps

### Alternative Manual Fix

```bash
# Allow Flatpak apps to access themes
flatpak override --user --filesystem=xdg-config/gtk-4.0:ro
flatpak override --user --filesystem=xdg-data/themes:ro
flatpak override --user --env=GTK_THEME=Hentai-Senpai
```

### Why This Happens

Flatpak apps run in a sandbox and can't access system themes by default. The fix creates overrides that grant read-only access.

---

## GNOME Shell Theme Not Applied

### Problem
The top panel, menus, and popovers use default styling instead of the theme.

### Solution

1. Install the User Themes extension:
   ```bash
   # Via GNOME Extensions website
   # Visit: https://extensions.gnome.org/extension/19/user-themes/
   
   # Or via command line (if available)
   gnome-extensions install user-theme@gnome-shell-extensions.gcampax.github.com
   ```

2. Enable the extension:
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

3. Apply the theme:
   ```bash
   gsettings set org.gnome.shell.extensions.user-theme name "Hentai-Senpai"
   ```

4. Restart GNOME Shell:
   - Press `Alt+F2`
   - Type `r` and press Enter
   - Or log out and back in

### Why This Happens

GNOME Shell theming requires the User Themes extension to be installed and enabled.

---

## Dock Not Styled

### Problem
The dock (Dash-to-Dock, Ubuntu Dock, or Plank) doesn't match the theme.

### Solution

1. Run the dock fix:
   ```bash
   # For transparent dock (default)
   ./install.sh --dock
   
   # For solid dock
   ./install.sh --dock solid
   ```

2. For Plank specifically:
   ```bash
   plank --preferences
   ```
   Then select "Hentai-Senpai-Transparent" from the theme dropdown.

### GNOME Shell Dock Not Updating

If using the built-in dock (Dash-to-Dock extension), you may need to restart GNOME Shell:

```bash
killall gnome-shell
```

---

## Theme Not Appearing in Settings

### Problem
The theme doesn't show up in your desktop environment's theme settings.

### Solution

1. Verify installation:
   ```bash
   ls -la ~/.themes/Hentai-Senpai/
   ```

2. If not present, reinstall:
   ```bash
   ./install.sh --update
   ```

3. Check if themes directory is correct:
   - User themes: `~/.themes/`
   - System themes: `/usr/share/themes/`

4. Restart your session:
   - Log out and log back in
   - Or restart the settings daemon:
     ```bash
     # For GNOME
     killall gnome-settings-daemon
     
     # For Cinnamon
     cinnamon-settings-daemon &
     ```

---

## Colors Look Wrong

### Problem
Colors appear incorrect or washed out.

### Possible Causes & Solutions

#### 1. Color Profile Issues

Some displays may render colors differently. This is usually a monitor/display issue, not a theme issue.

#### 2. Multiple Themes Conflicting

Old theme files may be cached:

```bash
# Clear GTK cache
rm -rf ~/.cache/gtk-*

# Clear icon cache
gtk-update-icon-cache -f ~/.icons/* 2>/dev/null || true
```

#### 3. Incorrect Color Definitions

If you've modified the theme, ensure CSS syntax is correct:
- Colors must be valid hex codes (e.g., `#2e3440`)
- CSS variables must be properly defined

---

## Performance Issues

### Problem
UI feels slow or laggy after applying the theme.

### Solutions

#### 1. Disable Animations

Some DEs allow disabling animations:

```bash
# GNOME
gsettings set org.gnome.desktop.interface enable-animations false

# Re-enable with:
gsettings set org.gnome.desktop.interface enable-animations true
```

#### 2. Reduce Transparency

The theme uses transparency effects. If performance is poor:

1. Edit the theme CSS to remove `background-alpha` or `opacity` properties
2. Or use a different compositor settings

#### 3. Hardware Acceleration

Ensure your graphics drivers are properly installed and hardware acceleration is enabled.

---

## Still Having Issues?

If none of these solutions work:

1. Check if the theme is properly installed:
   ```bash
   ls ~/.themes/Hentai-Senpai/
   ```

2. Check GTK version:
   ```bash
   gtk-launch --version
   ```

3. Check for error messages when running install script:
   ```bash
   ./install.sh --update 2>&1 | tee install.log
   ```

4. Try a clean install:
   ```bash
   ./install.sh --uninstall
   ./install.sh --update -l -f
   ```

---

## Related Documentation

- [Installation Guide](INSTALLATION.md)
- [Customization Guide](CUSTOMIZATION.md)
- [Color Palette Reference](COLOR_PALETTE.md)
