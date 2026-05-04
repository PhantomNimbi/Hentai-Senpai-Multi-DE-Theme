# カラーパレット

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Color-Palette" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Color-Palette-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-de-Couleurs" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Farbpalette" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Palette-Colori" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="カラーパレット" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="调色板" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Tsvetovaya-palitra" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Hentai-Senpaiテーマは、[Nordカラーパレット](https://www.nordtheme.com/)を使用しています。これは、明瞭さと優雅さのために設計された極地にインスパイアされたカラースキームです。

## 目次

- [Nordカラー](#nordカラー)
- [テーマの使用](#テーマの使用)
- [ターミナルカラー](#ターミナルカラー)
- [カラーハーモニー](#カラーハーモニー)

## Nordカラー

### Polar Night（ダーク背景）

ダークな背景色が、テーマのダークな美学の基礎を形成します。

| 名前 | Hex | RGB | 使用法 |
|------|-----|-----|--------|
| **Nord0** | `#2E3440` | 46, 52, 64 | プライマリ背景 |
| **Nord1** | `#3B4252` | 59, 66, 82 | より明るい背景、カード |
| **Nord2** | `#434C5E` | 67, 76, 94 | 選択背景 |
| **Nord3** | `#4C566A` | 76, 86, 106 | コメント、無効テキスト |

### Snow Storm（明るいテキスト）

これらの色は、テキストや明るい要素に使用されます。

| 名前 | Hex | RGB | 使用法 |
|------|-----|-----|--------|
| **Nord4** | `#D8DEE9` | 216, 222, 233 | プライマリテキスト |
| **Nord5** | `#E5E9F0` | 229, 233, 240 | セカンダリテキスト |
| **Nord6** | `#ECEFF4` | 236, 239, 244 | 最も明るいテキスト、ハイライト |

### Frost（ブルー）

青いトーンがメインのアクセントカラーを提供します。

| 名前 | Hex | RGB | 使用法 |
|------|-----|-----|--------|
| **Nord7** | `#8FBCBB` | 143, 188, 187 | 成功状態 |
| **Nord8** | `#88C0D0` | 136, 192, 208 | プライマリアクセント、情報 |
| **Nord9** | `#81A1C1` | 129, 161, 193 | リンク、セカンダリアクセント |
| **Nord10** | `#5E81AC` | 94, 129, 172 | ターシャリアクセント |

### Aurora（アクセントカラー）

エラー、警告、特別な要素用の鮮やかな色。

| 名前 | Hex | RGB | 使用法 |
|------|-----|-----|--------|
| **Nord11** | `#BF616A` | 191, 97, 106 | エラー、破壊的アクション |
| **Nord12** | `#D08770` | 208, 135, 112 | 警告、注釈 |
| **Nord13** | `#EBCB8B` | 235, 203, 139 | ハイライト、タイプ |
| **Nord14** | `#A3BE8C` | 163, 190, 140 | 成功、メソッド |
| **Nord15** | `#B48EAD` | 180, 142, 173 | 数字、特別 |

## テーマの使用

### 背景の階層

```
Nord0 (#2E3440)  →  メインウィンドウ背景
    ↓
Nord1 (#3B4252)  →  セカンダリ背景、パネル
    ↓
Nord2 (#434C5E)  →  ホバー状態、選択
    ↓
Nord3 (#4C566A)  →  ボーダー、区切り線
```

### テキストコントラスト

```
Nord6 (#ECEFF4)  →  見出し、重要なテキスト
    ↓
Nord5 (#E5E9F0)  →  本文テキスト
    ↓
Nord4 (#D8DEE9)  →  セカンダリテキスト
    ↓
Nord3 (#4C566A)  →  無効テキスト、プレースホルダー
```

### アクセントの使用

```
Nord8 (#88C0D0)  →  プライマリボタン、リンク
Nord9 (#81A1C1)  →  セカンダリボタン
Nord7 (#8FBCBB)  →  成功状態
Nord14 (#A3BE8C) →  ポジティブフィードバック
Nord11 (#BF616A) →  エラー、破壊的
Nord12 (#D08770) →  警告
Nord13 (#EBCB8B) →  ハイライト
```

## ターミナルカラー

一貫したターミナル体験のために、ターミナルをこれらの色で設定：

### カラースキーム

| カラー番号 | Hex | 使用法 |
|------------|-----|--------|
| 0（黒） | `#3B4252` | 黒 |
| 1（赤） | `#BF616A` | 赤 |
| 2（緑） | `#A3BE8C` | 緑 |
| 3（黄） | `#EBCB8B` | 黄 |
| 4（青） | `#81A1C1` | 青 |
| 5（マゼンタ） | `#B48EAD` | マゼンタ |
| 6（シアン） | `#88C0D0` | シアン |
| 7（白） | `#E5E9F0` | 白 |
| 8（明るい黒） | `#4C566A` | 明るい黒 |
| 9（明るい赤） | `#BF616A` | 明るい赤 |
| 10（明るい緑） | `#A3BE8C` | 明るい緑 |
| 11（明るい黄） | `#EBCB8B` | 明るい黄 |
| 12（明るい青） | `#81A1C1` | 明るい青 |
| 13（明るいマゼンタ） | `#B48EAD` | 明るいマゼンタ |
| 14（明るいシアン） | `#8FBCBB` | 明るいシアン |
| 15（明るい白） | `#ECEFF4` | 明るい白 |

### 背景と前景

- **背景**：`#2E3440`（Nord0）
- **前景**：`#D8DEE9`（Nord4）
- **カーソル**：`#D8DEE9`（Nord4）
- **選択背景**：`#434C5E`（Nord2）
- **選択前景**：`#D8DEE9`（Nord4）

## カラーハーモニー

### モノクロマティック

Nord0-Nord3のバリエーションを使用して深さを出す：
```
背景：Nord0
カード：Nord1
エレベート：Nord2
ボーダー：Nord3
```

### 補色アクセント

FrostとAuroraカラーの組み合わせ：
```
プライマリ：Nord8（シアンブルー）
補色：Nord12（オレンジ）
```

### アナログス

隣接する色でスムーズな遷移：
```
クール：Nord9 → Nord10（ブルートーン）
ウォーム：Nord12 → Nord13（オレンジイエロー）
```

## CSS変数

カスタムCSSでこれらの変数を使用：

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

## 外部リソース

- [Nord Theme公式](https://www.nordtheme.com/)
- [Nordカラーリファレンス](https://www.nordtheme.com/docs/colors-and-palettes)
- [Nord GitHub](https://github.com/arcticicestudio/nord)
