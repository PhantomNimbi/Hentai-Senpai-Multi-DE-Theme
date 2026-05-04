# Color Palette Reference

> 🌐 **Languages:** English | [日本語](COLOR_PALETTE.ja.md) | [Español](COLOR_PALETTE.es.md) | [Français](COLOR_PALETTE.fr.md) | [Deutsch](COLOR_PALETTE.de.md) | [中文](COLOR_PALETTE.zh.md) | [한국어](COLOR_PALETTE.ko.md) | [Русский](COLOR_PALETTE.ru.md) | [Português](COLOR_PALETTE.pt.md)

Complete reference for the Nord color palette used in the Hentai-Senpai theme.

## Overview

The theme uses the [Nord color palette](https://www.nordtheme.com/), an Arctic-inspired palette designed for clarity and comfort.

---

## Color Groups

### Polar Night (Backgrounds)

| Color | Hex Code | Usage |
|-------|----------|-------|
| **nord0** | `#2e3440` | Main background, window background |
| **nord1** | `#3b4252` | Secondary background, cards, panels |
| **nord2** | `#434c5e` | Tertiary background, hover states |
| **nord3** | `#4c566a` | Borders, dividers, subtle highlights |

### Snow Storm (Text)

| Color | Hex Code | Usage |
|-------|----------|-------|
| **nord4** | `#d8dee9` | Primary text, headings |
| **nord5** | `#e5e9f0` | Secondary text, labels |
| **nord6** | `#eceff4` | Highlight text, selected items |

### Frost (Accents)

| Color | Hex Code | Usage |
|-------|----------|-------|
| **nord7** | `#8fbcbb` | Teal accent, special highlights |
| **nord8** | `#88c0d0` | Light blue accent, info states |
| **nord9** | `#81a1c1` | Blue accent, links |
| **nord10** | `#5e81ac` | **Primary accent**, main theme color |

### Aurora (Semantic Colors)

| Color | Hex Code | Usage |
|-------|----------|-------|
| **nord11** | `#bf616a` | Error, danger, destructive actions |
| **nord12** | `#d08770` | Orange accent, warnings (secondary) |
| **nord13** | `#ebcb8b` | Warning, attention states |
| **nord14** | `#a3be8c` | Success, positive actions, green |
| **nord15** | `#b48ead` | Purple accent, special elements |

---

## Theme Application

### Primary Colors

| Element | Color | Hex |
|---------|-------|-----|
| Window Background | nord0 | `#2e3440` |
| Surface/Card Background | nord1 | `#3b4252` |
| Primary Accent | nord10 | `#5e81ac` |
| Primary Text | nord4 | `#d8dee9` |
| Secondary Text | nord5 | `#e5e9f0` |

### State Colors

| State | Color | Hex |
|-------|-------|-----|
| Success | nord14 | `#a3be8c` |
| Warning | nord13 | `#ebcb8b` |
| Error | nord11 | `#bf616a` |
| Info | nord8 | `#88c0d0` |

### Interactive Elements

| Element | Default | Hover | Active |
|---------|---------|-------|--------|
| Buttons | nord1 | nord2 | nord10 |
| Links | nord9 | nord8 | nord9 |
| Selection | nord2 | - | nord10 |
| Borders | nord3 | nord2 | nord10 |

---

## Visual Preview

```
Polar Night (Dark Backgrounds)
████████████████
#2e3440  nord0
#3b4252  nord1
#434c5e  nord2
#4c566a  nord3

Snow Storm (Light Text)
████████████████
#d8dee9  nord4
#e5e9f0  nord5
#eceff4  nord6

Frost (Blue Accents)
████████████████
#8fbcbb  nord7
#88c0d0  nord8
#81a1c1  nord9
#5e81ac  nord10  ← Primary

Aurora (Semantic)
████████████████
#bf616a  nord11  Error
#d08770  nord12  Orange
#ebcb8b  nord13  Warning
#a3be8c  nord14  Success
#b48ead  nord15  Purple
```

---

## CSS Variables

The theme defines these CSS variables for GTK4:

```css
@define-color accent_bg_color #5e81ac;
@define-color accent_fg_color white;
@define-color window_bg_color #2e3440;
@define-color view_bg_color #3b4252;
@define-color headerbar_bg_color #3b4252;
@define-color card_bg_color #3b4252;
@define-color popover_bg_color rgba(59, 66, 82, 0.95);
```

---

## Usage in Customization

When customizing the theme, use these colors to maintain consistency:

### Example: Custom Button

```css
.my-custom-button {
    background-color: #3b4252;  /* nord1 */
    color: #d8dee9;             /* nord4 */
    border: 1px solid #4c566a;  /* nord3 */
}

.my-custom-button:hover {
    background-color: #434c5e;  /* nord2 */
}

.my-custom-button:active {
    background-color: #5e81ac;  /* nord10 */
    color: white;
}
```

### Example: Custom Widget

```css
.my-widget {
    background-color: #2e3440;  /* nord0 */
    color: #e5e9f0;             /* nord5 */
}

.my-widget.success {
    color: #a3be8c;             /* nord14 */
}

.my-widget.error {
    color: #bf616a;             /* nord11 */
}
```

---

## Color Blind Accessibility

The Nord palette was designed with accessibility in mind:

- **Deuteranopia (green-blind)**: nord14 (green) and nord10 (blue) are distinguishable
- **Protanopia (red-blind)**: nord11 (red) and nord10 (blue) have different brightness
- **Tritanopia (blue-blind)**: Colors maintain sufficient contrast

All text meets WCAG AA standards for contrast ratios.

---

## Related Documentation

- [Installation Guide](INSTALLATION.md)
- [Troubleshooting Guide](TROUBLESHOOTING.md)
- [Customization Guide](CUSTOMIZATION.md)

## External Resources

- [Nord Theme Official Site](https://www.nordtheme.com/)
- [Nord Color Swatches](https://www.nordtheme.com/docs/colors-and-palettes)

---

[← Back to Documentation Home](HOME.md) | [Docs Index](README.md) | [Main README](../README.md)
