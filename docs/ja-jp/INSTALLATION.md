# インストールガイド

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Installation-Guide" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Guide-d-Installation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsanleitung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Guida-Installazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="インストールガイド" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="安装指南" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Rukovodstvo-po-ustanovke" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

このガイドは、Hentai-Senpai GTKテーマをLinuxシステムにインストールするのに役立ちます。

## 目次

- [前提条件](#前提条件)
- [クイックインストール](#クイックインストール)
- [インストールオプション](#インストールオプション)
- [デスクトップ環境固有](#デスクトップ環境固有)
- [Flatpakサポート](#flatpakサポート)
- [アンインストール](#アンインストール)

## 前提条件

インストール前に、以下を確認してください：

- **GTKライブラリ**：GTK 2、GTK 3、および/またはGTK 4（システムに応じて）
- **Git**：リポジトリをクローンするため
- **Sassコンパイラ**：`sassc`または`dart-sass`（ソースからビルドするため）
- **rootアクセス**：システム全体にインストールする場合のみ

### 依存関係のインストール

**Debian/Ubuntu：**
```bash
sudo apt install git sassc
```

**Fedora：**
```bash
sudo dnf install git sassc
```

**Arch Linux：**
```bash
sudo pacman -S git sassc
```

## クイックインストール

最速のインストール方法：

```bash
# リポジトリをクローン
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# テーマをインストール
./install.sh --update -l -f --dock

# テーマを適用
./apply-theme.sh
```

## インストールオプション

インストールスクリプトは様々なオプションをサポートしています：

| オプション | 説明 |
|------------|------|
| `-d`, `--dest` | インストール先を設定（デフォルト：`~/.themes`） |
| `-n`, `--name` | テーマ名を設定（デフォルト：`Hentai-Senpai`） |
| `-l`, `--libadwaita` | libadwaitaテーマにリンク |
| `-f`, `--flatpak` | Flatpakテーマをインストール |
| `--dock` | ドックテーマをインストール（Plank） |
| `-r`, `--remove` | インストール済みテーマを削除 |
| `--update` | 既存のインストールを更新 |

### 例

**システム全体へのインストール：**
```bash
sudo ./install.sh -d /usr/share/themes
```

**カスタムテーマ名：**
```bash
./install.sh -n "My-Custom-Theme"
```

**すべての機能をインストール：**
```bash
./install.sh -l -f --dock
```

**テーマを削除：**
```bash
./install.sh -r
```

## デスクトップ環境固有

### GNOME

インストール後、テーマを有効化します：

```bash
# User Themes拡張を有効化（まだ有効でない場合）
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# テーマを適用
./apply-theme.sh
```

または、**設定 > 外観**から手動で設定します。

### Cinnamon

**システム設定 > テーマ**に移動し、`Hentai-Senpai`を選択します。

### XFCE

1. **設定 > 外観**に移動
2. リストから`Hentai-Senpai`を選択
3. **ウィンドウマネージャー**に移動し、そこでもテーマを選択

### MATE

**システム > 設定 > 外観**に移動し、テーマを選択します。

### Budgie

**設定 > デスクトップ > 外観**に移動し、テーマを選択します。

## Flatpakサポート

Flatpakアプリケーションをテーマ化するには：

```bash
# Flatpakアプリにテーマへのアクセスを許可
flatpak override --filesystem=$HOME/.themes

# Flatpakテーマをインストール（インストール時に）
./install.sh -f
```

**注：** 変更を反映させるには、Flatpakアプリケーションを再起動する必要がある場合があります。

## アンインストール

テーマを削除するには：

```bash
./install.sh -r
```

または手動で削除：
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## 次のステップ

- テーマをパーソナライズするには[カスタマイズガイド](カスタマイズ)を読む
- 問題が発生した場合は[トラブルシューティング](トラブルシューティング)を確認
- テーマカラーについては[カラーパレット](カラーパレット)を参照
