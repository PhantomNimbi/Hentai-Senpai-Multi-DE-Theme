<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 言語</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;"><strong>🇯🇵 日本語</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../ko-kr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇰🇷 한국어</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# 変更履歴

Hentai-Senpai GTK Themeプロジェクトのすべての重要な変更は、このファイルに記録されます。

この形式は[Keep a Changelog](https://keepachangelog.com/en/1.0.0/)に基づいており、このプロジェクトは[Semantic Versioning](https://semver.org/spec/v2.0.0.html)に準拠しています。

## [未リリース]

### 追加

- **GitHub Issueテンプレート**
  - 環境チェックリスト付きバグ報告テンプレート
  - ユースケースセクション付き機能リクエストテンプレート
  - 質問・サポートテンプレート
  - コンタクトリンク付き設定ファイル
- **コントリビューションガイドライン**
  - 包括的な`docs/CONTRIBUTING.md`に含まれる内容：
    - 開発セットアップ手順
    - CSSおよびシェルスクリプトのコードスタイルガイドライン
    - コミットメッセージ規約
    - プルリクエストプロセス
    - テスト手順
    - コミュニティガイドライン
- **ドキュメントの強化**
  - 包括的なドキュメントランディングページとして`docs/HOME.md`を追加
  - 簡単なナビゲーションのため`docs/README.md`を簡略化
  - 一貫したフォーマットと相互参照ですべてのドキュメントファイルを更新
- **翻訳サポート**
  - すべてのマークダウンドキュメントファイルに翻訳バーを追加
  - 9言語サポート：英語、日本語、スペイン語、フランス語、ドイツ語、中国語、韓国語、ロシア語、ポルトガル語
- **ソーシャルメディア統合**
  - Twitter/X、Reddit、Facebook、LinkedIn、Mastodon、Telegramの共有ボタン
  - バージョン、ライセンス、スター、コントリビューター、Issueを表示するステータスシールド
- **多言語ドキュメント**
  - docsをロケールベースのフォルダ（en-us、pt-br、es-es、fr-fr、de-de、it-it、ja-jp、zh-cn、ru-ru）に再構成
  - 9言語の完全な翻訳
  - すべてのドキュメントページに言語セレクタードロップダウン
  - 9言語をサポートするようGitHub Actionsワークフローを更新
- **ギャラリーページ**
  - テーマプレビューと壁紙を展示するGallery.mdを作成
  - preview-1.pngおよびpreview-2.png画像を表示
  - 利用可能なすべての6つの壁紙を表示
  - 9言語で利用可能
  - 修正：すべてのロケールフォルダにGallery.mdファイルを実際に作成
  - 修正：プレビュー画像の割り当てを修正（preview-2.png = デスクトップ、preview-1.png = アプリケーション）
  - 修正：壁紙の説明を修正（ミニマル、モノクロ、エッチなテーマ）
- **GitHub Discussions**
  - 包括的なディスカッションカテゴリを作成：一般、ショーケース、Q&A、アイデア、開発、アナウンス
  - 各カテゴリのディスカッションテンプレートを追加
  - 使用手順を含むDISCUSSION_GUIDE.mdを作成
  - ベストプラクティスとコミュニティガイドラインを定義
  - テンプレート管理のために別の`discussions`ブランチに移動
  - テンプレートから投稿を生成するsetup-discussions.ymlワークフローを作成

### 変更

- **ドキュメント構造**：フラットファイル構造からロケールベースのフォルダに移行
- **プレビュー画像**：SVGプレビュー画像を削除し、PNGプレビューのみ保持
- **Wikiワークフロー**：9言語のロケールベースのドキュメント構造を処理するよう更新
- **スクリプト構成**：`apply-theme.sh`を`apply.sh`にリネームし、`scripts/`ディレクトリに移動
  - ドキュメントとコード内のすべての参照を更新
  - すべてのスクリプトを`scripts/`ディレクトリに統合

### 変更

- **ドキュメントの再構築**：
  - `docs/README.md`はシンプルなナビゲーションインデックスとして機能
  - `docs/HOME.md`は包括的なドキュメント概要を提供
  - 一貫性のためにすべての内部ドキュメントリンクを更新
- **READMEの改善**：
  - 言語翻訳バーを追加
  - ソーシャルメディア共有ボタンを追加
  - GitHubステータスシールドを追加
  - ガイドラインへのリンクでコントリビューションセクションを強化
- **ナビゲーションの更新**：
  - すべてのドキュメントナビゲーションにコントリビューションガイドを追加
  - 一貫性のためにすべてのドキュメントのフッターリンクを更新

### 修正

- すべてのマークダウンファイル間のドキュメントリンクの一貫性
- インストールガイドのフォーマットと明確性の改善
- ドキュメントファイル間の相互参照リンク

## [1.0.0] - 2026-05-03

### 追加

- Hentai-Senpai Themeの**初期リリース**
- 完全なGTKテーマサポート：
  - 完全なウィジェットスタイリングとアセットを備えたGTK 2.0
  - 包括的なCSSテーマのGTK 3.0
  - モダンCSSとカスタムプロパティのGTK 4.0
- **GNOME Shell 40+** 完全テーマ、以下を含む：
  - 透明度サポート付きパネルスタイリング
  - オーバービューとアプリグリッドのテーマ
  - 通知とカレンダーのスタイリング
  - システムメニューとポップオーバー
  - ウィンドウプレビューとAlt+Tab
- **Cinnamon** デスクトップ環境サポート（パネルとメニューのテーマ）
- **XFWM4** ウィンドウマネージャーテーマ
- **Metacity** ウィンドウ装飾サポート
- **Nordカラーパレット**統合：
  - **Polar Night**背景色（`#2e3440`、`#3b4252`、`#434c5e`、`#4c566a`）
  - **Snow Storm**テキスト色（`#d8dee9`、`#e5e9f0`、`#eceff4`）
  - **Frost**アクセント色（`#8fbcbb`、`#88c0d0`、`#81a1c1`、`#5e81ac`）
  - **Aurora**セマンティック色（`#bf616a`、`#d08770`、`#ebcb8b`、`#a3be8c`、`#b48ead`）
- **Material Design**原則：
  - ボタン、カード、エントリの12px角丸
  - ポップオーバーの20pxボーダー半径
  - 円形チェックボックスとラジオボタン（9999px半径）
  - エレベーションシャドウと奥行き効果
  - インタラクティブ要素のリップル効果
- 包括的なオプションを備えた**インストールスクリプト**（`install.sh`）：
  - インストールとアンインストール機能
  - 更新/再インストール機能
  - カスタムデスティネーションと名前オプション
  - GTK4アプリケーションのLibadwaita修正
  - サンドボックス化されたアプリのFlatpakテーマ修正
  - ドックテーマスタイリング（透明およびソリッドバリアント）
  - 壁紙インストール
  - 自動インストール付き依存関係チェック
  - システム情報と互換性表示
- 自動テーマアクティベーション用の**テーマ適用スクリプト**（`scripts/apply.sh`）
- 適切なNordカラー統合を備えた**透明Plankドックテーマ**
- **包括的なドキュメント**：
  - 詳細なオプションを備えたインストールガイド
  - 一般的な問題のトラブルシューティングガイド
  - 使用例を含むカラーパレットリファレンス
  - テーマのカスタマイズガイド
- Nordにインスパイアされたデザインの**壁紙コレクション**

### テーマコンポーネント

| コンポーネント | 説明 |
|-----------|-------------|
| **GTK 2.0** | 画像アセットを備えた完全なウィジェットスタイリング |
| **GTK 3.0** | すべてのウィジェットの完全なCSSテーマ |
| **GTK 4.0** | カスタムプロパティと変数を備えたモダンCSS |
| **GNOME Shell** | すべてのUI要素を備えた完全なシェルテーマ |
| **Cinnamon** | デスクトップとパネルのテーマ |
| **XFWM4** | XFCE用ウィンドウ装飾 |
| **Metacity** | MATEおよびその他用ウィンドウ装飾 |
| **Plank** | 透明ドックテーマ |

### サポートされているデスクトップ環境

- GNOME 40+
- Cinnamon 4.0+
- XFCE（xfwm4付き）
- Budgie 10.5+
- MATE 1.24+

[未リリース]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
