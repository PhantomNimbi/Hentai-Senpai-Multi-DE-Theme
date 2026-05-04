# Farbpalette

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Sprache</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Color-Palette" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-de-Couleurs" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Farbpalette" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-Colori" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Tsvetovaya-palitra" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Das Hentai-Senpai Theme verwendet die [Nord Farbpalette](https://www.nordtheme.com/), ein polar-inspiriertes Farbschema, entworfen für Klarheit und Eleganz.

## Inhaltsverzeichnis

- [Nord Farben](#nord-farben)
- [Theme Verwendung](#theme-verwendung)
- [Terminal Farben](#terminal-farben)
- [Farbharmonien](#farbharmonien)

## Nord Farben

### Polar Night (Dunkle Hintergründe)

Die dunklen Hintergrundfarben bilden das Fundament der dunklen Ästhetik des Themes.

| Name | Hex | RGB | Verwendung |
|------|-----|-----|------------|
| **Nord0** | `#2E3440` | 46, 52, 64 | Primärer Hintergrund |
| **Nord1** | `#3B4252` | 59, 66, 82 | Hellerer Hintergrund, Karten |
| **Nord2** | `#434C5E` | 67, 76, 94 | Auswahlhintergrund |
| **Nord3** | `#4C566A` | 76, 86, 106 | Kommentare, deaktivierter Text |

### Snow Storm (Heller Text)

Diese Farben werden für Text und helle Elemente verwendet.

| Name | Hex | RGB | Verwendung |
|------|-----|-----|------------|
| **Nord4** | `#D8DEE9` | 216, 222, 233 | Primärer Text |
| **Nord5** | `#E5E9F0` | 229, 233, 240 | Sekundärer Text |
| **Nord6** | `#ECEFF4` | 236, 239, 244 | Hellster Text, Highlights |

### Frost (Blautöne)

Die Blautöne bieten die Hauptakzentfarben.

| Name | Hex | RGB | Verwendung |
|------|-----|-----|------------|
| **Nord7** | `#8FBCBB` | 143, 188, 187 | Erfolgszustände |
| **Nord8** | `#88C0D0` | 136, 192, 208 | Primärer Akzent, Info |
| **Nord9** | `#81A1C1` | 129, 161, 193 | Links, sekundärer Akzent |
| **Nord10** | `#5E81AC` | 94, 129, 172 | Tertiärer Akzent |

### Aurora (Akzentfarben)

Lebendige Farben für Fehler, Warnungen und besondere Elemente.

| Name | Hex | RGB | Verwendung |
|------|-----|-----|------------|
| **Nord11** | `#BF616A` | 191, 97, 106 | Fehler, destruktive Aktionen |
| **Nord12** | `#D08770` | 208, 135, 112 | Warnungen, Anmerkungen |
| **Nord13** | `#EBCB8B` | 235, 203, 139 | Highlights, Typen |
| **Nord14** | `#A3BE8C` | 163, 190, 140 | Erfolg, Methoden |
| **Nord15** | `#B48EAD` | 180, 142, 173 | Zahlen, Spezial |

## Theme Verwendung

### Hintergrund-Hierarchie

```
Nord0 (#2E3440)  →  Hauptfenster-Hintergrund
    ↓
Nord1 (#3B4252)  →  Sekundärer Hintergrund, Panels
    ↓
Nord2 (#434C5E)  →  Hover-Zustände, Auswahlen
    ↓
Nord3 (#4C566A)  →  Ränder, Trennlinien
```

### Textkontrast

```
Nord6 (#ECEFF4)  →  Überschriften, wichtiger Text
    ↓
Nord5 (#E5E9F0)  →  Fließtext
    ↓
Nord4 (#D8DEE9)  →  Sekundärer Text
    ↓
Nord3 (#4C566A)  →  Deaktivierter Text, Platzhalter
```

### Akzent-Verwendung

```
Nord8 (#88C0D0)  →  Primäre Buttons, Links
Nord9 (#81A1C1)  →  Sekundäre Buttons
Nord7 (#8FBCBB)  →  Erfolgszustände
Nord14 (#A3BE8C) →  Positives Feedback
Nord11 (#BF616A) →  Fehler, destruktiv
Nord12 (#D08770) →  Warnungen
Nord13 (#EBCB8B) →  Highlights
```

## Terminal Farben

Für ein konsistentes Terminal-Erlebnis konfigurieren Sie Ihr Terminal mit diesen Farben:

### Farbschema

| Farbnummer | Hex | Verwendung |
|------------|-----|------------|
| 0 (Schwarz) | `#3B4252` | Schwarz |
| 1 (Rot) | `#BF616A` | Rot |
| 2 (Grün) | `#A3BE8C` | Grün |
| 3 (Gelb) | `#EBCB8B` | Gelb |
| 4 (Blau) | `#81A1C1` | Blau |
| 5 (Magenta) | `#B48EAD` | Magenta |
| 6 (Cyan) | `#88C0D0` | Cyan |
| 7 (Weiß) | `#E5E9F0` | Weiß |
| 8 (Helles Schwarz) | `#4C566A` | Helles Schwarz |
| 9 (Helles Rot) | `#BF616A` | Helles Rot |
| 10 (Helles Grün) | `#A3BE8C` | Helles Grün |
| 11 (Helles Gelb) | `#EBCB8B` | Helles Gelb |
| 12 (Helles Blau) | `#81A1C1` | Helles Blau |
| 13 (Helles Magenta) | `#B48EAD` | Helles Magenta |
| 14 (Helles Cyan) | `#8FBCBB` | Helles Cyan |
| 15 (Helles Weiß) | `#ECEFF4` | Helles Weiß |

### Hintergrund & Vordergrund

- **Hintergrund**: `#2E3440` (Nord0)
- **Vordergrund**: `#D8DEE9` (Nord4)
- **Cursor**: `#D8DEE9` (Nord4)
- **Auswahlhintergrund**: `#434C5E` (Nord2)
- **Auswahlvordergrund**: `#D8DEE9` (Nord4)

## Farbharmonien

### Monochromatisch
Verwendung von Variationen von Nord0-Nord3 für Tiefe:
```
Hintergrund: Nord0
Karten: Nord1
Erhöht: Nord2
Ränder: Nord3
```

### Komplementäre Akzente
Kombination von Frost mit Aurora Farben:
```
Primär: Nord8 (Cyan-Blau)
Komplement: Nord12 (Orange)
```

### Analog
Benachbarte Farben für weiche Übergänge:
```
Kalt: Nord9 → Nord10 (Blautöne)
Warm: Nord12 → Nord13 (Orange-Gelb)
```

## CSS Variablen

Verwenden Sie diese Variablen in Ihrem benutzerdefinierten CSS:

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

## Externe Ressourcen

- [Nord Theme Offiziell](https://www.nordtheme.com/)
- [Nord Farbreferenz](https://www.nordtheme.com/docs/colors-and-palettes)
- [Nord GitHub](https://github.com/arcticicestudio/nord)
