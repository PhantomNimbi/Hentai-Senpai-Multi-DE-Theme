# トラブルシューティング

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Troubleshooting" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Resolution-de-Problemes" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Fehlerbehebung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Risoluzione-Problemi" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="トラブルシューティング" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="故障排除" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Ustranenie-nepoladok" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Hentai-Senpai GTKテーマの一般的な問題と解決策。

## 目次

- [テーマが適用されない](#テーマが適用されない)
- [アイコンが正しく表示されない](#アイコンが正しく表示されない)
- [Flatpakアプリがテーマ化されていない](#flatpakアプリがテーマ化されていない)
- [ビルドエラー](#ビルドエラー)
- [GTK4/libadwaitaアプリの外観が異なる](#gtk4libadwaitaアプリの外観が異なる)
- [パフォーマンス問題](#パフォーマンス問題)
- [ヘルプを得る](#ヘルプを得る)

## テーマが適用されない

### 問題
テーマが設定に表示されないか、選択後に適用されない。

### 解決策

1. **インストール場所を確認：**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **正しいインストールを確認：**
   ```bash
   # テーマファイルが表示されるはず
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **セッションを再起動：**
   - ログアウトして再ログイン
   - またはデスクトップ環境を再起動

4. **GNOMEの場合 - User Themes拡張を確認：**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   有効でない場合：
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## アイコンが正しく表示されない

### 問題
アイコンが破損しているか、デフォルトのシステムアイコンとして表示される。

### 解決策

1. **互換性のあるアイコンテーマをインストール：**
   - 推奨：[Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)、[Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme)、または[Nordic](https://github.com/EliverLara/Nordic)

2. **アイコンテーマのインストールを確認：**
   ```bash
   ls ~/.icons/  # または /usr/share/icons/
   ```

3. **アイコンテーマを適用**する（デスクトップ環境の設定で）。

## Flatpakアプリがテーマ化されていない

### 問題
FlatpakアプリケーションがHentai-Senpaiの代わりにデフォルトのAdwaitaテーマを使用している。

### 解決策

1. **Flatpakにテーマへのアクセスを許可：**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Flatpakテーマパッケージをインストール：**
   ```bash
   ./install.sh -f
   ```

3. **Flatpak用のGTKテーマを設定：**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Flatpakアプリケーションを再起動**して変更を反映。

## ビルドエラー

### 問題
テーマのインストールまたはビルド中にエラーが発生。

### 解決策

1. **Sassコンパイラをインストール：**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **欠落している依存関係を確認：**
   ```bash
   # sasscがインストールされているか確認
   which sassc
   sassc --version
   ```

3. **クリーンして再ビルド：**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## GTK4/libadwaitaアプリの外観が異なる

### 問題
GTK4またはlibadwaitaアプリケーションがテーマと完全に一致しない。

### 解決策

1. **libadwaitaリンクを有効化：**
   ```bash
   ./install.sh -l
   ```

2. **注：** GTK4/libadwaitaアプリは設計上、テーマサポートが制限されています。一部の視覚的な違いは予期されるものです。

## パフォーマンス問題

### 問題
テーマ適用後、システムが遅く感じる。

### 解決策

1. **アニメーションを無効化**（必要に応じて）：
   - GNOME：`gsettings set org.gnome.desktop.interface enable-animations false`

2. **テーマプロセスによる高いCPU使用率**を確認。

3. **利用可能であれば、軽量なバリアント**を使用。

## ヘルプを得る

問題がここにリストされていない場合：

1. **既存のissueを検索：**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **新しいissueを作成**する際は以下を含める：
   - ディストリビューションとバージョン
   - デスクトップ環境とバージョン
   - 問題を再現する手順
   - スクリーンショット（該当する場合）
   - エラーメッセージ（ある場合）

3. **正しいセットアップ手順については[インストールガイド](インストールガイド)**を参照。
