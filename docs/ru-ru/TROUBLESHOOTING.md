# Устранение неполадок

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Язык</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Troubleshooting" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Resolution-de-Problemes" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Fehlerbehebung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Risoluzione-Problemi" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Устранение-неполадок" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Распространённые проблемы и решения для темы GTK Hentai-Senpai.

## Содержание

- [Тема не применяется](#тема-не-применяется)
- [Иконки отображаются неправильно](#иконки-отображаются-неправильно)
- [Приложения Flatpak не тематизированы](#приложения-flatpak-не-тематизированы)
- [Ошибки сборки](#ошибки-сборки)
- [Приложения GTK4/libadwaita выглядят иначе](#приложения-gtk4libadwaita-выглядят-иначе)
- [Проблемы с производительностью](#проблемы-с-производительностью)
- [Получение помощи](#получение-помощи)

## Тема не применяется

### Проблема
Тема не отображается в настройках или не применяется после выбора.

### Решения

1. **Проверьте место установки:**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **Проверьте правильность установки:**
   ```bash
   # Должны отображаться файлы темы
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **Перезапустите сессию:**
   - Выйдите из системы и войдите снова
   - Или перезапустите окружение рабочего стола

4. **Для GNOME - проверьте расширение User Themes:**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   Если не включено:
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## Иконки отображаются неправильно

### Проблема
Иконки отображаются сломанными или как системные иконки по умолчанию.

### Решения

1. **Установите совместимую тему иконок:**
   - Рекомендуется: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme) или [Nordic](https://github.com/EliverLara/Nordic)

2. **Проверьте установку темы иконок:**
   ```bash
   ls ~/.icons/  # или /usr/share/icons/
   ```

3. **Примените тему иконок** в настройках вашего окружения рабочего стола.

## Приложения Flatpak не тематизированы

### Проблема
Приложения Flatpak используют тему Adwaita по умолчанию вместо Hentai-Senpai.

### Решения

1. **Предоставьте Flatpak доступ к темам:**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Установите пакет темы Flatpak:**
   ```bash
   ./install.sh -f
   ```

3. **Установите тему GTK для Flatpak:**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Перезапустите приложения Flatpak**, чтобы изменения вступили в силу.

## Ошибки сборки

### Проблема
Ошибки во время установки или сборки темы.

### Решения

1. **Установите компилятор Sass:**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **Проверьте отсутствующие зависимости:**
   ```bash
   # Проверьте, установлен ли sassc
   which sassc
   sassc --version
   ```

3. **Очистите и пересоберите:**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## Приложения GTK4/libadwaita выглядят иначе

### Проблема
Приложения GTK4 или libadwaita не полностью соответствуют теме.

### Решения

1. **Включите связывание с libadwaita:**
   ```bash
   ./install.sh -l
   ```

2. **Примечание:** Приложения GTK4/libadwaita имеют ограниченную поддержку тематизации по дизайну. Некоторые визуальные различия ожидаются.

## Проблемы с производительностью

### Проблема
Система кажется медленнее после применения темы.

### Решения

1. **Отключите анимации** (при желании):
   - GNOME: `gsettings set org.gnome.desktop.interface enable-animations false`

2. **Проверьте высокое использование CPU** от процессов темы.

3. **Используйте более лёгкий вариант**, если доступен.

## Получение помощи

Если ваша проблема не указана здесь:

1. **Поищите существующие issues:**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **Создайте новый issue** с:
   - Вашим дистрибутивом и версией
   - Окружением рабочего стола и версией
   - Шагами для воспроизведения проблемы
   - Скриншотами (если применимо)
   - Сообщениями об ошибках (если есть)

3. **Проверьте [Руководство по установке](Руководство-по-установке)** для правильных инструкций по настройке.
