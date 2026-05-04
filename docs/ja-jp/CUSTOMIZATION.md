# カスタマイズ

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Customization" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Personnalisation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Anpassung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizzazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="カスタマイズ" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="自定义" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Nastrojka" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Hentai-Senpai GTKテーマを好みに合わせてカスタマイズする方法。

## 目次

- [カラーバリアント](#カラーバリアント)
- [手動カスタマイズ](#手動カスタマイズ)
- [カスタムバリアントの作成](#カスタムバリアントの作成)
- [ユーザー上書き](#ユーザー上書き)
- [デスクトップ環境の調整](#デスクトップ環境の調整)

## カラーバリアント

テーマにはさまざまなカラーオプションがあります。インストールスクリプトを使用してバリアントを選択：

```bash
# 利用可能なバリアントを一覧表示
./install.sh --help
```

### 利用可能なバリアント

| バリアント | 説明 | 最適な用途 |
|------------|------|------------|
| `default` | 標準Nordダーク | 一般的な使用 |
| `blackness` | より深い黒の背景 | OLEDディスプレイ |

## 手動カスタマイズ

### テーマファイルの編集

テーマインストール内のCSSファイルを直接編集：

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # GTK2設定
├── gtk-3.0/gtk.css        # GTK3スタイル
├── gtk-4.0/gtk.css        # GTK4スタイル
└── gnome-shell/gnome-shell.css  # GNOME Shellスタイル
```

**⚠️ 警告：** 直接編集はテーマ更新時に失われます。永続的な変更には[ユーザー上書き](#ユーザー上書き)を使用してください。

### 主要なCSS変数

変更可能な一般的な変数：

```css
/* 背景色 */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* アクセント色 */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## カスタムバリアントの作成

独自のカラーバリアントを作成するには：

1. **ソースファイルをコピー：**
   ```bash
   cp -r src src-custom
   ```

2. **色の定義を編集：**
   - `src-custom/gtk-3.0/gtk.css`を開く
   - 上部の色変数を変更

3. **テーマを再ビルド：**
   ```bash
   ./install.sh -d ~/.themes -n My-Custom-Variant
   ```

## ユーザー上書き

テーマ更新を超えて存続する永続的なカスタマイズを作成。

### GTK3上書き

作成または編集：
```bash
~/.config/gtk-3.0/gtk.css
```

例：
```css
/* すべてのボタンを丸くする */
button {
    border-radius: 8px;
}

/* 選択色を変更 */
*:selected {
    background-color: #BF616A;
}
```

### GTK4上書き

作成または編集：
```bash
~/.config/gtk-4.0/gtk.css
```

例：
```css
/* GTK4のパディングを大きく */
button {
    padding: 8px 16px;
}
```

## デスクトップ環境の調整

### GNOME Tweaks

追加オプション用にGNOME Tweaksをインストール：

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**推奨設定：**
- **テーマ > レガシーアプリケーション**：Hentai-Senpai
- **テーマ > シェル**：Hentai-Senpai
- **テーマ > アイコン**：Papirus-DarkまたはNordic

### XFCE調整

1. **設定 > 外観**を開く
2. **スタイル**：Hentai-Senpaiを設定
3. **アイコン**：好みのアイコンテーマを設定
4. **ウィンドウマネージャー > スタイル**：Hentai-Senpai

### Cinnamon調整

1. デスクトップを右クリック → **デスクトップ設定**
2. **デスクトップテーマ**：Hentai-Senpaiを設定
3. 個々のコンポーネントをカスタマイズ：
   - **コントロール**：Hentai-Senpai
   - **デスクトップ**：お好みで
   - **アイコン**：お好みで
   - **マウスポインター**：お好みで

## 高度なカスタマイズ

### ウィンドウボタンレイアウトの変更

ウィンドウ装飾用に`metacity-theme-1.xml`を編集：

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### シェル要素のカスタマイズ

GNOME Shellの変更用：

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

一般的な変更：
- パネルの高さ
- メニューのスタイリング
- カレンダーの外観

## より良い結果のためのヒント

1. **Nordカラーパレット**と一貫性のあるアイコンテーマを使用
2. テーマにターミナルの色を合わせる（[カラーパレット](カラーパレット)を参照）
3. **変更を段階的にテスト** - 一度に一つずつ変更
4. **動作中の設定のバックアップ**を保持

## カスタマイズの共有

素晴らしいものを作成しましたか？検討してください：
- [Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)でスクリーンショットを共有
- [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)で改善を送信
