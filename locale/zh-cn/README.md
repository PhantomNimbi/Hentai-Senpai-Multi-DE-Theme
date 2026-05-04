<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../README.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/README.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/README.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/README.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/README.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/README.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/README.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/README.md" style="color: #88C0D0; text-decoration: none;"><strong>🇨🇳 中文</strong></a></div>
      <div><a href="../ru-ru/README.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Hentai-Senpai 主题

[![Version](https://img.shields.io/github/v/release/PhantomNimbi/Hentai-Senpai-GTK-Theme?include_prereleases&label=Version&style=flat-square&color=blue)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/releases) [![License](https://img.shields.io/badge/License-GPL%203.0-blue.svg?style=flat-square)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/blob/main/src/COPYING) [![Stars](https://img.shields.io/github/stars/PhantomNimbi/Hentai-Senpai-GTK-Theme?style=flat-square&color=yellow)](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/stargazers)

基于 [Orchis](https://github.com/vinceliuice/Orchis-theme) 和优雅的 [Nord](https://www.nordtheme.com/) 调色板的精美深色 GTK 主题。

![主题预览](../../wallpapers/001.png)

## 功能特性

- **深色优雅** — 深蓝灰色背景，舒适的对比度
- **Nord 配色** — 北极灵感的配色方案，设计清晰
- **材料设计** — 圆角、平滑阴影、涟漪效果
- **多桌面环境支持** — GNOME、Cinnamon、XFCE、Budgie 和 MATE
- **完整主题** — GTK 2/3/4、GNOME Shell、窗口装饰、壁纸
- **现代 GTK4** — 完全支持基于 libadwaita 的应用程序
- **Flatpak 就绪** — 支持沙盒应用程序的主题

## 快速开始

```bash
# 安装所有推荐的修复
./install.sh --update -l -f --dock

# 应用主题
./scripts/apply.sh
```

## 系统要求

- GTK 3.20+ 或 GTK 4.0+
- GNOME Shell 40+（适用于 GNOME 用户）
- Bash 4.0+

## 安装

```bash
# 基础安装
./install.sh

# 完整安装（推荐）— 包括 GTK4、Flatpak 和 dock 修复
./install.sh --update -l -f --dock
```

### 安装选项

| 选项 | 简写 | 说明 |
|--------|-------|-------------|
| `--update` | | 更新/重新安装主题 |
| `--uninstall` | `-u` | 移除主题 |
| `--libadwaita` | `-l` | 修复 GTK4/libadwaita 应用 |
| `--flatpak` | `-f` | 修复 Flatpak 应用 |
| `--dock [TYPE]` | | Dock 主题（transparent\|solid）|
| `--wallpapers` | `-w` | 安装壁纸 |

## 文档

📚 **[完整文档 Wiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)** — 全面的指南和故障排除

- **[安装指南](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Installation-Guide)** — 详细的设置说明
- **[故障排除](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Troubleshooting)** — 常见问题和解决方案
- **[调色板](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Color-Palette)** — Nord 颜色参考
- **[自定义](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Customization)** — 个性化主题
- **[贡献](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)** — 如何贡献

## 快速修复

**GTK4 应用没有主题？** `./install.sh -l` 然后注销并重新登录

**Flatpak 应用没有主题？** `./install.sh -f` 然后重启 Flatpak 应用

**Dock 没有样式？** `./install.sh --dock transparent` 或 `--dock solid`

## 贡献

欢迎贡献！请参阅[贡献指南](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki/Contributing)了解指南。

- 🐛 [报告错误](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- ✨ [建议功能](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- 📝 改进文档

## 鸣谢

- 基于 [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) by vinceliuice
- [Nord Theme](https://www.nordtheme.com/) 调色板 by Arctic Ice Studio

## 许可证

GPL-3.0 许可证 — 详情请参阅 [COPYING](../../src/COPYING) 文件。

---

**享受你的新主题！** 🎨

如需帮助，请查看[文档 wiki](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/wiki)。
