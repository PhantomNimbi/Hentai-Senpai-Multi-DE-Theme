# Risoluzione Problemi

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Lingua</summary>
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

Problemi comuni e soluzioni per il tema GTK Hentai-Senpai.

## Indice

- [Tema Non Si Applica](#tema-non-si-applica)
- [Icone Non Visualizzate Correttamente](#icone-non-visualizzate-correttamente)
- [App Flatpak Non Tematizzate](#app-flatpak-non-tematizzate)
- [Errori di Build](#errori-di-build)
- [App GTK4/libadwaita Appaiono Diverse](#app-gtk4libadwaita-appaiono-diverse)
- [Problemi di Prestazioni](#problemi-di-prestazioni)
- [Ottenere Aiuto](#ottenere-aiuto)

## Tema Non Si Applica

### Problema
Il tema non appare nelle impostazioni o non si applica dopo la selezione.

### Soluzioni

1. **Verifica percorso installazione:**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **Verifica installazione corretta:**
   ```bash
   # Dovrebbe mostrare i file del tema
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **Riavvia la sessione:**
   - Disconnettiti e riconnettiti
   - Oppure riavvia l'ambiente desktop

4. **Per GNOME - Controlla estensione User Themes:**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   Se non abilitata:
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## Icone Non Visualizzate Correttamente

### Problema
Le icone appaiono rotte o come icone di sistema predefinite.

### Soluzioni

1. **Installa un tema icone compatibile:**
   - Consigliato: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme), o [Nordic](https://github.com/EliverLara/Nordic)

2. **Verifica installazione tema icone:**
   ```bash
   ls ~/.icons/  # o /usr/share/icons/
   ```

3. **Applica tema icone** nelle impostazioni del tuo ambiente desktop.

## App Flatpak Non Tematizzate

### Problema
Le applicazioni Flatpak usano il tema Adwaita predefinito invece di Hentai-Senpai.

### Soluzioni

1. **Concedi a Flatpak l'accesso ai temi:**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Installa pacchetto tema Flatpak:**
   ```bash
   ./install.sh -f
   ```

3. **Imposta tema GTK per Flatpak:**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Riavvia le applicazioni Flatpak** affinché le modifiche abbiano effetto.

## Errori di Build

### Problema
Errori durante l'installazione o la compilazione del tema.

### Soluzioni

1. **Installa compilatore Sass:**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **Controlla dipendenze mancanti:**
   ```bash
   # Verifica che sassc sia installato
   which sassc
   sassc --version
   ```

3. **Pulisci e ricompila:**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## App GTK4/libadwaita Appaiono Diverse

### Problema
Le applicazioni GTK4 o libadwaita non corrispondono perfettamente al tema.

### Soluzioni

1. **Abilita collegamento libadwaita:**
   ```bash
   ./install.sh -l
   ```

2. **Nota:** Le app GTK4/libadwaita hanno supporto teming limitato by design. Alcune differenze visive sono attese.

## Problemi di Prestazioni

### Problema
Il sistema sembra più lento dopo l'applicazione del tema.

### Soluzioni

1. **Disabilita animazioni** (se desiderato):
   - GNOME: `gsettings set org.gnome.desktop.interface enable-animations false`

2. **Controlla alto utilizzo CPU** dai processi del tema.

3. **Usa una variante più leggera** se disponibile.

## Ottenere Aiuto

Se il tuo problema non è elencato qui:

1. **Cerca issue esistenti:**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **Crea un nuovo issue** con:
   - La tua distribuzione e versione
   - Ambiente desktop e versione
   - Passaggi per riprodurre il problema
   - Screenshot (se applicabile)
   - Messaggi di errore (se presenti)

3. **Controlla la [Guida Installazione](Guida-Installazione)** per istruzioni di installazione corrette.
