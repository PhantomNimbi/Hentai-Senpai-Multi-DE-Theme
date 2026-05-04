# Anpassung

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Sprache</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Customization" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Personnalisation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Anpassung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizzazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Nastrojka" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Wie Sie das Hentai-Senpai GTK-Theme an Ihre Vorlieben anpassen können.

## Inhaltsverzeichnis

- [Farbvarianten](#farbvarianten)
- [Manuelle Anpassung](#manuelle-anpassung)
- [Benutzerdefinierte Varianten erstellen](#benutzerdefinierte-varianten-erstellen)
- [Benutzer-Overrides](#benutzer-overrides)
- [Desktop-Umgebung Tweaks](#desktop-umgebung-tweaks)

## Farbvarianten

Das Theme kommt mit verschiedenen Farboptionen. Verwenden Sie das Installationsskript, um Varianten auszuwählen:

```bash
# Verfügbare Varianten auflisten
./install.sh --help
```

### Verfügbare Varianten

| Variante | Beschreibung | Am besten für |
|----------|--------------|---------------|
| `default` | Standard Nord dunkel | Allgemeine Nutzung |
| `blackness` | Tiefer schwarzer Hintergrund | OLED-Displays |

## Manuelle Anpassung

### Theme-Dateien bearbeiten

Bearbeiten Sie die CSS-Dateien direkt in Ihrer Theme-Installation:

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # GTK2 Konfiguration
├── gtk-3.0/gtk.css        # GTK3 Styles
├── gtk-4.0/gtk.css        # GTK4 Styles
└── gnome-shell/gnome-shell.css  # GNOME Shell Styles
```

**⚠️ Warnung:** Direkte Änderungen gehen bei Theme-Updates verloren. Verwenden Sie [Benutzer-Overrides](#benutzer-overrides) für persistente Änderungen.

### Wichtige CSS-Variablen

Häufige Variablen, die Sie ändern können:

```css
/* Hintergrundfarben */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* Akzentfarben */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## Benutzerdefinierte Varianten erstellen

Um Ihre eigene Farbvariante zu erstellen:

1. **Quelldateien kopieren:**
   ```bash
   cp -r src src-custom
   ```

2. **Farbdefinitionen bearbeiten:**
   - Öffnen Sie `src-custom/gtk-3.0/gtk.css`
   - Ändern Sie die Farbvariablen oben

3. **Theme neu bauen:**
   ```bash
   ./install.sh -d ~/.themes -n Meine-Benutzerdefinierte-Variante
   ```

## Benutzer-Overrides

Erstellen Sie persistente Anpassungen, die Theme-Updates überleben.

### GTK3 Overrides

Erstellen oder bearbeiten Sie:
```bash
~/.config/gtk-3.0/gtk.css
```

Beispiel:
```css
/* Alle Buttons abgerundet machen */
button {
    border-radius: 8px;
}

/* Auswahlfarbe ändern */
*:selected {
    background-color: #BF616A;
}
```

### GTK4 Overrides

Erstellen oder bearbeiten Sie:
```bash
~/.config/gtk-4.0/gtk.css
```

Beispiel:
```css
/* Größerer Padding für GTK4 */
button {
    padding: 8px 16px;
}
```

## Desktop-Umgebung Tweaks

### GNOME Tweaks

Installieren Sie GNOME Tweaks für zusätzliche Optionen:

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**Empfohlene Einstellungen:**
- **Erscheinungsbild > Legacy-Anwendungen**: Hentai-Senpai
- **Erscheinungsbild > Shell**: Hentai-Senpai
- **Erscheinungsbild > Symbole**: Papirus-Dark oder Nordic

### XFCE Tweaks

1. Öffnen Sie **Einstellungen > Erscheinungsbild**
2. Setzen Sie **Stil**: Hentai-Senpai
3. Setzen Sie **Symbole**: Ihr bevorzugtes Symbol-Theme
4. Gehen Sie zu **Fenstermanager > Stil**: Hentai-Senpai

### Cinnamon Tweaks

1. Rechtsklick auf Desktop → **Desktopeinstellungen**
2. Setzen Sie **Desktop-Theme**: Hentai-Senpai
3. Passen Sie einzelne Komponenten an:
   - **Steuerelemente**: Hentai-Senpai
   - **Desktop**: Ihre Präferenz
   - **Symbole**: Ihre Präferenz
   - **Mauszeiger**: Ihre Präferenz

## Erweiterte Anpassung

### Fensterbutton-Layout ändern

Bearbeiten Sie `metacity-theme-1.xml` für Fensterdekorationen:

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### Shell-Elemente anpassen

Für GNOME Shell Modifikationen:

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

Häufige Modifikationen:
- Panel-Höhe
- Menü-Styling
- Kalender-Erscheinungsbild

## Tipps für bessere Ergebnisse

1. **Verwenden Sie konsistente Symbol-Themes** mit der Nord-Farbpalette
2. **Passen Sie Terminal-Farben** an das Theme an (siehe [Farbpalette](Farbpalette))
3. **Testen Sie Änderungen inkrementell** - ändern Sie eine Sache nach der anderen
4. **Behalten Sie Backups** funktionierender Konfigurationen

## Ihre Anpassungen teilen

Etwas Großartiges erstellt? Erwägen Sie:
- Screenshots in [Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) teilen
- Verbesserungen via [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls) einreichen
