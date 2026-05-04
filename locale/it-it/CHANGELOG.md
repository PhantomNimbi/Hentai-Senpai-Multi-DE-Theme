# Changelog

> 🌐 **Lingue:** [English](../en-us/CHANGELOG.md) | [日本語](../ja-jp/CHANGELOG.md) | [Español](../es-es/CHANGELOG.md) | [Français](../fr-fr/CHANGELOG.md) | [Deutsch](../de-de/CHANGELOG.md) | **Italiano** | [中文](../zh-cn/CHANGELOG.md) | [한국어](../ko-kr/CHANGELOG.md) | [Русский](../ru-ru/CHANGELOG.md) | [Português](../pt-br/CHANGELOG.md)

Tutte le modifiche significative al progetto Hentai-Senpai GTK Theme saranno documentate in questo file.

Il formato è basato su [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
e questo progetto aderisce a [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Non Rilasciato]

### Aggiunto

- **Modelli GitHub Issue**
  - Modello di segnalazione bug con checklist dell'ambiente
  - Modello di richiesta funzionalità con sezioni casi d'uso
  - Modello domande/supporto
  - File di configurazione con link di contatto
- **Linee Guida per i Contributi**
  - `docs/CONTRIBUTING.md` completo che include:
    - Istruzioni di configurazione sviluppo
    - Linee guida di stile del codice per CSS e script shell
    - Convenzioni messaggi di commit
    - Processo di pull request
    - Procedure di test
    - Linee guida della comunità
- **Documentazione Migliorata**
  - Aggiunto `docs/HOME.md` come pagina di destinazione documentazione completa
  - Semplificato `docs/README.md` per facile navigazione
  - Aggiornati tutti i file di documentazione con formattazione coerente e riferimenti incrociati
- **Supporto Traduzioni**
  - Aggiunta barra traduzioni a tutti i file markdown di documentazione
  - Supporto per 9 lingue: Inglese, Giapponese, Spagnolo, Francese, Tedesco, Cinese, Coreano, Russo, Portoghese
- **Integrazione Social Media**
  - Pulsanti condivisione per Twitter/X, Reddit, Facebook, LinkedIn, Mastodon e Telegram
  - Badge di stato che mostrano versione, licenza, stelle, contributori e issue
- **Documentazione Multilingue**
  - Ristrutturati docs in cartelle basate su locale (en-us, pt-br, es-es, fr-fr, de-de, it-it, ja-jp, zh-cn, ru-ru)
  - Traduzioni complete per 9 lingue
  - Menu a discesa selezione lingua su tutte le pagine di documentazione
  - Aggiornato workflow GitHub Actions per supportare tutte le 9 lingue
- **Pagina Galleria**
  - Creata Gallery.md che mostra anteprime tema e sfondi
  - Visualizza immagini preview-1.png e preview-2.png
  - Mostra tutti i 6 sfondi disponibili
  - Disponibile in tutte le 9 lingue
  - Corretto: Creati effettivamente i file Gallery.md in tutte le cartelle locale
  - Corretto: Corrette le assegnazioni immagini anteprima (preview-2.png = Desktop, preview-1.png = Applicazioni)
  - Corretto: Corretta la descrizione sfondi (minimalistici, colori monocromatici, temi ecchi)
- **GitHub Discussions**
  - Create categorie discussione complete: Generale, Vetrina, Q&A, Idee, Sviluppo, Annunci
  - Aggiunti modelli discussione per ogni categoria
  - Creato DISCUSSION_GUIDE.md con istruzioni uso
  - Definite best practice e linee guida comunità
  - Spostato su branch `discussions` separato per gestione modelli
  - Creato workflow setup-discussions.yml per generare post dai modelli

### Modificato

- **Struttura Documentazione**: Spostata da struttura file piatta a cartelle basate su locale
- **Immagini Anteprima**: Rimosse immagini anteprima SVG, mantenute solo anteprime PNG
- **Workflow Wiki**: Aggiornato per gestire struttura documentazione basata su locale con 9 lingue
- **Organizzazione Script**: Rinominato `apply-theme.sh` in `apply.sh` e spostato in directory `scripts/`
  - Aggiornati tutti i riferimenti in documentazione e codice
  - Consolidati tutti gli script nella directory `scripts/`

### Modificato

- **Ristrutturazione Documentazione**:
  - `docs/README.md` ora serve come indice di navigazione semplice
  - `docs/HOME.md` fornisce panoramica documentazione completa
  - Aggiornati tutti i link documentazione interni per coerenza
- **Miglioramenti README**:
  - Aggiunta barra traduzione lingue
  - Aggiunti pulsanti condivisione social media
  - Aggiunti badge stato GitHub
  - Sezione contributi migliorata con link alle linee guida
- **Aggiornamenti Navigazione**:
  - Aggiunta Guida Contributi a tutta la navigazione documentazione
  - Aggiornati link piè di pagina in tutti i documenti per coerenza

### Corretto

- Coerenza link documentazione in tutti i file markdown
- Miglioramenti formattazione e chiarezza guida installazione
- Link riferimento incrociato tra file documentazione

## [1.0.0] - 2026-05-03

### Aggiunto

- **Rilascio iniziale** di Hentai-Senpai Theme
- Supporto tema GTK completo:
  - GTK 2.0 con styling completo widget e risorse
  - GTK 3.0 con tematizzazione CSS completa
  - GTK 4.0 con CSS moderno e proprietà personalizzate
- Tema completo **GNOME Shell 40+** che include:
  - Styling pannello con supporto trasparenza
  - Tematizzazione panoramica e griglia applicazioni
  - Styling notifiche e calendario
  - Menu sistema e popover
  - Anteprime finestre e alt-tab
- Supporto ambiente desktop **Cinnamon** con tematizzazione pannello e menu
- Tema gestore finestre **XFWM4**
- Supporto decorazioni finestre **Metacity**
- Integrazione **palette colori Nord**:
  - Sfondi **Polar Night** (`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - Colori testo **Snow Storm** (`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - Colori accento **Frost** (`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - Colori semantici **Aurora** (`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- Principi **Material Design**:
  - Angoli arrotondati 12px per pulsanti, schede e input
  - Raggio bordo 20px per popover
  - Checkbox e radio button circolari (raggio 9999px)
  - Ombre elevazione ed effetti profondità
  - Effetti ripple su elementi interattivi
- **Script installazione** (`install.sh`) con opzioni complete:
  - Funzionalità installazione e disinstallazione
  - Capacità aggiornamento/reinstallazione
  - Opzioni destinazione e nome personalizzati
  - Correzione Libadwaita per applicazioni GTK4
  - Correzione tema Flatpak per app sandbox
  - Styling tema dock (varianti trasparente e solida)
  - Installazione sfondi
  - Controllo dipendenze con auto-installazione
  - Visualizzazione informazioni sistema e compatibilità
- **Script applicazione tema** (`scripts/apply.sh`) per attivazione automatica tema
- **Tema dock Plank trasparente** con integrazione appropriata colori Nord
- **Documentazione completa**:
  - Guida installazione con opzioni dettagliate
  - Guida risoluzione problemi per problemi comuni
  - Riferimento palette colori con esempi uso
  - Guida personalizzazione per personalizzare il tema
- **Collezione sfondi** con design ispirati a Nord

### Componenti del Tema

| Componente | Descrizione |
|-----------|-------------|
| **GTK 2.0** | Styling completo widget con risorse immagine |
| **GTK 3.0** | Tematizzazione CSS completa con tutti i widget |
| **GTK 4.0** | CSS moderno con proprietà personalizzate e variabili |
| **GNOME Shell** | Tema completo shell con tutti gli elementi UI |
| **Cinnamon** | Tematizzazione desktop e pannello |
| **XFWM4** | Decorazioni finestre per XFCE |
| **Metacity** | Decorazioni finestre per MATE e altri |
| **Plank** | Tema dock trasparente |

### Ambienti Desktop Supportati

- GNOME 40+
- Cinnamon 4.0+
- XFCE (con xfwm4)
- Budgie 10.5+
- MATE 1.24+

[Non Rilasciato]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
