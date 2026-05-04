# Color Palette

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Language</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Color-Palette" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Color-Palette-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

The Hentai-Senpai theme uses the [Nord color palette](https://www.nordtheme.com/), a polar-inspired color scheme designed for clarity and elegance.

## Table of Contents

- [Nord Colors](#nord-colors)
- [Theme Usage](#theme-usage)
- [Terminal Colors](#terminal-colors)
- [Color Harmonies](#color-harmonies)

## Nord Colors

### Polar Night (Dark Backgrounds)

The dark background colors form the foundation of the theme's dark aesthetic.

| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| **Nord0** | `#2E3440` | 46, 52, 64 | Primary background |
| **Nord1** | `#3B4252` | 59, 66, 82 | Lighter background, cards |
| **Nord2** | `#434C5E` | 67, 76, 94 | Selection background |
| **Nord3** | `#4C566A` | 76, 86, 106 | Comments, disabled text |

### Snow Storm (Light Text)

These colors are used for text and bright elements.

| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| **Nord4** | `#D8DEE9` | 216, 222, 233 | Primary text |
| **Nord5** | `#E5E9F0` | 229, 233, 240 | Secondary text |
| **Nord6** | `#ECEFF4` | 236, 239, 244 | Brightest text, highlights |

### Frost (Blues)

The blue tones provide the main accent colors.

| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| **Nord7** | `#8FBCBB` | 143, 188, 187 | Success states |
| **Nord8** | `#88C0D0` | 136, 192, 208 | Primary accent, info |
| **Nord9** | `#81A1C1` | 129, 161, 193 | Links, secondary accent |
| **Nord10** | `#5E81AC` | 94, 129, 172 | Tertiary accent |

### Aurora (Accent Colors)

Vibrant colors for errors, warnings, and special elements.

| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| **Nord11** | `#BF616A` | 191, 97, 106 | Errors, destructive actions |
| **Nord12** | `#D08770` | 208, 135, 112 | Warnings, annotations |
| **Nord13** | `#EBCB8B` | 235, 203, 139 | Highlights, types |
| **Nord14** | `#A3BE8C` | 163, 190, 140 | Success, methods |
| **Nord15** | `#B48EAD` | 180, 142, 173 | Numbers, special |

## Theme Usage

### Background Hierarchy

```
Nord0 (#2E3440)  →  Main window background
    ↓
Nord1 (#3B4252)  →  Secondary background, panels
    ↓
Nord2 (#434C5E)  →  Hover states, selections
    ↓
Nord3 (#4C566A)  →  Borders, dividers
```

### Text Contrast

```
Nord6 (#ECEFF4)  →  Headings, important text
    ↓
Nord5 (#E5E9F0)  →  Body text
    ↓
Nord4 (#D8DEE9)  →  Secondary text
    ↓
Nord3 (#4C566A)  →  Disabled text, placeholders
```

### Accent Usage

```
Nord8 (#88C0D0)  →  Primary buttons, links
Nord9 (#81A1C1)  →  Secondary buttons
Nord7 (#8FBCBB)  →  Success states
Nord14 (#A3BE8C) →  Positive feedback
Nord11 (#BF616A) →  Errors, destructive
Nord12 (#D08770) →  Warnings
Nord13 (#EBCB8B) →  Highlights
```

## Terminal Colors

For a consistent terminal experience, configure your terminal with these colors:

### Color Scheme

| Color Number | Hex | Usage |
|-------------|-----|-------|
| 0 (Black) | `#3B4252` | Black |
| 1 (Red) | `#BF616A` | Red |
| 2 (Green) | `#A3BE8C` | Green |
| 3 (Yellow) | `#EBCB8B` | Yellow |
| 4 (Blue) | `#81A1C1` | Blue |
| 5 (Magenta) | `#B48EAD` | Magenta |
| 6 (Cyan) | `#88C0D0` | Cyan |
| 7 (White) | `#E5E9F0` | White |
| 8 (Bright Black) | `#4C566A` | Bright Black |
| 9 (Bright Red) | `#BF616A` | Bright Red |
| 10 (Bright Green) | `#A3BE8C` | Bright Green |
| 11 (Bright Yellow) | `#EBCB8B` | Bright Yellow |
| 12 (Bright Blue) | `#81A1C1` | Bright Blue |
| 13 (Bright Magenta) | `#B48EAD` | Bright Magenta |
| 14 (Bright Cyan) | `#8FBCBB` | Bright Cyan |
| 15 (Bright White) | `#ECEFF4` | Bright White |

### Background & Foreground

- **Background**: `#2E3440` (Nord0)
- **Foreground**: `#D8DEE9` (Nord4)
- **Cursor**: `#D8DEE9` (Nord4)
- **Selection Background**: `#434C5E` (Nord2)
- **Selection Foreground**: `#D8DEE9` (Nord4)

## Color Harmonies

### Monochromatic
Using variations of Nord0-Nord3 for depth:
```
Background: Nord0
Cards: Nord1
Elevated: Nord2
Borders: Nord3
```

### Complementary Accents
Pairing Frost with Aurora colors:
```
Primary: Nord8 (cyan-blue)
Complement: Nord12 (orange)
```

### Analogous
Adjacent colors for smooth transitions:
```
Cool: Nord9 → Nord10 (blue tones)
Warm: Nord12 → Nord13 (orange-yellow)
```

## CSS Variables

Use these variables in your custom CSS:

```css
/* Polar Night */
@define-color nord0 #2E3440;
@define-color nord1 #3B4252;
@define-color nord2 #434C5E;
@define-color nord3 #4C566A;

/* Snow Storm */
@define-color nord4 #D8DEE9;
@define-color nord5 #E5E9F0;
@define-color nord6 #ECEFF4;

/* Frost */
@define-color nord7 #8FBCBB;
@define-color nord8 #88C0D0;
@define-color nord9 #81A1C1;
@define-color nord10 #5E81AC;

/* Aurora */
@define-color nord11 #BF616A;
@define-color nord12 #D08770;
@define-color nord13 #EBCB8B;
@define-color nord14 #A3BE8C;
@define-color nord15 #B48EAD;
```

## External Resources

- [Nord Theme Official](https://www.nordtheme.com/)
- [Nord Color Reference](https://www.nordtheme.com/docs/colors-and-palettes)
- [Nord GitHub](https://github.com/arcticicestudio/nord)
