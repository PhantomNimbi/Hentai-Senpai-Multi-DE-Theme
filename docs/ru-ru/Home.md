<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Язык</summary>
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

# Тема Hentai-Senpai

Красивая тёмная тема GTK на основе Orchis с цветами Nord. Эта тема привносит современный, целостный вид на ваш Linux-рабочий стол с тщательно подобранными цветовыми схемами, которые бережны для глаз во время длительных сеансов программирования или повседневного использования.

![Главный скриншот](../../assets/screenshots/hero.png)

## Требования

Перед установкой убедитесь, что у вас есть:

- **Библиотеки GTK**: Библиотеки разработки GTK 2, GTK 3 и GTK 4
- **Git**: Для клонирования репозитория
- **Компилятор Sass**: `sassc` (рекомендуется) или `dart-sass`
- **Система Linux**: Любой дистрибутив с GTK-окружением рабочего стола (GNOME, Cinnamon, XFCE, Budgie, MATE и т.д.)
- **Дисковое пространство**: Приблизительно 50MB свободного места

### Установка зависимостей (Ubuntu/Debian):
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### Установка зависимостей (Fedora):
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### Установка зависимостей (Arch):
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## Быстрый старт

Самый быстрый способ начать:

```bash
# Базовая установка
./install.sh

# Полная установка со всеми исправлениями и опциями
./install.sh --update -l -f --dock

# Применить тему
./scripts/apply.sh
```

### Часто используемые однострочники

```bash
# Клонирование и установка одной командой
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# Обновление существующей установки
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## Параметры установки

| Параметр | Описание |
|----------|----------|
| `--update` | Обновить/переустановить тему (сохраняет настройки) |
| `-l, --libadwaita` | Исправить тему приложений GTK4/libadwaita |
| `-f, --flatpak` | Исправить тему изолированных приложений Flatpak |
| `--dock [ТИП]` | Применить тему дока (прозрачный, сплошной или размытый) |
| `-w, --wallpapers` | Установить и применить обои темы |
| `-d, --dest КАТАЛОГ` | Пользовательский каталог установки (по умолчанию: ~/.themes) |
| `-t, --theme ВАРИАНТ` | Установить определённый цветовой вариант |
| `-c, --color ВАРИАНТ` | Установить определённый цвет акцента |
| `-s, --size РАЗМЕР` | Установить определённый вариант размера (стандартный, компактный) |
| `-h, --help` | Показать подробное сообщение справки |

### Примеры:

```bash
# Установить с прозрачным доком и всеми исправлениями
./install.sh -l -f --dock transparent

# Установить в системный каталог
sudo ./install.sh -d /usr/share/themes

# Установить только тёмный вариант с синим акцентом
./install.sh -t dark -c blue
```

## Распространенные проблемы

### Тема не применяется?
- **Пользователи GNOME**: Включите расширение "Пользовательские темы" в Расширениях GNOME
- **Другие DE**: Убедитесь, что установлен совместимый движок темы
- Попробуйте выйти из системы и снова войти, или перезапустите окружение рабочего стола

### Приложения Flatpak не имеют темы?
Запустите скрипт установки с флагом `--flatpak`:
```bash
./install.sh -f
```

### Приложения GTK4/libadwaita выглядят иначе?
Примените исправление libadwaita:
```bash
./install.sh -l
```

### Отсутствуют иконки?
Установите одну из этих рекомендуемых тем иконок:
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## Возможности

- **Тёмные и элегантные цвета Nord**: Основано на популярной цветовой палитре Nord для комфортного просмотра
- **Принципы Material Design**: Современный, чистый интерфейс, следуя руководству Material Design Google
- **Поддержка нескольких DE**: Работает с GNOME, Cinnamon, XFCE, Budgie, MATE и другими GTK-окружениями рабочего стола
- **Полная поддержка GTK**: Охватывает GTK 2, GTK 3, GTK 4, GNOME Shell и оформление окон
- **Современная поддержка GTK4/libadwaita**: Полная совместимость с новейшими приложениями GTK4
- **Готовность к Flatpak**: Бесшовное оформление изолированных приложений Flatpak
- **Настраиваемый**: Доступны множественные цветовые варианты, размеры и цвета акцентов
- **Темы дока**: Дополнительное оформление дока прозрачным, сплошным или размытым
- **Коллекция обоев**: Подобранные обои, которые идеально сочетаются с темой

## Участие

Мы приветствуем вклад сообщества! Вот как вы можете помочь:

- **Нашли баг?** [Сообщите об этом в GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - Пожалуйста, включите скриншоты и детали системы
- **Есть предложение?** [Откройте GitHub Discussion](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - Поделитесь своими идеями улучшений
- **Хотите помочь?** Ознакомьтесь с нашим [Руководством по участию](Участие) - Узнайте, как отправлять pull request'ы, сообщать об ошибках и вносить код

## Быстрые ссылки

- [Руководство по установке](Руководство-по-установке) - Подробные инструкции по установке
- [Устранение неполадок](Устранение-неполадок) - Решения распространенных проблем
- [Настройка](Настройка) - Как настроить тему
- [Цветовая палитра](Цветовая-палитра) - Справка по цветам темы
- [Участие](Участие) - Как внести вклад в проект

## Смотреть на GitHub

[Смотреть на GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
