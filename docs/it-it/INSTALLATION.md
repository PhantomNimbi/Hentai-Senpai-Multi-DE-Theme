# Guida Installazione

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Lingua</summary>
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

Questa guida ti aiuterà a installare il tema GTK Hentai-Senpai sul tuo sistema Linux.

## Indice

- [Prerequisiti](#prerequisiti)
- [Installazione Rapida](#installazione-rapida)
- [Opzioni Installazione](#opzioni-installazione)
- [Specifico Ambiente Desktop](#specifico-ambiente-desktop)
- [Supporto Flatpak](#supporto-flatpak)
- [Disinstallazione](#disinstallazione)

## Prerequisiti

Prima di installare, assicurati di avere:

- **Librerie GTK**: GTK 2, GTK 3 e/o GTK 4 (a seconda del sistema)
- **Git**: Per clonare il repository
- **Compilatore Sass**: `sassc` o `dart-sass` (per compilare dai sorgenti)
- **Accesso root**: Solo per installazione system-wide

### Installazione Dipendenze

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

## Installazione Rapida

Il modo più veloce per installare:

```bash
# Clona il repository
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Installa il tema
./install.sh --update -l -f --dock

# Applica il tema
./apply-theme.sh
```

## Opzioni Installazione

Lo script di installazione supporta varie opzioni:

| Opzione | Descrizione |
|---------|-------------|
| `-d`, `--dest` | Imposta destinazione installazione (default: `~/.themes`) |
| `-n`, `--name` | Imposta nome tema (default: `Hentai-Senpai`) |
| `-l`, `--libadwaita` | Collega al tema libadwaita |
| `-f`, `--flatpak` | Installa tema Flatpak |
| `--dock` | Installa tema dock (Plank) |
| `-r`, `--remove` | Rimuovi temi installati |
| `--update` | Aggiorna installazione esistente |

### Esempi

**Installazione system-wide:**
```bash
sudo ./install.sh -d /usr/share/themes
```

**Nome tema personalizzato:**
```bash
./install.sh -n "Mio-Tema-Personalizzato"
```

**Installa con tutte le funzionalità:**
```bash
./install.sh -l -f --dock
```

**Rimuovi tema:**
```bash
./install.sh -r
```

## Specifico Ambiente Desktop

### GNOME

Dopo l'installazione, attiva il tema:

```bash
# Abilita estensione User Themes (se non già abilitata)
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Applica tema
./apply-theme.sh
```

Oppure imposta manualmente tramite **Impostazioni > Aspetto**.

### Cinnamon

Vai su **Impostazioni di Sistema > Temi** e seleziona `Hentai-Senpai`.

### XFCE

1. Vai su **Impostazioni > Aspetto**
2. Seleziona `Hentai-Senpai` dall'elenco
3. Vai su **Gestore Finestre** e seleziona il tema anche lì

### MATE

Vai su **Sistema > Preferenze > Aspetto** e seleziona il tema.

### Budgie

Vai su **Impostazioni > Desktop > Aspetto** e seleziona il tema.

## Supporto Flatpak

Per tematizzare le applicazioni Flatpak:

```bash
# Consenti alle app Flatpak di accedere al tema
flatpak override --filesystem=$HOME/.themes

# Installa tema Flatpak (durante l'installazione)
./install.sh -f
```

**Nota:** Potrebbe essere necessario riavviare le applicazioni Flatpak affinché le modifiche abbiano effetto.

## Disinstallazione

Per rimuovere il tema:

```bash
./install.sh -r
```

Oppure elimina manualmente:
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## Passi Successivi

- Leggi la [Guida Personalizzazione](Personalizzazione) per personalizzare il tuo tema
- Controlla la [Risoluzione Problemi](Risoluzione-Problemi) se riscontri problemi
- Visualizza la [Palette Colori](Palette-Colori) per i colori del tema
