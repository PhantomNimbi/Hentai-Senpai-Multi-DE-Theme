# Contribuire

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Lingua</summary>
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

Grazie per il tuo interesse nel contribuire al tema GTK Hentai-Senpai! 🎉

## Indice

- [Come Contribuire](#come-contribuire)
- [Segnalare Problemi](#segnalare-problemi)
- [Stile del Codice](#stile-del-codice)
- [Documentazione](#documentazione)
- [Traduzioni](#traduzioni)
- [Setup Sviluppo](#setup-sviluppo)

## Come Contribuire

Ci sono molti modi per contribuire a questo progetto:

1. **Segnala bug** - Hai trovato un problema? Faccelo sapere!
2. **Suggerisci funzionalità** - Hai un'idea? Ci piacerebbe sentirla!
3. **Invia correzioni** - Miglioramenti al codice sono sempre benvenuti
4. **Migliora documentazione** - Aiuta a rendere i documenti più chiari
5. **Traduci** - Aiuta a rendere il tema accessibile globalmente
6. **Condividi** - Diffondi la voce sul tema

### Workflow Contributi

1. **Forka il repository** su GitHub
2. **Crea un nuovo branch** per la tua funzionalità/correzione:
   ```bash
   git checkout -b feature/mia-nuova-funzionalita
   # o
   git checkout -b fix/descrizione-problema
   ```
3. **Apporta le tue modifiche** con commit chiari e mirati
4. **Testa le tue modifiche** accuratamente
5. **Invia una Pull Request** con una descrizione chiara

## Segnalare Problemi

### Prima di Segnalare

- [ ] Cerca [issue esistenti](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) per evitare duplicati
- [ ] Verifica se il problema esiste nell'ultima versione
- [ ] Prova a isolare il problema

### Creare una Segnalazione Bug

Includi le seguenti informazioni:

| Campo | Descrizione |
|-------|-------------|
| **Titolo** | Titolo chiaro e descrittivo |
| **Descrizione** | Descrizione dettagliata del problema |
| **Passaggi per Riprodurre** | Passaggi numerati per ricreare il bug |
| **Comportamento Atteso** | Cosa dovrebbe succedere |
| **Comportamento Attuale** | Cosa succede effettivamente |
| **Screenshot** | Prove visive (se applicabile) |
| **Info Sistema** | OS, DE/WM, versione GTK |

### Esempio Template Segnalazione Bug

```markdown
**Descrizione:**
Il tema non si applica alle applicazioni GTK4

**Passaggi per Riprodurre:**
1. Installa tema con `./install.sh`
2. Apri applicazione GTK4 (es. Editor Testi GNOME)
3. Osserva lo stile Adwaita predefinito

**Atteso:**
L'applicazione dovrebbe usare il tema Hentai-Senpai

**Attuale:**
L'applicazione usa il tema Adwaita predefinito

**Sistema:**
- OS: Ubuntu 22.04
- DE: GNOME 42
- GTK: 4.6
```

## Stile del Codice

### CSS/Styling

- Usa 2 spazi per l'indentazione
- Raggruppa proprietà correlate
- Usa nomi variabili significativi
- Commenta sezioni complesse

Esempio:
```css
/* Styling pulsante primario */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* Stato hover */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### Script Shell

- Usa shebang `#!/bin/bash`
- Metti tutte le variabili tra virgolette: `"$variable"`
- Usa nomi funzione significativi
- Aggiungi commenti per logica complessa

### Messaggi Commit

Segui il formato dei commit convenzionali:

```
type(scope): soggetto

body (opzionale)

footer (opzionale)
```

**Tipi:**
- `feat`: Nuova funzionalità
- `fix`: Correzione bug
- `docs`: Modifiche documentazione
- `style`: Modifiche stile codice (formattazione)
- `refactor`: Refactoring codice
- `test`: Aggiunta o aggiornamento test
- `chore`: Task di manutenzione

**Esempi:**
```
feat(gtk3): aggiungi supporto per angoli arrotondati
fix(install): risolvi problema percorso su Fedora
docs(readme): aggiorna istruzioni installazione
```

## Documentazione

### Migliorare la Documentazione

I miglioramenti alla documentazione sono molto apprezzati! Puoi:

- Correggere errori di battitura e grammatica
- Aggiungere esempi e screenshot
- Chiarire sezioni confuse
- Aggiungere informazioni mancanti
- Tradurre in altre lingue

### Struttura Documentazione

```
docs/
├── INSTALLATION.md      # Guida installazione
├── TROUBLESHOOTING.md   # Risoluzione problemi
├── CUSTOMIZATION.md     # Guida personalizzazione
├── COLOR_PALETTE.md     # Riferimento colori
└── CONTRIBUTING.md      # Questo file
```

### Aggiungere Screenshot

Quando aggiungi documentazione visiva:

1. Usa formato PNG per screenshot
2. Mantieni dimensioni file ragionevoli (< 500KB)
3. Usa nomi file descrittivi
4. Concentrati sulla funzionalità specifica

## Traduzioni

### Tradurre Documentazione

Per aggiungere una traduzione in una nuova lingua:

1. **Copia file inglesi:**
   ```bash
   cp docs/INSTALLATION.md docs/INSTALLATION-it.md
   ```

2. **Traduci contenuto** nel nuovo file

3. **Aggiorna barra traduzione** nel workflow:
   - Modifica `.github/workflows/generate-wiki.yml`
   - Aggiungi nuova lingua alla barra traduzione Home.md

4. **Codici lingua supportati:**
   | Codice | Lingua |
   |--------|--------|
   | `pt` | Portoghese |
   | `es` | Spagnolo |
   | `fr` | Francese |
   | `de` | Tedesco |
   | `it` | Italiano |
   | `ja` | Giapponese |
   | `zh` | Cinese |

### Consigli Traduzione

- Mantieni termini tecnici in inglese se non c'è traduzione diretta
- Mantieni la stessa struttura markdown
- Aggiorna link per puntare alle pagine tradotte
- Testa rendering prima di inviare

## Setup Sviluppo

### Prerequisiti

```bash
# Installa strumenti richiesti
sudo apt install git sassc inkscape optipng
```

### Compilare dai Sorgenti

```bash
# Clona repository
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Installa dipendenze
# (vedi sezione Prerequisiti sopra)

# Compila tema
./install.sh

# Testa localmente
./apply-theme.sh
```

### Struttura Progetto

```
Hentai-Senpai-GTK-Theme/
├── src/                    # File sorgente
│   ├── gtk-2.0/           # Tema GTK2
│   ├── gtk-3.0/           # Tema GTK3
│   ├── gtk-4.0/           # Tema GTK4
│   ├── gnome-shell/       # Tema GNOME Shell
│   ├── cinnamon/          # Tema Cinnamon
│   ├── xfwm4/             # Tema XFWM
│   └── metacity-1/        # Tema Metacity
├── scripts/               # Script build
├── install.sh             # Installer principale
└── docs/                  # Documentazione (questo branch)
```

## Domande?

- **Domande generali:** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **Segnalazioni bug:** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **Contatto diretto:** Apri un issue con etichetta `question`

## Codice di Condotta

- Sii rispettoso e costruttivo
- Concentrati sul problema, non sulla persona
- Accetta critiche costruttive con grazia
- Aiuta a creare una comunità accogliente

Grazie per il tuo contributo! 💜
