# Fehlerbehebung

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Sprache</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Troubleshooting" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Resolution-de-Problemes" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Fehlerbehebung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Risoluzione-Problemi" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Ustranenie-nepoladok" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Häufige Probleme und Lösungen für das Hentai-Senpai GTK-Theme.

## Inhaltsverzeichnis

- [Theme wird nicht angewendet](#theme-wird-nicht-angewendet)
- [Symbole werden nicht korrekt angezeigt](#symbole-werden-nicht-korrekt-angezeigt)
- [Flatpak-Apps sind nicht gethemt](#flatpak-apps-sind-nicht-gethemt)
- [Build-Fehler](#build-fehler)
- [GTK4/libadwaita Apps sehen anders aus](#gtk4libadwaita-apps-sehen-anders-aus)
- [Leistungsprobleme](#leistungsprobleme)
- [Hilfe erhalten](#hilfe-erhalten)

## Theme wird nicht angewendet

### Problem
Das Theme erscheint nicht in den Einstellungen oder wird nach der Auswahl nicht angewendet.

### Lösungen

1. **Installationsort überprüfen:**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **Korrekte Installation überprüfen:**
   ```bash
   # Sollte die Theme-Dateien anzeigen
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **Sitzung neu starten:**
   - Ausloggen und wieder einloggen
   - Oder Desktop-Umgebung neu starten

4. **Für GNOME - User Themes Erweiterung überprüfen:**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   Falls nicht aktiviert:
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## Symbole werden nicht korrekt angezeigt

### Problem
Symbole erscheinen defekt oder als Standardsystemsymbole.

### Lösungen

1. **Kompatibles Symbol-Theme installieren:**
   - Empfohlen: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme), oder [Nordic](https://github.com/EliverLara/Nordic)

2. **Symbol-Theme Installation überprüfen:**
   ```bash
   ls ~/.icons/  # oder /usr/share/icons/
   ```

3. **Symbol-Theme** in Ihren Desktop-Umgebungseinstellungen anwenden.

## Flatpak-Apps sind nicht gethemt

### Problem
Flatpak-Anwendungen verwenden das Standard-Adwaita-Theme anstelle von Hentai-Senpai.

### Lösungen

1. **Flatpak Zugriff auf Themes gewähren:**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Flatpak-Theme-Paket installieren:**
   ```bash
   ./install.sh -f
   ```

3. **GTK-Theme für Flatpak festlegen:**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Flatpak-Anwendungen neu starten**, damit die Änderungen wirksam werden.

## Build-Fehler

### Problem
Fehler während der Theme-Installation oder beim Kompilieren.

### Lösungen

1. **Sass Compiler installieren:**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **Fehlende Abhängigkeiten überprüfen:**
   ```bash
   # Überprüfen, ob sassc installiert ist
   which sassc
   sassc --version
   ```

3. **Bereinigen und neu bauen:**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## GTK4/libadwaita Apps sehen anders aus

### Problem
GTK4 oder libadwaita Anwendungen passen nicht perfekt zum Theme.

### Lösungen

1. **libadwaita-Verlinkung aktivieren:**
   ```bash
   ./install.sh -l
   ```

2. **Hinweis:** GTK4/libadwaita Apps haben by Design begrenzte Theme-Unterstützung. Einige visuelle Unterschiede sind zu erwarten.

## Leistungsprobleme

### Problem
Das System fühlt sich nach der Theme-Anwendung langsamer an.

### Lösungen

1. **Animationen deaktivieren** (falls gewünscht):
   - GNOME: `gsettings set org.gnome.desktop.interface enable-animations false`

2. **Hohe CPU-Auslastung** durch Theme-Prozesse überprüfen.

3. **Leichtere Variante** verwenden, falls verfügbar.

## Hilfe erhalten

Falls Ihr Problem hier nicht aufgeführt ist:

1. **Bestehende Issues durchsuchen:**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **Neues Issue erstellen** mit:
   - Ihrer Distribution und Version
   - Desktop-Umgebung und Version
   - Schritten zur Reproduktion des Problems
   - Screenshots (falls zutreffend)
   - Fehlermeldungen (falls vorhanden)

3. **Schauen Sie in der [Installationsanleitung](Installationsanleitung)** nach korrekten Einrichtungsanweisungen.
