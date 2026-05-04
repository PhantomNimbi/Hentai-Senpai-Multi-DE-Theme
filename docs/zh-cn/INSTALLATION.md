# 安装指南

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Installation-Guide" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Guide-d-Installation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsanleitung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Guida-Installazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsguide-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="安装指南" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Rukovodstvo-po-ustanovke" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

本指南将帮助您在Linux系统上安装Hentai-Senpai GTK主题。

## 目录

- [前提条件](#前提条件)
- [快速安装](#快速安装)
- [安装选项](#安装选项)
- [桌面环境特定](#桌面环境特定)
- [Flatpak支持](#flatpak支持)
- [卸载](#卸载)

## 前提条件

安装前，请确保您拥有：

- **GTK库**：GTK 2、GTK 3和/或GTK 4（取决于您的系统）
- **Git**：用于克隆仓库
- **Sass编译器**：`sassc`或`dart-sass`（用于从源码构建）
- **root权限**：仅用于系统级安装

### 安装依赖

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

## 快速安装

最快的安装方式：

```bash
# 克隆仓库
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# 安装主题
./install.sh --update -l -f --dock

# 应用主题
./apply-theme.sh
```

## 安装选项

安装脚本支持多种选项：

| 选项 | 描述 |
|------|------|
| `-d`, `--dest` | 设置安装目标（默认：`~/.themes`） |
| `-n`, `--name` | 设置主题名称（默认：`Hentai-Senpai`） |
| `-l`, `--libadwaita` | 链接到libadwaita主题 |
| `-f`, `--flatpak` | 安装Flatpak主题 |
| `--dock` | 安装dock主题（Plank） |
| `-r`, `--remove` | 移除已安装的主题 |
| `--update` | 更新现有安装 |

### 示例

**系统级安装：**
```bash
sudo ./install.sh -d /usr/share/themes
```

**自定义主题名称：**
```bash
./install.sh -n "My-Custom-Theme"
```

**安装所有功能：**
```bash
./install.sh -l -f --dock
```

**移除主题：**
```bash
./install.sh -r
```

## 桌面环境特定

### GNOME

安装后，激活主题：

```bash
# 启用User Themes扩展（如果尚未启用）
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# 应用主题
./apply-theme.sh
```

或通过**设置 > 外观**手动设置。

### Cinnamon

转到**系统设置 > 主题**并选择`Hentai-Senpai`。

### XFCE

1. 转到**设置 > 外观**
2. 从列表中选择`Hentai-Senpai`
3. 转到**窗口管理器**并在那里也选择主题

### MATE

转到**系统 > 首选项 > 外观**并选择主题。

### Budgie

转到**设置 > 桌面 > 外观**并选择主题。

## Flatpak支持

要为Flatpak应用程序设置主题：

```bash
# 允许Flatpak应用访问主题
flatpak override --filesystem=$HOME/.themes

# 安装Flatpak主题（安装期间）
./install.sh -f
```

**注意：** 您可能需要重启Flatpak应用程序才能使更改生效。

## 卸载

要移除主题：

```bash
./install.sh -r
```

或手动删除：
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## 后续步骤

- 阅读[自定义指南](自定义)来个性化您的主题
- 如果遇到问题请查看[故障排除](故障排除)
- 查看[调色板](调色板)了解主题颜色
