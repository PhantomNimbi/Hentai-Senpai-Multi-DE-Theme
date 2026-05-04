# Настройка

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Язык</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Customization" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Personnalisation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Anpassung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizzazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Настройка" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Как настроить тему GTK Hentai-Senpai в соответствии с вашими предпочтениями.

## Содержание

- [Цветовые варианты](#цветовые-варианты)
- [Ручная настройка](#ручная-настройка)
- [Создание пользовательских вариантов](#создание-пользовательских-вариантов)
- [Пользовательские переопределения](#пользовательские-переопределения)
- [Настройки для окружения рабочего стола](#настройки-для-окружения-рабочего-стола)

## Цветовые варианты

Тема поставляется с различными цветовыми опциями. Используйте скрипт установки для выбора вариантов:

```bash
# Список доступных вариантов
./install.sh --help
```

### Доступные варианты

| Вариант | Описание | Лучше всего для |
|---------|----------|-----------------|
| `default` | Стандартный Nord тёмный | Общее использование |
| `blackness` | Более глубокий чёрный фон | OLED дисплеи |

## Ручная настройка

### Редактирование файлов темы

Редактируйте CSS-файлы непосредственно в вашей установке темы:

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # Конфигурация GTK2
├── gtk-3.0/gtk.css        # Стили GTK3
├── gtk-4.0/gtk.css        # Стили GTK4
└── gnome-shell/gnome-shell.css  # Стили GNOME Shell
```

**⚠️ Предупреждение:** Прямые правки будут потеряны при обновлении темы. Используйте [пользовательские переопределения](#пользовательские-переопределения) для постоянных изменений.

### Ключевые CSS-переменные

Общие переменные, которые вы можете изменить:

```css
/* Цвета фона */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* Акцентные цвета */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## Создание пользовательских вариантов

Чтобы создать свой собственный цветовой вариант:

1. **Скопируйте исходные файлы:**
   ```bash
   cp -r src src-custom
   ```

2. **Отредактируйте определения цветов:**
   - Откройте `src-custom/gtk-3.0/gtk.css`
   - Измените цветовые переменные вверху

3. **Пересоберите тему:**
   ```bash
   ./install.sh -d ~/.themes -n My-Custom-Variant
   ```

## Пользовательские переопределения

Создавайте постоянные настройки, которые сохраняются при обновлении темы.

### Переопределения GTK3

Создайте или отредактируйте:
```bash
~/.config/gtk-3.0/gtk.css
```

Пример:
```css
/* Сделать все кнопки скруглёнными */
button {
    border-radius: 8px;
}

/* Изменить цвет выделения */
*:selected {
    background-color: #BF616A;
}
```

### Переопределения GTK4

Создайте или отредактируйте:
```bash
~/.config/gtk-4.0/gtk.css
```

Пример:
```css
/* Больший отступ для GTK4 */
button {
    padding: 8px 16px;
}
```

## Настройки для окружения рабочего стола

### Настройки GNOME

Установите GNOME Tweaks для дополнительных опций:

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**Рекомендуемые настройки:**
- **Темы > Устаревшие приложения**: Hentai-Senpai
- **Темы > Оболочка**: Hentai-Senpai
- **Темы > Значки**: Papirus-Dark или Nordic

### Настройки XFCE

1. Откройте **Настройки > Внешний вид**
2. Установите **Стиль**: Hentai-Senpai
3. Установите **Значки**: вашу предпочитаемую тему значков
4. Перейдите в **Оконный менеджер > Стиль**: Hentai-Senpai

### Настройки Cinnamon

1. Правый клик на рабочем столе → **Настройки рабочего стола**
2. Установите **Тема рабочего стола**: Hentai-Senpai
3. Настройте отдельные компоненты:
   - **Элементы управления**: Hentai-Senpai
   - **Рабочий стол**: по вашему выбору
   - **Значки**: по вашему выбору
   - **Указатель мыши**: по вашему выбору

## Расширенная настройка

### Изменение расположения кнопок окна

Отредактируйте `metacity-theme-1.xml` для оформления окон:

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### Настройка элементов оболочки

Для модификаций GNOME Shell:

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

Распространённые модификации:
- Высота панели
- Стилизация меню
- Внешний вид календаря

## Советы для лучших результатов

1. **Используйте согласованные темы значков** с цветовой палитрой Nord
2. **Сопоставьте цвета терминала** с темой (см. [Цветовую палитру](Цветовая-палитра))
3. **Тестируйте изменения постепенно** - изменяйте одно за раз
4. **Делайте резервные копии** рабочих конфигураций

## Поделитесь своими настройками

Создали что-то отличное? Рассмотрите возможность:
- Поделиться скриншотами в [Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- Отправить улучшения через [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)
