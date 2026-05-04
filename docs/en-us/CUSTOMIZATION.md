# Customization

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Language</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Customization" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Customization-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

How to customize the Hentai-Senpai GTK Theme to match your preferences.

## Table of Contents

- [Color Variants](#color-variants)
- [Manual Customization](#manual-customization)
- [Creating Custom Variants](#creating-custom-variants)
- [User Overrides](#user-overrides)
- [Desktop Environment Tweaks](#desktop-environment-tweaks)

## Color Variants

The theme comes with different color options. Use the install script to select variants:

```bash
# List available variants
./install.sh --help
```

### Available Variants

| Variant | Description | Best For |
|---------|-------------|----------|
| `default` | Standard Nord dark | General use |
| `blackness` | Deeper black background | OLED displays |

## Manual Customization

### Editing Theme Files

Edit the CSS files directly in your theme installation:

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # GTK2 configuration
├── gtk-3.0/gtk.css        # GTK3 styles
├── gtk-4.0/gtk.css        # GTK4 styles
└── gnome-shell/gnome-shell.css  # GNOME Shell styles
```

**⚠️ Warning:** Direct edits will be lost when updating the theme. Use [User Overrides](#user-overrides) for persistent changes.

### Key CSS Variables

Common variables you can modify:

```css
/* Background colors */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* Accent colors */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## Creating Custom Variants

To create your own color variant:

1. **Copy the source files:**
   ```bash
   cp -r src src-custom
   ```

2. **Edit color definitions:**
   - Open `src-custom/gtk-3.0/gtk.css`
   - Modify color variables at the top

3. **Rebuild the theme:**
   ```bash
   ./install.sh -d ~/.themes -n My-Custom-Variant
   ```

## User Overrides

Create persistent customizations that survive theme updates.

### GTK3 Overrides

Create or edit:
```bash
~/.config/gtk-3.0/gtk.css
```

Example:
```css
/* Make all buttons rounded */
button {
    border-radius: 8px;
}

/* Change selection color */
*:selected {
    background-color: #BF616A;
}
```

### GTK4 Overrides

Create or edit:
```bash
~/.config/gtk-4.0/gtk.css
```

Example:
```css
/* Larger padding for GTK4 */
button {
    padding: 8px 16px;
}
```

## Desktop Environment Tweaks

### GNOME Tweaks

Install GNOME Tweaks for additional options:

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**Recommended settings:**
- **Themes > Legacy Applications**: Hentai-Senpai
- **Themes > Shell**: Hentai-Senpai
- **Themes > Icons**: Papirus-Dark or Nordic

### XFCE Tweaks

1. Open **Settings > Appearance**
2. Set **Style**: Hentai-Senpai
3. Set **Icons**: Your preferred icon theme
4. Go to **Window Manager > Style**: Hentai-Senpai

### Cinnamon Tweaks

1. Right-click desktop → **Desktop Settings**
2. Set **Desktop theme**: Hentai-Senpai
3. Customize individual components:
   - **Controls**: Hentai-Senpai
   - **Desktop**: Your preference
   - **Icons**: Your preference
   - **Mouse Pointer**: Your preference

## Advanced Customization

### Changing Window Button Layout

Edit `metacity-theme-1.xml` for window decorations:

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### Customizing Shell Elements

For GNOME Shell modifications:

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

Common modifications:
- Panel height
- Menu styling
- Calendar appearance

## Tips for Better Results

1. **Use consistent icon themes** with the Nord color palette
2. **Match terminal colors** to the theme (see [Color Palette](Color-Palette))
3. **Test changes incrementally** - modify one thing at a time
4. **Keep backups** of working configurations

## Sharing Your Customizations

Created something great? Consider:
- Sharing screenshots in [Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- Submitting improvements via [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)
