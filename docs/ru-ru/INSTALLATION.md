# Руководство по установке

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Язык</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Installation-Guide" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Guide-d-Installation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsanleitung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Guida-Installazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsguide-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Anleitung-zur-Installation-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Руководство-по-установке" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Это руководство поможет вам установить тему GTK Hentai-Senpai на вашу систему Linux.

## Содержание

- [Требования](#требования)
- [Быстрая установка](#быстрая-установка)
- [Параметры установки](#параметры-установки)
- [Специфика для окружения рабочего стола](#специфика-для-окружения-рабочего-стола)
- [Поддержка Flatpak](#поддержка-flatpak)
- [Удаление](#удаление)

## Требования

Перед установкой убедитесь, что у вас есть:

- **Библиотеки GTK**: GTK 2, GTK 3 и/или GTK 4 (в зависимости от системы)
- **Git**: Для клонирования репозитория
- **Компилятор Sass**: `sassc` или `dart-sass` (для сборки из исходников)
- **Root-доступ**: Только для системной установки

### Установка зависимостей

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

## Быстрая установка

Самый быстрый способ установки:

```bash
# Клонирование репозитория
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Установка темы
./install.sh --update -l -f --dock

# Применение темы
./apply-theme.sh
```

## Параметры установки

Скрипт установки поддерживает различные параметры:

| Параметр | Описание |
|----------|----------|
| `-d`, `--dest` | Установить место установки (по умолчанию: `~/.themes`) |
| `-n`, `--name` | Установить имя темы (по умолчанию: `Hentai-Senpai`) |
| `-l`, `--libadwaita` | Ссылка на тему libadwaita |
| `-f`, `--flatpak` | Установить тему Flatpak |
| `--dock` | Установить тему dock (Plank) |
| `-r`, `--remove` | Удалить установленные темы |
| `--update` | Обновить существующую установку |

### Примеры

**Системная установка:**
```bash
sudo ./install.sh -d /usr/share/themes
```

**Пользовательское имя темы:**
```bash
./install.sh -n "My-Custom-Theme"
```

**Установка со всеми функциями:**
```bash
./install.sh -l -f --dock
```

**Удаление темы:**
```bash
./install.sh -r
```

## Специфика для окружения рабочего стола

### GNOME

После установки активируйте тему:

```bash
# Включить расширение User Themes (если ещё не включено)
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Применить тему
./apply-theme.sh
```

Или установите вручную через **Настройки > Внешний вид**.

### Cinnamon

Перейдите в **Системные настройки > Темы** и выберите `Hentai-Senpai`.

### XFCE

1. Перейдите в **Настройки > Внешний вид**
2. Выберите `Hentai-Senpai` из списка
3. Перейдите в **Оконный менеджер** и выберите тему там тоже

### MATE

Перейдите в **Система > Параметры > Внешний вид** и выберите тему.

### Budgie

Перейдите в **Настройки > Рабочий стол > Внешний вид** и выберите тему.

## Поддержка Flatpak

Для применения темы к приложениям Flatpak:

```bash
# Разрешить приложениям Flatpak доступ к теме
flatpak override --filesystem=$HOME/.themes

# Установить тему Flatpak (во время установки)
./install.sh -f
```

**Примечание:** Возможно, потребуется перезапустить приложения Flatpak, чтобы изменения вступили в силу.

## Удаление

Чтобы удалить тему:

```bash
./install.sh -r
```

Или удалите вручную:
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## Следующие шаги

- Прочитайте [Руководство по настройке](Настройка), чтобы персонализировать вашу тему
- Проверьте [Устранение неполадок](Устранение-неполадок), если у вас возникли проблемы
- Посмотрите [Цветовую палитру](Цветовая-палитра) для цветов темы
