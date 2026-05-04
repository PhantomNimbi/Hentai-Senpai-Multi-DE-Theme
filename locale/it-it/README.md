<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Lingua</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../README.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/README.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/README.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/README.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/README.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/README.md" style="color: #88C0D0; text-decoration: none;"><strong>🇮🇹 Italiano</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/README.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/README.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/README.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Tema Hentai-Senpai

[![Version](https://img.shields.io/github/v/release/PhantomNimbi/Hentai-Senpai-GTK-Theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/blob/main/src/COPYING) [![Stars](https://img.shields.io/github/stars/PhantomNimbi/Hentai-Senpai-GTK-Theme?style=flat-square&color=yellow)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/stargazers)

Un bellissimo tema GTK scuro basato su [Orchis](https://github.com/vinceliuice/Orchis-theme) con l'elegante palette di colori [Nord](https://www.nordtheme.com/).

![Anteprima Tema](../../wallpapers/001.png)

## Caratteristiche

- **Scuro ed Elegante** — Sfondi blu-grigi profondi con contrasto confortevole
- **Colori Nord** — Schema di colori ispirato all'Artico progettato per chiarezza
- **Material Design** — Angoli arrotondati, ombre morbide, effetti ripple
- **Supporto Multi-DE** — GNOME, Cinnamon, XFCE, Budgie e MATE
- **Temitizzazione Completa** — GTK 2/3/4, GNOME Shell, decorazioni finestre, sfondi
- **GTK4 Moderno** — Supporto completo per applicazioni basate su libadwaita
- **Pronto per Flatpak** — Supporto tema per applicazioni in sandbox

## Avvio Rapido

```bash
# Installa con tutte le correzioni consigliate
./install.sh --update -l -f --dock

# Applica il tema
./scripts/apply.sh
```

## Requisiti

- GTK 3.20+ o GTK 4.0+
- GNOME Shell 40+ (per utenti GNOME)
- Bash 4.0+

## Installazione

```bash
# Installazione base
./install.sh

# Installazione completa (consigliata) — include GTK4, Flatpak e correzioni dock
./install.sh --update -l -f --dock
```

### Opzioni di Installazione

| Opzione | Corto | Descrizione |
|--------|-------|-------------|
| `--update` | | Aggiorna/reinstalla tema |
| `--uninstall` | `-u` | Rimuovi tema |
| `--libadwaita` | `-l` | Correggi applicazioni GTK4/libadwaita |
| `--flatpak` | `-f` | Correggi applicazioni Flatpak |
| `--dock [TYPE]` | | Tema dock (transparent\|solid) |
| `--wallpapers` | `-w` | Installa sfondi |

## Documentazione

📚 **[Wiki Documentazione Completa](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — Guide complete e risoluzione problemi

- **[Guida Installazione](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — Istruzioni dettagliate setup
- **[Risoluzione Problemi](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — Problemi comuni e soluzioni
- **[Palette Colori](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Riferimento colori Nord
- **[Personalizzazione](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — Personalizza il tema
- **[Contribuire](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — Come contribuire

## Correzioni Rapide

**App GTK4 senza tema?** `./install.sh -l` poi disconnetti/riconnetti

**App Flatpak senza tema?** `./install.sh -f` poi riavvia app Flatpak

**Dock senza stile?** `./install.sh --dock transparent` o `--dock solid`

## Contribuire

I contributi sono benvenuti! Consulta la [Guida Contributi](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing) per le linee guida.

- 🐛 [Segnala bug](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [Suggerisci funzionalità](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 Migliora documentazione

## Crediti

- Basato su [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) di vinceliuice
- Palette colori [Nord Theme](https://www.nordtheme.com/) di Arctic Ice Studio

## Licenza

Licenza GPL-3.0 — consulta il file [COPYING](../../src/COPYING) per dettagli.

---

**Goditi il tuo nuovo tema!** 🎨

Per aiuto, consulta il [wiki documentazione](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki).
