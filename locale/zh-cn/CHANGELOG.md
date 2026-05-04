<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../ko-kr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇰🇷 한국어</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;"><strong>🇨🇳 中文</strong></a></div>
      <div><a href="../ru-ru/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# 更新日志

Hentai-Senpai GTK Theme项目的所有重要更改都将记录在此文件中。

格式基于[Keep a Changelog](https://keepachangelog.com/en/1.0.0/)，
本项目遵循[Semantic Versioning](https://semver.org/spec/v2.0.0.html)。

## [未发布]

### 新增

- **GitHub Issue模板**
  - 带环境检查清单的错误报告模板
  - 带用例部分的功能请求模板
  - 问题/支持模板
  - 带联系链接的配置文件
- **贡献指南**
  - 全面的`docs/CONTRIBUTING.md`，包含：
    - 开发设置说明
    - CSS和shell脚本的代码风格指南
    - 提交消息规范
    - 拉取请求流程
    - 测试程序
    - 社区指南
- **增强文档**
  - 添加`docs/HOME.md`作为全面的文档着陆页
  - 简化`docs/README.md`以便导航
  - 更新所有文档文件，采用一致的格式和交叉引用
- **翻译支持**
  - 为所有markdown文档文件添加翻译栏
  - 支持9种语言：英语、日语、西班牙语、法语、德语、中文、韩语、俄语、葡萄牙语
- **社交媒体集成**
  - Twitter/X、Reddit、Facebook、LinkedIn、Mastodon和Telegram的分享按钮
  - 显示版本、许可证、星标、贡献者和问题的状态徽章
- **多语言文档**
  - 将文档重构为基于区域设置的文件夹（en-us、pt-br、es-es、fr-fr、de-de、it-it、ja-jp、zh-cn、ru-ru）
  - 9种语言的完整翻译
  - 所有文档页面上的语言选择下拉菜单
  - 更新GitHub Actions工作流以支持所有9种语言
- **图库页面**
  - 创建Gallery.md展示主题预览和壁纸
  - 显示preview-1.png和preview-2.png图片
  - 显示所有6张可用壁纸
  - 提供所有9种语言版本
  - 修复：实际在所有区域设置文件夹中创建Gallery.md文件
  - 修复：更正预览图片分配（preview-2.png = 桌面，preview-1.png = 应用程序）
  - 修复：更正壁纸描述（简约、单色、ecchi主题）
- **GitHub Discussions**
  - 创建全面的讨论类别：常规、展示、问答、想法、开发、公告
  - 为每个类别添加讨论模板
  - 创建包含使用说明的DISCUSSION_GUIDE.md
  - 定义最佳实践和社区指南
  - 移至单独的`discussions`分支进行模板管理
  - 创建setup-discussions.yml工作流以从模板生成帖子

### 变更

- **文档结构**：从扁平文件结构移至基于区域设置的文件夹
- **预览图片**：移除SVG预览图片，仅保留PNG预览
- **Wiki工作流**：更新以处理9种语言的基于区域设置的文档结构
- **脚本组织**：将`apply-theme.sh`重命名为`apply.sh`并移至`scripts/`目录
  - 更新文档和代码中的所有引用
  - 将所有脚本整合到`scripts/`目录中

### 变更

- **文档重构**：
  - `docs/README.md`现在用作简单的导航索引
  - `docs/HOME.md`提供全面的文档概述
  - 更新所有内部文档链接以保持一致性
- **README改进**：
  - 添加语言翻译栏
  - 添加社交媒体分享按钮
  - 添加GitHub状态徽章
  - 增强贡献部分，链接到指南
- **导航更新**：
  - 将贡献指南添加到所有文档导航中
  - 更新所有文档的页脚链接以保持一致性

### 修复

- 所有markdown文件之间的文档链接一致性
- 安装指南的格式和清晰度改进
- 文档文件之间的交叉引用链接

## [1.0.0] - 2026-05-03

### 新增

- Hentai-Senpai Theme的**初始发布**
- 完整的GTK主题支持：
  - 具有完整小部件样式和资源资源的GTK 2.0
  - 具有完整CSS主题的GTK 3.0
  - 具有现代CSS和自定义属性的GTK 4.0
- **GNOME Shell 40+**完整主题，包括：
  - 支持透明度的面板样式
  - 概览和应用程序网格主题
  - 通知和日历样式
  - 系统菜单和弹出窗口
  - 窗口预览和Alt+Tab
- 具有面板和菜单主题的**Cinnamon**桌面环境支持
- **XFWM4**窗口管理器主题
- **Metacity**窗口装饰支持
- **Nord调色板**集成：
  - **Polar Night**背景色（`#2e3440`、`#3b4252`、`#434c5e`、`#4c566a`）
  - **Snow Storm**文本颜色（`#d8dee9`、`#e5e9f0`、`#eceff4`）
  - **Frost**强调色（`#8fbcbb`、`#88c0d0`、`#81a1c1`、`#5e81ac`）
  - **Aurora**语义颜色（`#bf616a`、`#d08770`、`#ebcb8b`、`#a3be8c`、`#b48ead`）
- **Material Design**原则：
  - 按钮、卡片和输入框的12px圆角
  - 弹出窗口的20px边框半径
  - 圆形复选框和单选按钮（9999px半径）
  - 提升阴影和深度效果
  - 交互元素上的涟漪效果
- 具有全面选项的**安装脚本**（`install.sh`）：
  - 安装和卸载功能
  - 更新/重新安装能力
  - 自定义目标和名称选项
  - GTK4应用程序的Libadwaita修复
  - 沙盒应用程序的Flatpak主题修复
  - 停靠主题样式（透明和实心变体）
  - 壁纸安装
  - 具有自动安装的依赖项检查
  - 系统信息和兼容性显示
- 用于自动主题激活的**主题应用脚本**（`scripts/apply.sh`）
- 具有适当Nord颜色集成的**透明Plank停靠主题**
- **全面文档**：
  - 具有详细选项的安装指南
  - 常见问题的故障排除指南
  - 带有使用示例的调色板参考
  - 用于个性化主题的自定义指南
- 具有Nord启发设计的**壁纸集合**

### 主题组件

| 组件 | 描述 |
|-----------|-------------|
| **GTK 2.0** | 具有图像资源的完整小部件样式 |
| **GTK 3.0** | 具有所有小部件的完整CSS主题 |
| **GTK 4.0** | 具有自定义属性和变量的现代CSS |
| **GNOME Shell** | 具有所有UI元素的完整Shell主题 |
| **Cinnamon** | 桌面和面板主题 |
| **XFWM4** | XFCE的窗口装饰 |
| **Metacity** | MATE及其他系统的窗口装饰 |
| **Plank** | 透明停靠主题 |

### 支持的桌面环境

- GNOME 40+
- Cinnamon 4.0+
- XFCE（使用xfwm4）
- Budgie 10.5+
- MATE 1.24+

[未发布]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
