<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../README.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/README.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/README.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/README.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/README.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/README.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/README.md" style="color: #88C0D0; text-decoration: none;"><strong>🇯🇵 日本語</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/README.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/README.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Hentai-Senpai テーマ

[![Version](https://img.shields.io/github/v/release/PhantomNimbi/Hentai-Senpai-GTK-Theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/blob/main/src/COPYING) [![Stars](https://img.shields.io/github/stars/PhantomNimbi/Hentai-Senpai-GTK-Theme?style=flat-square&color=yellow)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/stargazers)

[Nord](https://www.nordtheme.com/) カラーパレットを使用した美しいダークGTKテーマ。

![テーマプレビュー](../../wallpapers/001.png)

## 特徴

- **ダークでエレガント** — 快適なコントラストの深い青灰色の背景
- **Nordカラー** — 明瞭さを重視した北極をイメージしたカラースキーム
- **マテリアルデザイン** — 角丸、滑らかな影、リップルエフェクト
- **マルチDE対応** — GNOME、Cinnamon、XFCE、Budgie、MATE
- **完全なテーマ** — GTK 2/3/4、GNOME Shell、ウィンドウ装飾、壁紙
- **モダンGTK4** — libadwaitaベースのアプリケーションを完全サポート
- **Flatpak対応** — サンドボックス化されたアプリケーションのテーマサポート

## クイックスタート

```bash
# 推奨されるすべての修正を適用してインストール
./install.sh --update -l -f --dock

# テーマを適用
./scripts/apply.sh
```

## 要件

- GTK 3.20+ または GTK 4.0+
- GNOME Shell 40+ (GNOMEユーザーの場合)
- Bash 4.0+

## インストール

```bash
# 基本インストール
./install.sh

# 完全インストール（推奨）— GTK4、Flatpak、ドック修正を含む
./install.sh --update -l -f --dock
```

### インストールオプション

| オプション | ショート | 説明 |
|--------|-------|-------------|
| `--update` | | テーマを更新/再インストール |
| `--uninstall` | `-u` | テーマを削除 |
| `--libadwaita` | `-l` | GTK4/libadwaitaアプリを修正 |
| `--flatpak` | `-f` | Flatpakアプリを修正 |
| `--dock [TYPE]` | | ドックテーマ（transparent\|solid）|
| `--wallpapers` | `-w` | 壁紙をインストール |

## ドキュメント

📚 **[完全なドキュメントWiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — 包括的なガイドとトラブルシューティング

- **[インストールガイド](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — 詳細なセットアップ手順
- **[トラブルシューティング](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — 一般的な問題と解決策
- **[カラーパレット](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Nordカラーリファレンス
- **[カスタマイズ](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — テーマのパーソナライズ
- **[貢献](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — 貢献の方法

## クイック修正

**GTK4アプリがテーマ化されていない？** `./install.sh -l` を実行してからログアウト/ログイン

**Flatpakアプリがテーマ化されていない？** `./install.sh -f` を実行してからFlatpakアプリを再起動

**ドックがスタイル化されていない？** `./install.sh --dock transparent` または `--dock solid`

## 貢献

貢献を歓迎します！ガイドラインについては[貢献ガイド](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)をご覧ください。

- 🐛 [バグを報告](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [機能を提案](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 ドキュメントを改善

## クレジット

- [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) by vinceliuice をベースに作成
- [Nord Theme](https://www.nordtheme.com/) カラーパレット by Arctic Ice Studio

## ライセンス

GPL-3.0 License — 詳細は [COPYING](../../src/COPYING) ファイルを参照

---

**新しいテーマをお楽しみください！** 🎨

ヘルプについては、[ドキュメントWiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)をご確認ください。
