<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
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

# Hentai-Senpai 主题

基于Orchis和Nord配色的精美深色GTK主题。这个主题通过精心挑选的配色方案，为您的Linux桌面带来现代、统一的外观，在长时间的编程会话或日常使用中都能让您感到舒适。

![主屏幕截图](../../assets/screenshots/hero.png)

## 系统要求

安装之前，请确保您已安装：

- **GTK库**：GTK 2、GTK 3和GTK 4开发库
- **Git**：用于克隆仓库
- **Sass编译器**：`sassc`（推荐）或`dart-sass`
- **Linux系统**：任何带有GTK桌面环境的发行版（GNOME、Cinnamon、XFCE、Budgie、MATE等）
- **磁盘空间**：约50MB可用空间

### 安装依赖（Ubuntu/Debian）：
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### 安装依赖（Fedora）：
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### 安装依赖（Arch）：
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## 快速开始

最快的开始方式：

```bash
# 基础安装
./install.sh

# 包含所有修复和选项的完整安装
./install.sh --update -l -f --dock

# 应用主题
./scripts/apply.sh
```

### 常用一键命令

```bash
# 一键克隆并安装
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# 更新现有安装
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## 安装选项

| 选项 | 说明 |
|------|------|
| `--update` | 更新/重新安装主题（保留自定义设置） |
| `-l, --libadwaita` | 修复GTK4/libadwaita应用程序主题 |
| `-f, --flatpak` | 修复Flatpak沙盒应用程序主题 |
| `--dock [类型]` | 应用dock主题（transparent、solid或blur） |
| `-w, --wallpapers` | 安装并应用主题壁纸 |
| `-d, --dest 目录` | 自定义安装目录（默认：~/.themes） |
| `-t, --theme 变体` | 安装特定颜色变体 |
| `-c, --color 变体` | 安装特定强调色 |
| `-s, --size 大小` | 安装特定大小变体（standard、compact） |
| `-h, --help` | 显示详细帮助信息 |

### 示例：

```bash
# 安装透明dock和所有修复
./install.sh -l -f --dock transparent

# 安装到系统范围目录
sudo ./install.sh -d /usr/share/themes

# 仅安装蓝色强调色的深色变体
./install.sh -t dark -c blue
```

## 常见问题

### 主题未应用？
- **GNOME用户**：在GNOME扩展中启用"用户主题"扩展
- **其他桌面环境**：确保安装了兼容的主题引擎
- 尝试注销并重新登录，或重启桌面环境

### Flatpak应用没有主题？
使用`--flatpak`标志运行安装脚本：
```bash
./install.sh -f
```

### GTK4/libadwaita应用看起来不同？
应用libadwaita修复：
```bash
./install.sh -l
```

### 缺少图标？
安装以下推荐的图标主题之一：
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## 功能特性

- **深色优雅的Nord配色**：基于流行的Nord配色方案，提供舒适的视觉体验
- **Material Design原则**：遵循Google Material Design指南的现代简洁界面
- **多桌面环境支持**：适用于GNOME、Cinnamon、XFCE、Budgie、MATE和其他GTK桌面环境
- **完整的GTK支持**：涵盖GTK 2、GTK 3、GTK 4、GNOME Shell和窗口装饰
- **现代GTK4/libadwaita支持**：与最新GTK4应用程序完全兼容
- **Flatpak就绪**：无缝主题化Flatpak沙盒应用程序
- **可自定义**：提供多种颜色变体、大小和强调色
- **Dock主题**：可选的透明、实心或模糊dock样式
- **壁纸集合**：与主题完美匹配的精选壁纸

## 参与贡献

我们欢迎社区的贡献！以下是您可以帮助的方式：

- **发现bug？** [在GitHub Issues上报告](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - 请包含截图和系统详情
- **有建议？** [开启GitHub Discussion](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - 分享您的改进想法
- **想要帮助？** 查看我们的[贡献指南](贡献) - 学习如何提交pull request、报告bug和贡献代码

## 快速链接

- [安装指南](安装指南) - 详细安装说明
- [故障排除](故障排除) - 常见问题的解决方案
- [自定义](自定义) - 如何自定义主题
- [调色板](调色板) - 主题颜色参考
- [贡献](贡献) - 如何为项目做出贡献

## 在GitHub上查看

[在GitHub上查看](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
