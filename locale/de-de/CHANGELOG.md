<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Sprache</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;"><strong>🇩🇪 Deutsch</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../ko-kr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇰🇷 한국어</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Änderungsprotokoll

Alle wichtigen Änderungen am Hentai-Senpai GTK Theme-Projekt werden in dieser Datei dokumentiert.

Das Format basiert auf [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
und dieses Projekt hält sich an [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unveröffentlicht]

### Hinzugefügt

- **GitHub Issue-Vorlagen**
  - Bug-Report-Vorlage mit Umgebungs-Checkliste
  - Feature-Request-Vorlage mit Anwendungsfall-Abschnitten
  - Fragen/Support-Vorlage
  - Konfigurationsdatei mit Kontaktlinks
- **Beitragsrichtlinien**
  - Umfassende `docs/CONTRIBUTING.md` mit:
    - Entwicklungseinrichtungsanweisungen
    - Code-Stil-Richtlinien für CSS und Shell-Skripte
    - Commit-Message-Konventionen
    - Pull-Request-Prozess
    - Testverfahren
    - Community-Richtlinien
- **Verbesserte Dokumentation**
  - `docs/HOME.md` als umfassende Dokumentations-Landingpage hinzugefügt
  - `docs/README.md` zur einfachen Navigation vereinfacht
  - Alle Dokumentationsdateien mit konsistentem Formatierung und Querverweisen aktualisiert
- **Übersetzungsunterstützung**
  - Übersetzungsleiste zu allen Markdown-Dokumentationsdateien hinzugefügt
  - Unterstützung für 9 Sprachen: Englisch, Japanisch, Spanisch, Französisch, Deutsch, Chinesisch, Koreanisch, Russisch, Portugiesisch
- **Social-Media-Integration**
  - Teilen-Buttons für Twitter/X, Reddit, Facebook, LinkedIn, Mastodon und Telegram
  - Status-Shields, die Version, Lizenz, Stars, Mitwirkende und Issues anzeigen
- **Mehrsprachige Dokumentation**
  - Docs in lokale Ordner (en-us, pt-br, es-es, fr-fr, de-de, it-it, ja-jp, zh-cn, ru-ru) umstrukturiert
  - Vollständige Übersetzungen für 9 Sprachen
  - Sprachauswahl-Dropdowns auf allen Dokumentationsseiten
  - GitHub Actions-Workflow aktualisiert, um alle 9 Sprachen zu unterstützen
- **Galerie-Seite**
  - Gallery.md erstellt, die Theme-Vorschauen und Hintergrundbilder zeigt
  - Zeigt preview-1.png und preview-2.png Bilder
  - Zeigt alle 6 verfügbaren Hintergrundbilder
  - In allen 9 Sprachen verfügbar
  - Behoben: Gallery.md-Dateien wurden tatsächlich in allen Locale-Ordnern erstellt
  - Behoben: Vorschaubild-Zuweisungen korrigiert (preview-2.png = Desktop, preview-1.png = Anwendungen)
  - Behoben: Hintergrundbildbeschreibung korrigiert (minimalistisch, monochromatische Farben, Ecchi-Themen)
- **GitHub Discussions**
  - Umfassende Diskussionskategorien erstellt: Allgemein, Showcase, Q&A, Ideen, Entwicklung, Ankündigungen
  - Diskussionsvorlagen für jede Kategorie hinzugefügt
  - DISCUSSION_GUIDE.md mit Nutzungsanweisungen erstellt
  - Best Practices und Community-Richtlinien definiert
  - In separaten `discussions`-Branch für Vorlagenverwaltung verschoben
  - setup-discussions.yml-Workflow erstellt, um Posts aus Vorlagen zu generieren

### Geändert

- **Dokumentationsstruktur**: Von flacher Dateistruktur zu lokalbasierten Ordnern verschoben
- **Vorschaubilder**: SVG-Vorschaubilder entfernt, nur PNG-Vorschauen beibehalten
- **Wiki-Workflow**: Aktualisiert, um lokalebasierte Dokumentationsstruktur mit 9 Sprachen zu verarbeiten
- **Skript-Organisation**: `apply-theme.sh` in `apply.sh` umbenannt und in `scripts/`-Verzeichnis verschoben
  - Alle Referenzen in Dokumentation und Code aktualisiert
  - Alle Skripte im `scripts/`-Verzeichnis konsolidiert

### Geändert

- **Dokumentationsrestrukturierung**:
  - `docs/README.md` dient jetzt als einfacher Navigationsindex
  - `docs/HOME.md` bietet umfassende Dokumentationsübersicht
  - Alle internen Dokumentationslinks für Konsistenz aktualisiert
- **README-Verbesserungen**:
  - Sprachübersetzungsleiste hinzugefügt
  - Social-Media-Teilen-Buttons hinzugefügt
  - GitHub-Status-Shields hinzugefügt
  - Beitragsbereich mit Link zu Richtlinien erweitert
- **Navigations-Updates**:
  - Beitragsrichtlinie zu allen Dokumentationsnavigationen hinzugefügt
  - Footer-Links in allen Docs für Konsistenz aktualisiert

### Behoben

- Dokumentationslink-Konsistenz über alle Markdown-Dateien
- Installationsanleitung Formatierung und Klarheit verbessert
- Querverweise zwischen Dokumentationsdateien

## [1.0.0] - 2026-05-03

### Hinzugefügt

- **Erstveröffentlichung** von Hentai-Senpai Theme
- Vollständige GTK-Theme-Unterstützung:
  - GTK 2.0 mit vollständigem Widget-Styling und Assets
  - GTK 3.0 mit umfassendem CSS-Theming
  - GTK 4.0 mit modernem CSS und benutzerdefinierten Eigenschaften
- **GNOME Shell 40+** komplettes Theme einschließlich:
  - Panel-Styling mit Transparenzunterstützung
  - Übersichts- und App-Raster-Theming
  - Benachrichtigungs- und Kalender-Styling
  - Systemmenüs und Popovers
  - Fenstervorschauen und Alt-Tab
- **Cinnamon** Desktop-Umgebungsunterstützung mit Panel- und Menü-Theming
- **XFWM4** Fenstermanager-Theme
- **Metacity** Fensterdekorationen-Unterstützung
- **Nord-Farbpalette** Integration:
  - **Polar Night** Hintergründe (`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - **Snow Storm** Textfarben (`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - **Frost** Akzentfarben (`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - **Aurora** semantische Farben (`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- **Material Design** Prinzipien:
  - 12px abgerundete Ecken für Buttons, Karten und Eingaben
  - 20px Border-Radius für Popovers
  - Kreisförmige Checkboxen und Radio-Buttons (9999px Radius)
  - Elevation-Schatten und Tiefeneffekte
  - Ripple-Effekte auf interaktiven Elementen
- **Installationsskript** (`install.sh`) mit umfassenden Optionen:
  - Installations- und Deinstallationsfunktionalität
  - Aktualisierungs-/Neuinstallationsfähigkeit
  - Benutzerdefinierte Ziel- und Namensoptionen
  - Libadwaita-Fix für GTK4-Anwendungen
  - Flatpak-Theme-Fix für Sandbox-Anwendungen
  - Dock-Theme-Styling (transparente und solide Varianten)
  - Hintergrundbild-Installation
  - Abhängigkeitsprüfung mit Auto-Installation
  - Systeminformationen und Kompatibilitätsanzeige
- **Theme-Anwendungsskript** (`scripts/apply.sh`) für automatische Theme-Aktivierung
- **Transparentes Plank Dock-Theme** mit ordnungsgemäßer Nord-Farbintegration
- **Umfassende Dokumentation**:
  - Installationsanleitung mit detaillierten Optionen
  - Troubleshooting-Guide für häufige Probleme
  - Farbpalettenreferenz mit Nutzungsbeispielen
  - Anpassungsanleitung zum Personalisieren des Themes
- **Hintergrundbild-Sammlung** mit Nord-inspirierten Designs

### Theme-Komponenten

| Komponente | Beschreibung |
|-----------|-------------|
| **GTK 2.0** | Vollständiges Widget-Styling mit Bild-Assets |
| **GTK 3.0** | Vollständiges CSS-Theming mit allen Widgets |
| **GTK 4.0** | Modernes CSS mit benutzerdefinierten Eigenschaften und Variablen |
| **GNOME Shell** | Komplettes Shell-Theme mit allen UI-Elementen |
| **Cinnamon** | Desktop- und Panel-Theming |
| **XFWM4** | Fensterdekorationen für XFCE |
| **Metacity** | Fensterdekorationen für MATE und andere |
| **Plank** | Transparentes Dock-Theme |

### Unterstützte Desktop-Umgebungen

- GNOME 40+
- Cinnamon 4.0+
- XFCE (mit xfwm4)
- Budgie 10.5+
- MATE 1.24+

[Unveröffentlicht]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
