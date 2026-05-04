<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Язык</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../README.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/README.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/README.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/README.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/README.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/README.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/README.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/README.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/README.md" style="color: #88C0D0; text-decoration: none;"><strong>🇷🇺 Русский</strong></a></div>
    </div>
  </details>
</div>

# Тема Hentai-Senpai

[![Version](https://img.shields.io/github/v/release/PhantomNimbi/Hentai-Senpai-GTK-Theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/blob/main/src/COPYING) [![Stars](https://img.shields.io/github/stars/PhantomNimbi/Hentai-Senpai-GTK-Theme?style=flat-square&color=yellow)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/stargazers)

Красивая тёмная тема GTK на основе [Orchis](https://github.com/vinceliuice/Orchis-theme) с элегантной цветовой палитрой [Nord](https://www.nordtheme.com/).

![Предпросмотр Темы](../../wallpapers/001.png)

## Особенности

- **Тёмная и Элегантная** — Глубокие сине-серые фоны с комфортным контрастом
- **Цвета Nord** — Схема цветов, вдохновлённая Арктикой, для чёткости
- **Material Design** — Скруглённые углы, мягкие тени, эффекты ripple
- **Поддержка Нескольких DE** — GNOME, Cinnamon, XFCE, Budgie и MATE
- **Полная Тематизация** — GTK 2/3/4, GNOME Shell, оформление окон, обои
- **Современный GTK4** — Полная поддержка приложений на libadwaita
- **Готовность к Flatpak** — Поддержка тем для песочничных приложений

## Быстрый Старт

```bash
# Установка со всеми рекомендуемыми исправлениями
./install.sh --update -l -f --dock

# Применение темы
./scripts/apply.sh
```

## Требования

- GTK 3.20+ или GTK 4.0+
- GNOME Shell 40+ (для пользователей GNOME)
- Bash 4.0+

## Установка

```bash
# Базовая установка
./install.sh

# Полная установка (рекомендуется) — включает GTK4, Flatpak и исправления dock
./install.sh --update -l -f --dock
```

### Параметры Установки

| Параметр | Сокращение | Описание |
|--------|-------|-------------|
| `--update` | | Обновить/переустановить тему |
| `--uninstall` | `-u` | Удалить тему |
| `--libadwaita` | `-l` | Исправить приложения GTK4/libadwaita |
| `--flatpak` | `-f` | Исправить приложения Flatpak |
| `--dock [TYPE]` | | Тема dock (transparent\|solid) |
| `--wallpapers` | `-w` | Установить обои |

## Документация

📚 **[Полная Wiki Документация](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — Подробные руководства и устранение неполадок

- **[Руководство по Установке](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — Подробные инструкции по настройке
- **[Устранение Неполадок](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — Распространённые проблемы и решения
- **[Цветовая Палитра](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Справка по цветам Nord
- **[Настройка](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — Персонализация темы
- **[Участие](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — Как внести вклад

## Быстрые Исправления

**Приложения GTK4 без темы?** `./install.sh -l` затем выход/вход

**Приложения Flatpak без темы?** `./install.sh -f` затем перезапуск Flatpak приложений

**Dock без стилей?** `./install.sh --dock transparent` или `--dock solid`

## Участие

Вклады приветствуются! См. [Руководство по Участию](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing) для получения инструкций.

- 🐛 [Сообщить об ошибке](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [Предложить функцию](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 Улучшить документацию

## Благодарности

- На основе [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) от vinceliuice
- Цветовая палитра [Nord Theme](https://www.nordtheme.com/) от Arctic Ice Studio

## Лицензия

Лицензия GPL-3.0 — см. файл [COPYING](../../src/COPYING) для подробностей.

---

**Наслаждайтесь вашей новой темой!** 🎨

Для получения помощи посетите [wiki документации](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki).
