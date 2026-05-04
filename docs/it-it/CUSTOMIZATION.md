# Personalizzazione

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Lingua</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Customization" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Personnalisation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Anpassung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizzazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Nastrojka" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Come personalizzare il tema GTK Hentai-Senpai secondo le tue preferenze.

## Indice

- [Varianti Colore](#varianti-colore)
- [Personalizzazione Manuale](#personalizzazione-manuale)
- [Creare Varianti Personalizzate](#creare-varianti-personalizzate)
- [Override Utente](#override-utente)
- [Tweaks Ambiente Desktop](#tweaks-ambiente-desktop)

## Varianti Colore

Il tema viene fornito con diverse opzioni di colore. Usa lo script di installazione per selezionare le varianti:

```bash
# Elenca varianti disponibili
./install.sh --help
```

### Varianti Disponibili

| Variante | Descrizione | Migliore Per |
|----------|-------------|--------------|
| `default` | Nord scuro standard | Uso generale |
| `blackness` | Sfondo nero più profondo | Display OLED |

## Personalizzazione Manuale

### Modifica File Tema

Modifica direttamente i file CSS nella tua installazione tema:

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # Configurazione GTK2
├── gtk-3.0/gtk.css        # Stili GTK3
├── gtk-4.0/gtk.css        # Stili GTK4
└── gnome-shell/gnome-shell.css  # Stili GNOME Shell
```

**⚠️ Avviso:** Le modifiche dirette andranno perse durante l'aggiornamento del tema. Usa [Override Utente](#override-utente) per modifiche persistenti.

### Variabili CSS Chiave

Variabili comuni che puoi modificare:

```css
/* Colori sfondo */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* Colori accento */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## Creare Varianti Personalizzate

Per creare la tua variante di colore:

1. **Copia i file sorgente:**
   ```bash
   cp -r src src-custom
   ```

2. **Modifica definizioni colore:**
   - Apri `src-custom/gtk-3.0/gtk.css`
   - Modifica le variabili colore in cima

3. **Ricompila il tema:**
   ```bash
   ./install.sh -d ~/.themes -n Mia-Variante-Personalizzata
   ```

## Override Utente

Crea personalizzazioni persistenti che sopravvivono agli aggiornamenti del tema.

### Override GTK3

Crea o modifica:
```bash
~/.config/gtk-3.0/gtk.css
```

Esempio:
```css
/* Rendi tutti i pulsanti arrotondati */
button {
    border-radius: 8px;
}

/* Cambia colore selezione */
*:selected {
    background-color: #BF616A;
}
```

### Override GTK4

Crea o modifica:
```bash
~/.config/gtk-4.0/gtk.css
```

Esempio:
```css
/* Padding maggiore per GTK4 */
button {
    padding: 8px 16px;
}
```

## Tweaks Ambiente Desktop

### Tweaks GNOME

Installa GNOME Tweaks per opzioni aggiuntive:

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**Impostazioni consigliate:**
- **Temi > Applicazioni legacy**: Hentai-Senpai
- **Temi > Shell**: Hentai-Senpai
- **Temi > Icone**: Papirus-Dark o Nordic

### Tweaks XFCE

1. Apri **Impostazioni > Aspetto**
2. Imposta **Stile**: Hentai-Senpai
3. Imposta **Icone**: Il tuo tema icone preferito
4. Vai su **Gestore Finestre > Stile**: Hentai-Senpai

### Tweaks Cinnamon

1. Tasto destro sul desktop → **Impostazioni Desktop**
2. Imposta **Tema desktop**: Hentai-Senpai
3. Personalizza componenti individuali:
   - **Controlli**: Hentai-Senpai
   - **Desktop**: Le tue preferenze
   - **Icone**: Le tue preferenze
   - **Puntatore mouse**: Le tue preferenze

## Personalizzazione Avanzata

### Cambia Layout Pulsanti Finestra

Modifica `metacity-theme-1.xml` per decorazioni finestre:

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### Personalizza Elementi Shell

Per modificazioni GNOME Shell:

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

Modifiche comuni:
- Altezza pannello
- Styling menu
- Aspetto calendario

## Consigli per Risultati Migliori

1. **Usa temi icone coerenti** con la palette colori Nord
2. **Abbina colori terminale** al tema (vedi [Palette Colori](Palette-Colori))
3. **Testa le modifiche incrementalmente** - modifica una cosa alla volta
4. **Tieni backup** delle configurazioni funzionanti

## Condividi le Tue Personalizzazioni

Creato qualcosa di fantastico? Considera:
- Condividere screenshot nelle [Discussioni](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- Inviare miglioramenti via [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)
