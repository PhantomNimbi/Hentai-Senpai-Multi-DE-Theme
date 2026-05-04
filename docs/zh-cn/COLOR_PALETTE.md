# 调色板

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Color-Palette" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-de-Couleurs" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Farbpalette" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-Colori" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="调色板" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Tsvetovaya-palitra" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Hentai-Senpai主题使用[Nord调色板](https://www.nordtheme.com/)，这是一个极地灵感的配色方案，专为清晰和优雅而设计。

## 目录

- [Nord颜色](#nord颜色)
- [主题使用](#主题使用)
- [终端颜色](#终端颜色)
- [色彩和谐](#色彩和谐)

## Nord颜色

### Polar Night（深色背景）

深色背景颜色构成了主题深色美学的基础。

| 名称 | Hex | RGB | 用途 |
|------|-----|-----|------|
| **Nord0** | `#2E3440` | 46, 52, 64 | 主背景 |
| **Nord1** | `#3B4252` | 59, 66, 82 | 较亮背景、卡片 |
| **Nord2** | `#434C5E` | 67, 76, 94 | 选择背景 |
| **Nord3** | `#4C566A` | 76, 86, 106 | 注释、禁用文本 |

### Snow Storm（亮色文本）

这些颜色用于文本和亮色元素。

| 名称 | Hex | RGB | 用途 |
|------|-----|-----|------|
| **Nord4** | `#D8DEE9` | 216, 222, 233 | 主文本 |
| **Nord5** | `#E5E9F0` | 229, 233, 240 | 次要文本 |
| **Nord6** | `#ECEFF4` | 236, 239, 244 | 最亮文本、高亮 |

### Frost（蓝色）

蓝色调提供主要的强调色。

| 名称 | Hex | RGB | 用途 |
|------|-----|-----|------|
| **Nord7** | `#8FBCBB` | 143, 188, 187 | 成功状态 |
| **Nord8** | `#88C0D0` | 136, 192, 208 | 主强调色、信息 |
| **Nord9** | `#81A1C1` | 129, 161, 193 | 链接、次要强调色 |
| **Nord10** | `#5E81AC` | 94, 129, 172 | 第三强调色 |

### Aurora（强调色）

用于错误、警告和特殊元素的鲜艳颜色。

| 名称 | Hex | RGB | 用途 |
|------|-----|-----|------|
| **Nord11** | `#BF616A` | 191, 97, 106 | 错误、破坏性操作 |
| **Nord12** | `#D08770` | 208, 135, 112 | 警告、注释 |
| **Nord13** | `#EBCB8B` | 235, 203, 139 | 高亮、类型 |
| **Nord14** | `#A3BE8C` | 163, 190, 140 | 成功、方法 |
| **Nord15** | `#B48EAD` | 180, 142, 173 | 数字、特殊 |

## 主题使用

### 背景层次

```
Nord0 (#2E3440)  →  主窗口背景
    ↓
Nord1 (#3B4252)  →  次要背景、面板
    ↓
Nord2 (#434C5E)  →  悬停状态、选择
    ↓
Nord3 (#4C566A)  →  边框、分隔线
```

### 文本对比

```
Nord6 (#ECEFF4)  →  标题、重要文本
    ↓
Nord5 (#E5E9F0)  →  正文文本
    ↓
Nord4 (#D8DEE9)  →  次要文本
    ↓
Nord3 (#4C566A)  →  禁用文本、占位符
```

### 强调色使用

```
Nord8 (#88C0D0)  →  主按钮、链接
Nord9 (#81A1C1)  →  次要按钮
Nord7 (#8FBCBB)  →  成功状态
Nord14 (#A3BE8C) →  正面反馈
Nord11 (#BF616A) →  错误、破坏性
Nord12 (#D08770) →  警告
Nord13 (#EBCB8B) →  高亮
```

## 终端颜色

为了获得一致的终端体验，请使用这些颜色配置您的终端：

### 配色方案

| 颜色编号 | Hex | 用途 |
|----------|-----|------|
| 0（黑） | `#3B4252` | 黑色 |
| 1（红） | `#BF616A` | 红色 |
| 2（绿） | `#A3BE8C` | 绿色 |
| 3（黄） | `#EBCB8B` | 黄色 |
| 4（蓝） | `#81A1C1` | 蓝色 |
| 5（洋红） | `#B48EAD` | 洋红色 |
| 6（青） | `#88C0D0` | 青色 |
| 7（白） | `#E5E9F0` | 白色 |
| 8（亮黑） | `#4C566A` | 亮黑色 |
| 9（亮红） | `#BF616A` | 亮红色 |
| 10（亮绿） | `#A3BE8C` | 亮绿色 |
| 11（亮黄） | `#EBCB8B` | 亮黄色 |
| 12（亮蓝） | `#81A1C1` | 亮蓝色 |
| 13（亮洋红） | `#B48EAD` | 亮洋红色 |
| 14（亮青） | `#8FBCBB` | 亮青色 |
| 15（亮白） | `#ECEFF4` | 亮白色 |

### 背景与前景

- **背景**：`#2E3440`（Nord0）
- **前景**：`#D8DEE9`（Nord4）
- **光标**：`#D8DEE9`（Nord4）
- **选择背景**：`#434C5E`（Nord2）
- **选择前景**：`#D8DEE9`（Nord4）

## 色彩和谐

### 单色
使用Nord0-Nord3的变体来增加深度：
```
背景：Nord0
卡片：Nord1
提升：Nord2
边框：Nord3
```

### 互补强调色
将Frost与Aurora颜色配对：
```
主色：Nord8（青蓝色）
互补色：Nord12（橙色）
```

### 类似色
相邻颜色实现平滑过渡：
```
冷色：Nord9 → Nord10（蓝色调）
暖色：Nord12 → Nord13（橙黄色）
```

## CSS变量

在您的自定义CSS中使用这些变量：

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

## 外部资源

- [Nord Theme官方](https://www.nordtheme.com/)
- [Nord颜色参考](https://www.nordtheme.com/docs/colors-and-palettes)
- [Nord GitHub](https://github.com/arcticicestudio/nord)
