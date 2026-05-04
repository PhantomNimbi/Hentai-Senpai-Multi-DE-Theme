<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../README.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/README.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/README.md" style="color: #88C0D0; text-decoration: none;"><strong>🇪🇸 Español</strong></a></div>
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

Un hermoso tema GTK oscuro basado en [Orchis](https://github.com/vinceliuice/Orchis-theme) con la elegante paleta de colores [Nord](https://www.nordtheme.com/).

![Vista Previa del Tema](../../wallpapers/001.png)

## Características

- **Oscuro y Elegante** — Fondos azul grisáceo profundo con contraste cómodo
- **Colores Nord** — Esquema de colores inspirado en el Ártico diseñado para claridad
- **Diseño Material** — Esquinas redondeadas, sombras suaves, efectos de ondulación
- **Soporte Multi-DE** — GNOME, Cinnamon, XFCE, Budgie y MATE
- **Tematización Completa** — GTK 2/3/4, GNOME Shell, decoraciones de ventanas, fondos de pantalla
- **GTK4 Moderno** — Soporte completo para aplicaciones basadas en libadwaita
- **Listo para Flatpak** — Soporte de temas para aplicaciones en sandbox

## Inicio Rápido

```bash
# Instalar con todas las correcciones recomendadas
./install.sh --update -l -f --dock

# Aplicar el tema
./scripts/apply.sh
```

## Requisitos

- GTK 3.20+ o GTK 4.0+
- GNOME Shell 40+ (para usuarios de GNOME)
- Bash 4.0+

## Instalación

```bash
# Instalación básica
./install.sh

# Instalación completa (recomendada) — incluye GTK4, Flatpak y correcciones de dock
./install.sh --update -l -f --dock
```

### Opciones de Instalación

| Opción | Corto | Descripción |
|--------|-------|-------------|
| `--update` | | Actualizar/reinstalar tema |
| `--uninstall` | `-u` | Eliminar tema |
| `--libadwaita` | `-l` | Corregir aplicaciones GTK4/libadwaita |
| `--flatpak` | `-f` | Corregir aplicaciones Flatpak |
| `--dock [TYPE]` | | Tema de dock (transparent\|solid) |
| `--wallpapers` | `-w` | Instalar fondos de pantalla |

## Documentación

📚 **[Wiki de Documentación Completa](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — Guías completas y solución de problemas

- **[Guía de Instalación](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — Instrucciones detalladas de configuración
- **[Solución de Problemas](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — Problemas comunes y soluciones
- **[Paleta de Colores](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Referencia de colores Nord
- **[Personalización](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — Personalizar el tema
- **[Contribuir](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — Cómo contribuir

## Soluciones Rápidas

**¿Aplicaciones GTK4 sin tema?** `./install.sh -l` luego cerrar sesión y volver a entrar

**¿Aplicaciones Flatpak sin tema?** `./install.sh -f` luego reiniciar aplicaciones Flatpak

**¿Dock sin estilo?** `./install.sh --dock transparent` o `--dock solid`

## Contribuir

¡Las contribuciones son bienvenidas! Consulta la [Guía de Contribución](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing) para obtener directrices.

- 🐛 [Reportar errores](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [Sugerir funciones](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 Mejorar documentación

## Créditos

- Basado en [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) por vinceliuice
- Paleta de colores [Nord Theme](https://www.nordtheme.com/) por Arctic Ice Studio

## Licencia

Licencia GPL-3.0 — consulta el archivo [COPYING](../../src/COPYING) para más detalles.

---

**¡Disfruta tu nuevo tema!** 🎨

Para obtener ayuda, consulta la [wiki de documentación](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki).
