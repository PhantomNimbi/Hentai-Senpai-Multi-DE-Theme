# Troubleshooting

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Language</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Troubleshooting" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Troubleshooting-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Common issues and solutions for the Hentai-Senpai GTK Theme.

## Table of Contents

- [Theme Not Applying](#theme-not-applying)
- [Icons Not Showing Correctly](#icons-not-showing-correctly)
- [Flatpak Apps Not Themed](#flatpak-apps-not-themed)
- [Build Errors](#build-errors)
- [GTK4/libadwaita Apps Look Different](#gtk4libadwaita-apps-look-different)
- [Performance Issues](#performance-issues)
- [Getting Help](#getting-help)

## Theme Not Applying

### Problem
The theme doesn't appear in settings or doesn't apply after selection.

### Solutions

1. **Verify installation location:**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **Check for proper installation:**
   ```bash
   # Should show the theme files
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **Restart your session:**
   - Log out and log back in
   - Or restart the desktop environment

4. **For GNOME - Check User Themes extension:**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   If not enabled:
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## Icons Not Showing Correctly

### Problem
Icons appear broken or as default system icons.

### Solutions

1. **Install a compatible icon theme:**
   - Recommended: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme), or [Nordic](https://github.com/EliverLara/Nordic)

2. **Verify icon theme installation:**
   ```bash
   ls ~/.icons/  # or /usr/share/icons/
   ```

3. **Apply icon theme** in your desktop environment settings.

## Flatpak Apps Not Themed

### Problem
Flatpak applications use the default Adwaita theme instead of Hentai-Senpai.

### Solutions

1. **Grant Flatpak access to themes:**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Install Flatpak theme package:**
   ```bash
   ./install.sh -f
   ```

3. **Set GTK theme for Flatpak:**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Restart Flatpak applications** for changes to take effect.

## Build Errors

### Problem
Errors during theme installation or building.

### Solutions

1. **Install Sass compiler:**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **Check for missing dependencies:**
   ```bash
   # Verify sassc is installed
   which sassc
   sassc --version
   ```

3. **Clean and rebuild:**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## GTK4/libadwaita Apps Look Different

### Problem
GTK4 or libadwaita applications don't match the theme perfectly.

### Solutions

1. **Enable libadwaita linking:**
   ```bash
   ./install.sh -l
   ```

2. **Note:** GTK4/libadwaita apps have limited theming support by design. Some visual differences are expected.

## Performance Issues

### Problem
System feels slower after applying the theme.

### Solutions

1. **Disable animations** (if desired):
   - GNOME: `gsettings set org.gnome.desktop.interface enable-animations false`

2. **Check for high CPU usage** from theme processes.

3. **Use a lighter variant** if available.

## Getting Help

If your issue isn't listed here:

1. **Search existing issues:**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **Create a new issue** with:
   - Your distribution and version
   - Desktop environment and version
   - Steps to reproduce the problem
   - Screenshots (if applicable)
   - Error messages (if any)

3. **Check the [Installation Guide](Installation-Guide)** for proper setup instructions.
