# Цветовая палитра

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Язык</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Color-Palette" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-de-Couleurs" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Farbpalette" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-Colori" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Цветовая-палитра" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Тема Hentai-Senpai использует [цветовую палитру Nord](https://www.nordtheme.com/), полярно-вдохновлённую цветовую схему, разработанную для ясности и элегантности.

## Содержание

- [Цвета Nord](#цвета-nord)
- [Использование в теме](#использование-в-теме)
- [Цвета терминала](#цвета-терминала)
- [Цветовые гармонии](#цветовые-гармонии)

## Цвета Nord

### Polar Night (Тёмные фоны)

Тёмные цвета фона формируют основу тёмной эстетики темы.

| Название | Hex | RGB | Использование |
|----------|-----|-----|---------------|
| **Nord0** | `#2E3440` | 46, 52, 64 | Основной фон |
| **Nord1** | `#3B4252` | 59, 66, 82 | Более светлый фон, карточки |
| **Nord2** | `#434C5E` | 67, 76, 94 | Фон выделения |
| **Nord3** | `#4C566A` | 76, 86, 106 | Комментарии, отключённый текст |

### Snow Storm (Светлый текст)

Эти цвета используются для текста и ярких элементов.

| Название | Hex | RGB | Использование |
|----------|-----|-----|---------------|
| **Nord4** | `#D8DEE9` | 216, 222, 233 | Основной текст |
| **Nord5** | `#E5E9F0` | 229, 233, 240 | Вторичный текст |
| **Nord6** | `#ECEFF4` | 236, 239, 244 | Самый яркий текст, подсветка |

### Frost (Синие)

Синие оттенки обеспечивают основные акцентные цвета.

| Название | Hex | RGB | Использование |
|----------|-----|-----|---------------|
| **Nord7** | `#8FBCBB` | 143, 188, 187 | Состояния успеха |
| **Nord8** | `#88C0D0` | 136, 192, 208 | Основной акцент, информация |
| **Nord9** | `#81A1C1` | 129, 161, 193 | Ссылки, вторичный акцент |
| **Nord10** | `#5E81AC` | 94, 129, 172 | Третичный акцент |

### Aurora (Акцентные цвета)

Яркие цвета для ошибок, предупреждений и специальных элементов.

| Название | Hex | RGB | Использование |
|----------|-----|-----|---------------|
| **Nord11** | `#BF616A` | 191, 97, 106 | Ошибки, разрушительные действия |
| **Nord12** | `#D08770` | 208, 135, 112 | Предупреждения, аннотации |
| **Nord13** | `#EBCB8B` | 235, 203, 139 | Подсветка, типы |
| **Nord14** | `#A3BE8C` | 163, 190, 140 | Успех, методы |
| **Nord15** | `#B48EAD` | 180, 142, 173 | Числа, специальное |

## Использование в теме

### Иерархия фона

```
Nord0 (#2E3440)  →  Основной фон окна
    ↓
Nord1 (#3B4252)  →  Вторичный фон, панели
    ↓
Nord2 (#434C5E)  →  Состояния наведения, выделения
    ↓
Nord3 (#4C566A)  →  Границы, разделители
```

### Контраст текста

```
Nord6 (#ECEFF4)  →  Заголовки, важный текст
    ↓
Nord5 (#E5E9F0)  →  Основной текст
    ↓
Nord4 (#D8DEE9)  →  Вторичный текст
    ↓
Nord3 (#4C566A)  →  Отключённый текст, плейсхолдеры
```

### Использование акцентов

```
Nord8 (#88C0D0)  →  Основные кнопки, ссылки
Nord9 (#81A1C1)  →  Вторичные кнопки
Nord7 (#8FBCBB)  →  Состояния успеха
Nord14 (#A3BE8C) →  Положительная обратная связь
Nord11 (#BF616A) →  Ошибки, разрушительное
Nord12 (#D08770) →  Предупреждения
Nord13 (#EBCB8B) →  Подсветка
```

## Цвета терминала

Для согласованного терминального опыта настройте ваш терминал этими цветами:

### Цветовая схема

| Номер цвета | Hex | Использование |
|-------------|-----|---------------|
| 0 (Чёрный) | `#3B4252` | Чёрный |
| 1 (Красный) | `#BF616A` | Красный |
| 2 (Зелёный) | `#A3BE8C` | Зелёный |
| 3 (Жёлтый) | `#EBCB8B` | Жёлтый |
| 4 (Синий) | `#81A1C1` | Синий |
| 5 (Пурпурный) | `#B48EAD` | Пурпурный |
| 6 (Голубой) | `#88C0D0` | Голубой |
| 7 (Белый) | `#E5E9F0` | Белый |
| 8 (Яркий чёрный) | `#4C566A` | Яркий чёрный |
| 9 (Яркий красный) | `#BF616A` | Яркий красный |
| 10 (Яркий зелёный) | `#A3BE8C` | Яркий зелёный |
| 11 (Яркий жёлтый) | `#EBCB8B` | Яркий жёлтый |
| 12 (Яркий синий) | `#81A1C1` | Яркий синий |
| 13 (Яркий пурпурный) | `#B48EAD` | Яркий пурпурный |
| 14 (Яркий голубой) | `#8FBCBB` | Яркий голубой |
| 15 (Яркий белый) | `#ECEFF4` | Яркий белый |

### Фон и передний план

- **Фон**: `#2E3440` (Nord0)
- **Передний план**: `#D8DEE9` (Nord4)
- **Курсор**: `#D8DEE9` (Nord4)
- **Фон выделения**: `#434C5E` (Nord2)
- **Передний план выделения**: `#D8DEE9` (Nord4)

## Цветовые гармонии

### Монохроматическая
Использование вариаций Nord0-Nord3 для глубины:
```
Фон: Nord0
Карточки: Nord1
Приподнятый: Nord2
Границы: Nord3
```

### Дополнительные акценты
Сочетание Frost с цветами Aurora:
```
Основной: Nord8 (голубой)
Дополнительный: Nord12 (оранжевый)
```

### Аналоговая
Соседние цвета для плавных переходов:
```
Холодные: Nord9 → Nord10 (синие тона)
Тёплые: Nord12 → Nord13 (оранжево-жёлтые)
```

## CSS-переменные

Используйте эти переменные в вашем пользовательском CSS:

```css
/* Polar Night */
@define-color nord0 #2E3440;
@define-color nord1 #3B4252;
@define-color nord2 #434C5E;
@define-color nord3 #4C566A;

/* Snow Storm */
@define-color nord4 #D8DEE9;
@define-color nord5 #E5E9F0;
@define-color nord6 #ECEFF4;

/* Frost */
@define-color nord7 #8FBCBB;
@define-color nord8 #88C0D0;
@define-color nord9 #81A1C1;
@define-color nord10 #5E81AC;

/* Aurora */
@define-color nord11 #BF616A;
@define-color nord12 #D08770;
@define-color nord13 #EBCB8B;
@define-color nord14 #A3BE8C;
@define-color nord15 #B48EAD;
```

## Внешние ресурсы

- [Nord Theme Официальный](https://www.nordtheme.com/)
- [Справочник по цветам Nord](https://www.nordtheme.com/docs/colors-and-palettes)
- [Nord GitHub](https://github.com/arcticicestudio/nord)
