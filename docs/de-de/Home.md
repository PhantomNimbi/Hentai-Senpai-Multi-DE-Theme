<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Sprache</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Home" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-fr-fr" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-de-de" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-it-it" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Home-ru-ru" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Hentai-Senpai Theme

Ein schönes dunkles GTK-Theme basierend auf Orchis mit Nord-Farben. Dieses Theme bringt ein modernes, zusammenhängendes Erscheinungsbild auf Ihren Linux-Desktop mit sorgfältig ausgewählten Farbschemata, die angenehm für die Augen bei langen Codiersitzungen oder täglicher Nutzung sind.

![Hero-Screenshot](../../assets/screenshots/hero.png)

## Voraussetzungen

Vor der Installation stellen Sie sicher, dass Sie haben:

- **GTK-Bibliotheken**: GTK 2, GTK 3 und GTK 4 Entwicklungsbibliotheken
- **Git**: Zum Klonen des Repositories
- **Sass-Compiler**: Entweder `sassc` (empfohlen) oder `dart-sass`
- **Linux-System**: Jede Distribution mit GTK-basierter Desktop-Umgebung (GNOME, Cinnamon, XFCE, Budgie, MATE, etc.)
- **Festplattenspeicher**: Etwa 50MB freier Speicherplatz

### Abhängigkeiten installieren (Ubuntu/Debian):
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### Abhängigkeiten installieren (Fedora):
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### Abhängigkeiten installieren (Arch):
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## Schnellstart

Der schnellste Weg zu starten:

```bash
# Grundlegende Installation
./install.sh

# Vollständige Installation mit allen Korrekturen und Optionen
./install.sh --update -l -f --dock

# Theme anwenden
./scripts/apply.sh
```

### Häufige Einzeiler

```bash
# Klonen und installieren in einem Befehl
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# Bestehende Installation aktualisieren
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## Installationsoptionen

| Option | Beschreibung |
|--------|--------------|
| `--update` | Theme aktualisieren/neuinstallieren (bewahrt Anpassungen) |
| `-l, --libadwaita` | GTK4/libadwaita-Anwendungen-Themierung korrigieren |
| `-f, --flatpak` | Flatpak-Sandbox-Anwendungen-Themierung korrigieren |
| `--dock [TYP]` | Dock-Theme anwenden (transparent, solide oder blur) |
| `-w, --wallpapers` | Theme-Hintergrundbilder installieren und anwenden |
| `-d, --dest VERZ` | Benutzerdefiniertes Installationsverzeichnis (Standard: ~/.themes) |
| `-t, --theme VARIANTE` | Bestimmte Farbvariante installieren |
| `-c, --color VARIANTE` | Bestimmte Akzentfarbe installieren |
| `-s, --size GRÖSSE` | Bestimmte Größenvariante installieren (standard, kompakt) |
| `-h, --help` | Detaillierte Hilfemeldung anzeigen |

### Beispiele:

```bash
# Mit transparentem Dock und allen Korrekturen installieren
./install.sh -l -f --dock transparent

# Im systemweiten Verzeichnis installieren
sudo ./install.sh -d /usr/share/themes

# Nur dunkle Variante mit blauem Akzent installieren
./install.sh -t dark -c blue
```

## Häufige Probleme

### Theme wird nicht angewendet?
- **GNOME-Benutzer**: Aktivieren Sie die "Benutzer-Themes"-Erweiterung in GNOME Extensions
- **Andere DEs**: Stellen Sie sicher, dass eine kompatible Theme-Engine installiert ist
- Versuchen Sie sich ab- und wieder anzumelden, oder starten Sie Ihre Desktop-Umgebung neu

### Flatpak-Anwendungen haben kein Theme?
Führen Sie das Installationsskript mit der `--flatpak`-Flag aus:
```bash
./install.sh -f
```

### GTK4/libadwaita-Anwendungen sehen anders aus?
Wenden Sie die libadwaita-Korrektur an:
```bash
./install.sh -l
```

### Fehlende Symbole?
Installieren Sie eines dieser empfohlenen Symbol-Themes:
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## Funktionen

- **Dunkle & Elegante Nord-Farben**: Basierend auf der beliebten Nord-Farbpalette für ein komfortables Seherlebnis
- **Material Design Prinzipien**: Moderne, saubere Oberfläche nach den Google Material Design-Richtlinien
- **Multi-DE Unterstützung**: Funktioniert mit GNOME, Cinnamon, XFCE, Budgie, MATE und anderen GTK-basierten Desktop-Umgebungen
- **Vollständige GTK-Unterstützung**: Deckt GTK 2, GTK 3, GTK 4, GNOME Shell und Fensterdekorationen ab
- **Moderne GTK4/libadwaita Unterstützung**: Volle Kompatibilität mit den neuesten GTK4-Anwendungen
- **Flatpak Ready**: Nahtlose Thematisierung von Flatpak-Sandbox-Anwendungen
- **Anpassbar**: Mehrere Farbvarianten, Größen und Akzentfarben verfügbar
- **Dock-Themes**: Optionale transparente, solide oder blur-Dock-Stilisierung
- **Hintergrundbild-Sammlung**: Kuratierte Hintergrundbilder, die perfekt zum Theme passen

## Mitwirken

Wir begrüßen Beiträge aus der Community! So können Sie helfen:

- **Einen Bug gefunden?** [Melden Sie ihn auf GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - Bitte fügen Sie Screenshots und Systemdetails bei
- **Einen Vorschlag?** [Eröffnen Sie eine GitHub-Diskussion](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - Teilen Sie Ihre Verbesserungsideen
- **Möchten Sie helfen?** Schauen Sie sich unseren [Mitwirkenden-Guide](Mitwirken) an - Erfahren Sie, wie Sie Pull Requests einreichen, Bugs melden und Code beitragen

## Schnelllinks

- [Installationsanleitung](Installationsanleitung) - Detaillierte Installationsanweisungen
- [Fehlerbehebung](Fehlerbehebung) - Lösungen für häufige Probleme
- [Anpassung](Anpassung) - Wie man das Theme anpasst
- [Farbpalette](Farbpalette) - Referenz der Theme-Farben
- [Mitwirken](Mitwirken) - Wie man zum Projekt beiträgt

## Auf GitHub ansehen

[Auf GitHub ansehen](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
