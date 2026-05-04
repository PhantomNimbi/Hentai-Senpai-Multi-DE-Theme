<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Lingua</summary>
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

# Tema Hentai-Senpai

Un bellissimo tema GTK scuro basato su Orchis con colori Nord. Questo tema porta un aspetto moderno e coeso al tuo desktop Linux con schemi di colori accuratamente selezionati che sono gradevoli per gli occhi durante lunghe sessioni di codifica o uso quotidiano.

![Screenshot Principale](../../assets/screenshots/hero.png)

## Requisiti

Prima di installare, assicurati di avere:

- **Librerie GTK**: Librerie di sviluppo GTK 2, GTK 3 e GTK 4
- **Git**: Per clonare il repository
- **Compilatore Sass**: `sassc` (consigliato) o `dart-sass`
- **Sistema Linux**: Qualsiasi distribuzione con ambiente desktop basato su GTK (GNOME, Cinnamon, XFCE, Budgie, MATE, ecc.)
- **Spazio su Disco**: Circa 50MB di spazio libero

### Installare dipendenze (Ubuntu/Debian):
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### Installare dipendenze (Fedora):
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### Installare dipendenze (Arch):
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## Avvio Rapido

Il modo più veloce per iniziare:

```bash
# Installazione di base
./install.sh

# Installazione completa con tutte le correzioni e opzioni
./install.sh --update -l -f --dock

# Applicare il tema
./scripts/apply.sh
```

### Comandi Comuni in Una Riga

```bash
# Clonare e installare in un unico comando
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# Aggiornare installazione esistente
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## Opzioni di Installazione

| Opzione | Descrizione |
|---------|-------------|
| `--update` | Aggiornare/reinstallare il tema (preserva le personalizzazioni) |
| `-l, --libadwaita` | Correggere la tematizzazione delle applicazioni GTK4/libadwaita |
| `-f, --flatpak` | Correggere la tematizzazione delle applicazioni Flatpak in sandbox |
| `--dock [TIPO]` | Applicare il tema del dock (trasparente, solido o blur) |
| `-w, --wallpapers` | Installare e applicare gli sfondi del tema |
| `-d, --dest DIR` | Directory di installazione personalizzata (predefinito: ~/.themes) |
| `-t, --theme VARIANTE` | Installare variante di colore specifica |
| `-c, --color VARIANTE` | Installare colore di accento specifico |
| `-s, --size DIMENSIONE` | Installare variante di dimensione specifica (standard, compatto) |
| `-h, --help` | Mostrare messaggio di aiuto dettagliato |

### Esempi:

```bash
# Installare con dock trasparente e tutte le correzioni
./install.sh -l -f --dock transparent

# Installare nella directory di sistema
sudo ./install.sh -d /usr/share/themes

# Installare solo variante scura con accento blu
./install.sh -t dark -c blue
```

## Problemi Comuni

### Il tema non si applica?
- **Utenti GNOME**: Abilita l'estensione "Temi Utente" in Estensioni GNOME
- **Altri DE**: Assicurati di avere un motore di tema compatibile installato
- Prova a disconnetterti e riconnetterti, o riavvia il tuo ambiente desktop

### Le applicazioni Flatpak non hanno il tema?
Esegui lo script di installazione con la flag `--flatpak`:
```bash
./install.sh -f
```

### Le applicazioni GTK4/libadwaita sembrano diverse?
Applica la correzione libadwaita:
```bash
./install.sh -l
```

### Icone mancanti?
Installa uno di questi temi di icone consigliati:
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## Caratteristiche

- **Colori Nord Scuri ed Eleganti**: Basato sulla popolare palette di colori Nord per un'esperienza visiva confortevole
- **Principi Material Design**: Interfaccia moderna e pulita seguendo le linee guida Material Design di Google
- **Supporto Multi-DE**: Funziona con GNOME, Cinnamon, XFCE, Budgie, MATE e altri ambienti desktop basati su GTK
- **Supporto GTK Completo**: Copre GTK 2, GTK 3, GTK 4, GNOME Shell e decorazioni finestre
- **Supporto Moderno GTK4/libadwaita**: Piena compatibilità con le applicazioni GTK4 più recenti
- **Pronto per Flatpak**: Tematizza le applicazioni Flatpak in sandbox in modo integrato
- **Personalizzabile**: Molteplici varianti di colori, dimensioni e colori di accento disponibili
- **Temi Dock**: Stilizzazione opzionale del dock trasparente, solido o blur
- **Collezione di Sfondi**: Sfondi selezionati che si abbinano perfettamente al tema

## Contribuire

Accogliamo con piacere i contributi dalla community! Ecco come puoi aiutare:

- **Hai trovato un bug?** [Segnalalo su GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - Per favore, includi screenshot e dettagli del sistema
- **Hai un suggerimento?** [Apri una Discussione su GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - Condividi le tue idee di miglioramento
- **Vuoi aiutare?** Consulta la nostra [Guida al Contribuire](Contribuire) - Impara come inviare pull request, segnalare bug e contribuire con il codice

## Link Rapidi

- [Guida Installazione](Guida-Installazione) - Istruzioni dettagliate di installazione
- [Risoluzione Problemi](Risoluzione-Problemi) - Soluzioni a problemi comuni
- [Personalizzazione](Personalizzazione) - Come personalizzare il tema
- [Palette Colori](Palette-Colori) - Riferimento colori del tema
- [Contribuire](Contribuire) - Come contribuire al progetto

## Vedi su GitHub

[Vedi su GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
