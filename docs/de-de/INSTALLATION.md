# Installationsanleitung

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Sprache</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Installation-Guide" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Guide-d-Installation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsanleitung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Guida-Installazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsguide-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Anleitung-zur-Installation-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Rukovodstvo-po-ustanovke" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Diese Anleitung hilft Ihnen bei der Installation des Hentai-Senpai GTK-Themes auf Ihrem Linux-System.

## Inhaltsverzeichnis

- [Voraussetzungen](#voraussetzungen)
- [Schnellinstallation](#schnellinstallation)
- [Installationsoptionen](#installationsoptionen)
- [Desktop-Umgebung Spezifisch](#desktop-umgebung-spezifisch)
- [Flatpak Unterstützung](#flatpak-unterstützung)
- [Deinstallation](#deinstallation)

## Voraussetzungen

Vor der Installation stellen Sie sicher, dass Sie haben:

- **GTK Bibliotheken**: GTK 2, GTK 3 und/oder GTK 4 (je nach System)
- **Git**: Zum Klonen des Repositories
- **Sass Compiler**: `sassc` oder `dart-sass` (zum Kompilieren aus dem Quellcode)
- **Root-Zugriff**: Nur bei systemweiter Installation

### Abhängigkeiten installieren

**Debian/Ubuntu:**
```bash
sudo apt install git sassc
```

**Fedora:**
```bash
sudo dnf install git sassc
```

**Arch Linux:**
```bash
sudo pacman -S git sassc
```

## Schnellinstallation

Der schnellste Weg zur Installation:

```bash
# Repository klonen
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Theme installieren
./install.sh --update -l -f --dock

# Theme anwenden
./apply-theme.sh
```

## Installationsoptionen

Das Installationsskript unterstützt verschiedene Optionen:

| Option | Beschreibung |
|--------|--------------|
| `-d`, `--dest` | Installationsziel festlegen (Standard: `~/.themes`) |
| `-n`, `--name` | Theme-Name festlegen (Standard: `Hentai-Senpai`) |
| `-l`, `--libadwaita` | Mit libadwaita-Theme verlinken |
| `-f`, `--flatpak` | Flatpak-Theme installieren |
| `--dock` | Dock-Theme installieren (Plank) |
| `-r`, `--remove` | Installierte Themes entfernen |
| `--update` | Bestehende Installation aktualisieren |

### Beispiele

**Systemweite Installation:**
```bash
sudo ./install.sh -d /usr/share/themes
```

**Benutzerdefinierter Theme-Name:**
```bash
./install.sh -n "Mein-Benutzerdefiniertes-Theme"
```

**Mit allen Funktionen installieren:**
```bash
./install.sh -l -f --dock
```

**Theme entfernen:**
```bash
./install.sh -r
```

## Desktop-Umgebung Spezifisch

### GNOME

Nach der Installation aktivieren Sie das Theme:

```bash
# User Themes Erweiterung aktivieren (falls nicht bereits aktiviert)
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Theme anwenden
./apply-theme.sh
```

Oder manuell über **Einstellungen > Erscheinungsbild** festlegen.

### Cinnamon

Gehen Sie zu **Systemeinstellungen > Themes** und wählen Sie `Hentai-Senpai`.

### XFCE

1. Gehen Sie zu **Einstellungen > Erscheinungsbild**
2. Wählen Sie `Hentai-Senpai` aus der Liste
3. Gehen Sie zu **Fenstermanager** und wählen Sie dort ebenfalls das Theme

### MATE

Gehen Sie zu **System > Einstellungen > Erscheinungsbild** und wählen Sie das Theme.

### Budgie

Gehen Sie zu **Einstellungen > Desktop > Erscheinungsbild** und wählen Sie das Theme.

## Flatpak Unterstützung

Um Flatpak-Anwendungen zu themen:

```bash
# Flatpak-Apps Zugriff auf das Theme erlauben
flatpak override --filesystem=$HOME/.themes

# Flatpak-Theme installieren (während der Installation)
./install.sh -f
```

**Hinweis:** Sie müssen Flatpak-Anwendungen möglicherweise neu starten, damit die Änderungen wirksam werden.

## Deinstallation

Um das Theme zu entfernen:

```bash
./install.sh -r
```

Oder manuell löschen:
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## Nächste Schritte

- Lesen Sie die [Anleitung zur Anpassung](Anpassung), um Ihr Theme zu personalisieren
- Schauen Sie bei [Fehlerbehebung](Fehlerbehebung) vorbei, wenn Sie Probleme haben
- Sehen Sie sich die [Farbpalette](Farbpalette) für Theme-Farben an
