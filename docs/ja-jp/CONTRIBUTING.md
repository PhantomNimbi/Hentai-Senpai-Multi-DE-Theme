# 貢献

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Contributing" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribution" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Mitwirken" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribuire" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="貢献" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="贡献" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Uchastie" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Hentai-Senpai GTKテーマへの貢献にご興味をお持ちいただき、ありがとうございます！🎉

## 目次

- [貢献方法](#貢献方法)
- [問題の報告](#問題の報告)
- [コードスタイル](#コードスタイル)
- [ドキュメント](#ドキュメント)
- [翻訳](#翻訳)
- [開発セットアップ](#開発セットアップ)

## 貢献方法

このプロジェクトに貢献する方法はたくさんあります：

1. **バグを報告** - 問題を見つけましたか？お知らせください！
2. **機能を提案** - アイデアがありますか？ぜひお聞かせください！
3. **修正を送信** - コードの改善はいつでも歓迎します
4. **ドキュメントを改善** - ドキュメントをより明確にするお手伝いを
5. **翻訳** - テーマをグローバルにアクセス可能にするお手伝いを
6. **共有** - テーマについて広めてください

### 貢献ワークフロー

1. GitHubで**リポジトリをフォーク**
2. 機能/修正用に**新しいブランチを作成**：
   ```bash
   git checkout -b feature/my-new-feature
   # または
   git checkout -b fix/issue-description
   ```
3. 明確で焦点を絞ったコミットで**変更を行う**
4. **変更を徹底的にテスト**
5. 明確な説明で**Pull Requestを送信**

## 問題の報告

### 報告前に

- [ ] 重複を避けるために既存の[issue](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)を検索
- [ ] 最新バージョンで問題が存在するか確認
- [ ] 問題を分離してみる

### バグレポートの作成

以下の情報を含める：

| 項目 | 説明 |
|------|------|
| **タイトル** | 明確で説明的なタイトル |
| **説明** | 問題の詳細な説明 |
| **再現手順** | バグを再現するための番号付き手順 |
| **期待される動作** | 何が起こるべきか |
| **実際の動作** | 実際に何が起こるか |
| **スクリーンショット** | 視覚的証拠（該当する場合） |
| **システム情報** | OS、DE/WM、GTKバージョン |

### バグレポートテンプレート例

```markdown
**説明：**
GTK4アプリケーションにテーマが適用されない

**再現手順：**
1. `./install.sh`でテーマをインストール
2. GTK4アプリケーションを開く（例：GNOMEテキストエディタ）
3. デフォルトのAdwaitaスタイルを確認

**期待される動作：**
アプリケーションはHentai-Senpaiテーマを使用すべき

**実際の動作：**
アプリケーションはデフォルトのAdwaitaテーマを使用

**システム：**
- OS: Ubuntu 22.04
- DE: GNOME 42
- GTK: 4.6
```

## コードスタイル

### CSS/スタイリング

- インデントに2スペースを使用
- 関連するプロパティをグループ化
- 意味のある変数名を使用
- 複雑なセクションにコメントを追加

例：
```css
/* プライマリボタンのスタイリング */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* ホバー状態 */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### シェルスクリプト

- `#!/bin/bash`シバンを使用
- すべての変数を引用符で囲む：`"$variable"`
- 意味のある関数名を使用
- 複雑なロジックにコメントを追加

### コミットメッセージ

コミットメッセージはconventional commits形式に従う：

```
type(scope): subject

body (オプション)

footer (オプション)
```

**タイプ：**
- `feat`：新機能
- `fix`：バグ修正
- `docs`：ドキュメント変更
- `style`：コードスタイル変更（フォーマット）
- `refactor`：コードリファクタリング
- `test`：テストの追加または更新
- `chore`：メンテナンスタスク

**例：**
```
feat(gtk3): 角丸サポートを追加
fix(install): Fedoraでのパス問題を解決
docs(readme): インストール手順を更新
```

## ドキュメント

### ドキュメントの改善

ドキュメントの改善は非常に価値があります！以下ができます：

- タイプミスと文法を修正
- 例とスクリーンショットを追加
- 混乱したセクションを明確に
- 欠けている情報を追加
- 他の言語に翻訳

### ドキュメント構造

```
docs/
├── INSTALLATION.md      # インストールガイド
├── TROUBLESHOOTING.md   # 問題解決
├── CUSTOMIZATION.md     # カスタマイズガイド
├── COLOR_PALETTE.md     # カラーリファレンス
└── CONTRIBUTING.md      # このファイル
```

### スクリーンショットの追加

視覚的なドキュメントを追加する際：

1. スクリーンショットはPNG形式を使用
2. ファイルサイズを適切に保つ（500KB未満）
3. 説明的なファイル名を使用
4. 特定の機能に焦点を当てる

## 翻訳

### ドキュメントの翻訳

新しい言語翻訳を追加するには：

1. **英語のファイルをコピー：**
   ```bash
   cp docs/INSTALLATION.md docs/INSTALLATION-ja.md
   ```

2. 新しいファイルで**コンテンツを翻訳**

3. ワークフローで**翻訳バーを更新**：
   - `.github/workflows/generate-wiki.yml`を編集
   - Home.md翻訳バーに新しい言語を追加

4. **サポートされている言語コード：**
   | コード | 言語 |
   |--------|------|
   | `pt` | ポルトガル語 |
   | `es` | スペイン語 |
   | `fr` | フランス語 |
   | `de` | ドイツ語 |
   | `it` | イタリア語 |
   | `ja` | 日本語 |
   | `zh` | 中国語 |

### 翻訳のヒント

- 直接的な翻訳がない場合は技術用語を英語のままにする
- 同じMarkdown構造を維持
- リンクを翻訳されたページを指すように更新
- 送信前にレンダリングをテスト

## 開発セットアップ

### 前提条件

```bash
# 必要なツールをインストール
sudo apt install git sassc inkscape optipng
```

### ソースからビルド

```bash
# リポジトリをクローン
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# 依存関係をインストール
# （上記の前提条件セクションを参照）

# テーマをビルド
./install.sh

# ローカルでテスト
./apply-theme.sh
```

### プロジェクト構造

```
Hentai-Senpai-GTK-Theme/
├── src/                    # ソースファイル
│   ├── gtk-2.0/           # GTK2テーマ
│   ├── gtk-3.0/           # GTK3テーマ
│   ├── gtk-4.0/           # GTK4テーマ
│   ├── gnome-shell/       # GNOME Shellテーマ
│   ├── cinnamon/          # Cinnamonテーマ
│   ├── xfwm4/             # XFWMテーマ
│   └── metacity-1/        # Metacityテーマ
├── scripts/               # ビルドスクリプト
├── install.sh             # メインインストーラー
└── docs/                  # ドキュメント（このブランチ）
```

## 質問？

- **一般的な質問：** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **バグ報告：** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **直接連絡：** `question`ラベル付きのissueを開く

## 行動規範

- 敬意を持ち建設的である
- 人ではなく問題に焦点を当てる
- 建設的な批判を優雅に受け入れる
- 歓迎されるコミュニティを作るのを手伝う

貢献ありがとうございます！💜
