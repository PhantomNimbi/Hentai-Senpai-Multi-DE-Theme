<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
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

# Hentai-Senpai テーマ

OrchisをベースにNordカラーを使用した美しいダークGTKテーマです。このテーマは、長時間のコーディングセッションや日常使用時に目に優しい、慎重に選択されたカラースキームで、Linuxデスクトップにモダンで統一感のある外観をもたらします。

![ヒーロースクリーンショット](../../assets/screenshots/hero.png)

## 要件

インストール前に、以下を用意してください：

- **GTKライブラリ**：GTK 2、GTK 3、GTK 4の開発ライブラリ
- **Git**：リポジトリをクローンするため
- **Sassコンパイラ**：`sassc`（推奨）または`dart-sass`
- **Linuxシステム**：GTKベースのデスクトップ環境を搭載した任意のディストリビューション（GNOME、Cinnamon、XFCE、Budgie、MATEなど）
- **ディスク容量**：約50MBの空き容量

### 依存関係のインストール（Ubuntu/Debian）：
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### 依存関係のインストール（Fedora）：
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### 依存関係のインストール（Arch）：
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## クイックスタート

最も速く始める方法：

```bash
# 基本的なインストール
./install.sh

# すべての修正とオプションを含む完全インストール
./install.sh --update -l -f --dock

# テーマを適用
./scripts/apply.sh
```

### よく使うワンライナー

```bash
# ワンコマンドでクローンとインストール
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# 既存のインストールを更新
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## インストールオプション

| オプション | 説明 |
|-----------|------|
| `--update` | テーマを更新/再インストール（カスタマイズを保持） |
| `-l, --libadwaita` | GTK4/libadwaitaアプリケーションのテーマ修正 |
| `-f, --flatpak` | Flatpakサンドボックスアプリケーションのテーマ修正 |
| `--dock [タイプ]` | ドックテーマを適用（transparent、solid、blur） |
| `-w, --wallpapers` | テーマの壁紙をインストールして適用 |
| `-d, --dest ディレクトリ` | カスタムインストールディレクトリ（デフォルト：~/.themes） |
| `-t, --theme バリアント` | 特定のカラーバリアントをインストール |
| `-c, --color バリアント` | 特定のアクセントカラーをインストール |
| `-s, --size サイズ` | 特定のサイズバリアントをインストール（standard、compact） |
| `-h, --help` | 詳細なヘルプメッセージを表示 |

### 例：

```bash
# 透明ドックとすべての修正を含めてインストール
./install.sh -l -f --dock transparent

# システム全体のディレクトリにインストール
sudo ./install.sh -d /usr/share/themes

# ブルーアクセントのダークバリアントのみをインストール
./install.sh -t dark -c blue
```

## よくある問題

### テーマが適用されない？
- **GNOMEユーザー**：GNOME拡張機能で「ユーザーテーマ」拡張機能を有効にしてください
- **その他のDE**：互換性のあるテーマエンジンがインストールされていることを確認してください
- ログアウトして再度ログインするか、デスクトップ環境を再起動してみてください

### Flatpakアプリにテーマが適用されない？
`--flatpak`フラグ付きでインストールスクリプトを実行してください：
```bash
./install.sh -f
```

### GTK4/libadwaitaアプリが違って見える？
libadwaita修正を適用してください：
```bash
./install.sh -l
```

### アイコンが欠けている？
以下の推奨アイコンテーマのいずれかをインストールしてください：
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## 機能

- **ダークでエレガントなNordカラー**：快適な視聴体験のための人気のNordカラーパレットをベースに
- **Material Designの原則**：GoogleのMaterial Designガイドラインに従ったモダンでクリーンなインターフェース
- **マルチDEサポート**：GNOME、Cinnamon、XFCE、Budgie、MATE、その他のGTKベースのデスクトップ環境で動作
- **完全なGTKサポート**：GTK 2、GTK 3、GTK 4、GNOME Shell、ウィンドウ装飾をカバー
- **モダンなGTK4/libadwaitaサポート**：最新のGTK4アプリケーションとの完全な互換性
- **Flatpak対応**：Flatpakサンドボックスアプリケーションのシームレスなテーマ適用
- **カスタマイズ可能**：複数のカラーバリアント、サイズ、アクセントカラーを利用可能
- **ドックテーマ**：透明、ソリッド、ブラーのドックスタイリングオプション
- **壁紙コレクション**：テーマに完璧にマッチする厳選された壁紙

## 貢献

コミュニティからの貢献を歓迎します！以下の方法でご協力いただけます：

- **バグを見つけましたか？** [GitHub Issuesで報告してください](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - スクリーンショットとシステム詳細を含めてください
- **提案がありますか？** [GitHub Discussionsを開いてください](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - 改善のアイデアを共有してください
- **手伝いたいですか？** [貢献ガイド](貢献)をご覧ください - プルリクエストの提出方法、バグ報告、コード貢献の方法を学びます

## クイックリンク

- [インストールガイド](インストールガイド) - 詳細なインストール手順
- [トラブルシューティング](トラブルシューティング) - よくある問題の解決策
- [カスタマイズ](カスタマイズ) - テーマのカスタマイズ方法
- [カラーパレット](カラーパレット) - テーマカラーのリファレンス
- [貢献](貢献) - プロジェクトへの貢献方法

## GitHubで見る

[GitHubで見る](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
