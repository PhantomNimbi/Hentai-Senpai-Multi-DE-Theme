# Mitwirken

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Sprache</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Contributing" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribution" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Mitwirken" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribuire" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Uchastie" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Vielen Dank für Ihr Interesse am Mitwirken am Hentai-Senpai GTK-Theme! 🎉

## Inhaltsverzeichnis

- [Wie man mitwirkt](#wie-man-mitwirkt)
- [Probleme melden](#probleme-melden)
- [Codestil](#codestil)
- [Dokumentation](#dokumentation)
- [Übersetzungen](#übersetzungen)
- [Entwicklungs-Setup](#entwicklungs-setup)

## Wie man mitwirkt

Es gibt viele Möglichkeiten, zu diesem Projekt beizutragen:

1. **Fehler melden** - Ein Problem gefunden? Lassen Sie es uns wissen!
2. **Funktionen vorschlagen** - Eine Idee? Wir würden sie gerne hören!
3. **Korrekturen einreichen** - Code-Verbesserungen sind immer willkommen
4. **Dokumentation verbessern** - Helfen Sie, die Dokumentation klarer zu machen
5. **Übersetzen** - Helfen Sie, das Theme global zugänglich zu machen
6. **Teilen** - Verbreiten Sie das Wort über das Theme

### Beitrags-Workflow

1. **Forken Sie das Repository** auf GitHub
2. **Erstellen Sie einen neuen Branch** für Ihre Funktion/Korrektur:
   ```bash
   git checkout -b feature/meine-neue-funktion
   # oder
   git checkout -b fix/problem-beschreibung
   ```
3. **Nehmen Sie Ihre Änderungen** mit klaren, fokussierten Commits vor
4. **Testen Sie Ihre Änderungen** gründlich
5. **Reichen Sie einen Pull Request** mit einer klaren Beschreibung ein

## Probleme melden

### Vor dem Melden

- [ ] Durchsuchen Sie bestehende [Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues), um Duplikate zu vermeiden
- [ ] Überprüfen Sie, ob das Problem in der neuesten Version besteht
- [ ] Versuchen Sie, das Problem zu isolieren

### Einen Fehlerbericht erstellen

Fügen Sie folgende Informationen ein:

| Feld | Beschreibung |
|------|--------------|
| **Titel** | Klarer, beschreibender Titel |
| **Beschreibung** | Detaillierte Beschreibung des Problems |
| **Schritte zur Reproduktion** | Nummerierte Schritte zum Nachvollziehen des Fehlers |
| **Erwartetes Verhalten** | Was passieren sollte |
| **Tatsächliches Verhalten** | Was tatsächlich passiert |
| **Screenshots** | Visuelle Beweise (falls zutreffend) |
| **Systeminfo** | OS, DE/WM, GTK-Version |

### Beispiel Fehlerbericht-Vorlage

```markdown
**Beschreibung:**
Theme wird nicht auf GTK4-Anwendungen angewendet

**Schritte zur Reproduktion:**
1. Theme mit `./install.sh` installieren
2. GTK4-Anwendung öffnen (z.B. GNOME Texteditor)
3. Standard Adwaita-Styling beobachten

**Erwartet:**
Anwendung sollte Hentai-Senpai Theme verwenden

**Tatsächlich:**
Anwendung verwendet Standard Adwaita Theme

**System:**
- OS: Ubuntu 22.04
- DE: GNOME 42
- GTK: 4.6
```

## Codestil

### CSS/Styling

- Verwenden Sie 2 Leerzeichen für Einrückung
- Gruppieren Sie zusammengehörige Eigenschaften
- Verwenden Sie aussagekräftige Variablennamen
- Kommentieren Sie komplexe Abschnitte

Beispiel:
```css
/* Primäre Button-Styling */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* Hover-Zustand */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### Shell-Skripte

- Verwenden Sie `#!/bin/bash` Shebang
- Alle Variablen in Anführungszeichen: `"$variable"`
- Verwenden Sie aussagekräftige Funktionsnamen
- Fügen Sie Kommentare für komplexe Logik hinzu

### Commit-Nachrichten

Folgen Sie dem Format konventioneller Commits:

```
type(scope): betreff

body (optional)

footer (optional)
```

**Typen:**
- `feat`: Neue Funktion
- `fix`: Fehlerkorrektur
- `docs`: Dokumentationsänderungen
- `style`: Codestil-Änderungen (Formatierung)
- `refactor`: Code-Refactoring
- `test`: Hinzufügen oder Aktualisieren von Tests
- `chore`: Wartungsaufgaben

**Beispiele:**
```
feat(gtk3): Unterstützung für abgerundete Ecken hinzufügen
fix(install): Pfadproblem auf Fedora beheben
docs(readme): Installationsanweisungen aktualisieren
```

## Dokumentation

### Dokumentation verbessern

Dokumentationsverbesserungen werden sehr geschätzt! Sie können:

- Tippfehler und Grammatik korrigieren
- Beispiele und Screenshots hinzufügen
- Verwirrende Abschnitte klarer machen
- Fehlende Informationen hinzufügen
- In andere Sprachen übersetzen

### Dokumentationsstruktur

```
docs/
├── INSTALLATION.md      # Installationsanleitung
├── TROUBLESHOOTING.md   # Problemlösung
├── CUSTOMIZATION.md     # Anpassungsanleitung
├── COLOR_PALETTE.md     # Farbreferenz
└── CONTRIBUTING.md      # Diese Datei
```

### Screenshots hinzufügen

Beim Hinzufügen visueller Dokumentation:

1. Verwenden Sie PNG-Format für Screenshots
2. Halten Sie Dateigrößen vernünftig (< 500KB)
3. Verwenden Sie beschreibende Dateinamen
4. Fokussieren Sie auf die spezifische Funktion

## Übersetzungen

### Dokumentation übersetzen

Um eine neue Sprachübersetzung hinzuzufügen:

1. **Englische Dateien kopieren:**
   ```bash
   cp docs/INSTALLATION.md docs/INSTALLATION-de.md
   ```

2. **Inhalt** in der neuen Datei übersetzen

3. **Übersetzungsleiste** im Workflow aktualisieren:
   - Bearbeiten Sie `.github/workflows/generate-wiki.yml`
   - Fügen Sie neue Sprache zur Home.md Übersetzungsleiste hinzu

4. **Unterstützte Sprachcodes:**
   | Code | Sprache |
   |------|---------|
   | `pt` | Portugiesisch |
   | `es` | Spanisch |
   | `fr` | Französisch |
   | `de` | Deutsch |
   | `it` | Italienisch |
   | `ja` | Japanisch |
   | `zh` | Chinesisch |

### Übersetzungstipps

- Behalten Sie technische Begriffe bei, wenn es keine direkte Übersetzung gibt
- Behalten Sie dieselbe Markdown-Struktur bei
- Aktualisieren Sie Links, um auf übersetzte Seiten zu verweisen
- Testen Sie das Rendering vor dem Einreichen

## Entwicklungs-Setup

### Voraussetzungen

```bash
# Erforderliche Tools installieren
sudo apt install git sassc inkscape optipng
```

### Aus dem Quellcode bauen

```bash
# Repository klonen
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Abhängigkeiten installieren
# (siehe Voraussetzungen oben)

# Theme bauen
./install.sh

# Lokal testen
./apply-theme.sh
```

### Projektstruktur

```
Hentai-Senpai-GTK-Theme/
├── src/                    # Quelldateien
│   ├── gtk-2.0/           # GTK2 Theme
│   ├── gtk-3.0/           # GTK3 Theme
│   ├── gtk-4.0/           # GTK4 Theme
│   ├── gnome-shell/       # GNOME Shell Theme
│   ├── cinnamon/          # Cinnamon Theme
│   ├── xfwm4/             # XFWM Theme
│   └── metacity-1/        # Metacity Theme
├── scripts/               # Build-Skripte
├── install.sh             # Hauptinstallateur
└── docs/                  # Dokumentation (dieser Branch)
```

## Fragen?

- **Allgemeine Fragen:** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **Fehlerberichte:** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **Direkter Kontakt:** Öffnen Sie ein Issue mit dem Label `question`

## Verhaltenskodex

- Seien Sie respektvoll und konstruktiv
- Konzentrieren Sie sich auf das Problem, nicht auf die Person
- Nehmen Sie konstruktive Kritik anstandslos an
- Helfen Sie, eine einladende Gemeinschaft zu schaffen

Vielen Dank für Ihren Beitrag! 💜
