<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../README.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/README.md" style="color: #88C0D0; text-decoration: none;"><strong>🇧🇷 Português</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/README.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/README.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/README.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/README.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/README.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/README.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/README.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Tema Hentai-Senpai

[![Version](https://img.shields.io/github/v/release/PhantomNimbi/Hentai-Senpai-GTK-Theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/blob/main/src/COPYING) [![Stars](https://img.shields.io/github/stars/PhantomNimbi/Hentai-Senpai-GTK-Theme?style=flat-square&color=yellow)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/stargazers)

Um belo tema GTK escuro baseado no [Orchis](https://github.com/vinceliuice/Orchis-theme) com a elegante paleta de cores [Nord](https://www.nordtheme.com/).

![Pré-visualização do Tema](../../wallpapers/001.png)

## Recursos

- **Escuro e Elegante** — Fundos azul acinzentado profundos com contraste confortável
- **Cores Nord** — Esquema de cores inspirado no Ártico projetado para clareza
- **Material Design** — Cantos arredondados, sombras suaves, efeitos de ondulação
- **Suporte Multi-DE** — GNOME, Cinnamon, XFCE, Budgie e MATE
- **Tematização Completa** — GTK 2/3/4, GNOME Shell, decorações de janelas, papéis de parede
- **GTK4 Moderno** — Suporte completo para aplicativos baseados em libadwaita
- **Pronto para Flatpak** — Suporte de tema para aplicativos em sandbox

## Início Rápido

```bash
# Instalar com todas as correções recomendadas
./install.sh --update -l -f --dock

# Aplicar o tema
./scripts/apply.sh
```

## Requisitos

- GTK 3.20+ ou GTK 4.0+
- GNOME Shell 40+ (para usuários GNOME)
- Bash 4.0+

## Instalação

```bash
# Instalação básica
./install.sh

# Instalação completa (recomendada) — inclui GTK4, Flatpak e correções do dock
./install.sh --update -l -f --dock
```

### Opções de Instalação

| Opção | Curto | Descrição |
|--------|-------|-------------|
| `--update` | | Atualizar/reinstalar tema |
| `--uninstall` | `-u` | Remover tema |
| `--libadwaita` | `-l` | Corrigir aplicativos GTK4/libadwaita |
| `--flatpak` | `-f` | Corrigir aplicativos Flatpak |
| `--dock [TYPE]` | | Tema do dock (transparent\|solid) |
| `--wallpapers` | `-w` | Instalar papéis de parede |

## Documentação

📚 **[Wiki de Documentação Completa](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — Guias abrangentes e solução de problemas

- **[Guia de Instalação](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — Instruções detalhadas de configuração
- **[Solução de Problemas](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — Problemas comuns e soluções
- **[Paleta de Cores](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Referência de cores Nord
- **[Personalização](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — Personalizar o tema
- **[Contribuindo](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — Como contribuir

## Correções Rápidas

**Aplicativos GTK4 sem tema?** `./install.sh -l` depois saia e entre novamente

**Aplicativos Flatpak sem tema?** `./install.sh -f` depois reinicie os aplicativos Flatpak

**Dock sem estilo?** `./install.sh --dock transparent` ou `--dock solid`

## Contribuindo

Contribuições são bem-vindas! Consulte o [Guia de Contribuição](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing) para diretrizes.

- 🐛 [Reportar bugs](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [Sugerir recursos](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 Melhorar documentação

## Créditos

- Baseado no [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) por vinceliuice
- Paleta de cores [Nord Theme](https://www.nordtheme.com/) por Arctic Ice Studio

## Licença

Licença GPL-3.0 — consulte o arquivo [COPYING](../../src/COPYING) para detalhes.

---

**Aproveite seu novo tema!** 🎨

Para obter ajuda, consulte a [wiki de documentação](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki).
