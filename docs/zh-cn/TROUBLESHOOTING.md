# 故障排除

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Troubleshooting" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Resolution-de-Problemes" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Fehlerbehebung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Risoluzione-Problemi" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="故障排除" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Ustranenie-nepoladok" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Hentai-Senpai GTK主题的常见问题和解决方案。

## 目录

- [主题未应用](#主题未应用)
- [图标显示不正确](#图标显示不正确)
- [Flatpak应用未主题化](#flatpak应用未主题化)
- [构建错误](#构建错误)
- [GTK4/libadwaita应用外观不同](#gtk4libadwaita应用外观不同)
- [性能问题](#性能问题)
- [获取帮助](#获取帮助)

## 主题未应用

### 问题
主题未出现在设置中或选择后未应用。

### 解决方案

1. **验证安装位置：**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **检查正确安装：**
   ```bash
   # 应显示主题文件
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **重启您的会话：**
   - 注销并重新登录
   - 或重启桌面环境

4. **对于GNOME - 检查User Themes扩展：**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   如果未启用：
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## 图标显示不正确

### 问题
图标显示损坏或作为默认系统图标。

### 解决方案

1. **安装兼容的图标主题：**
   - 推荐：[Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)、[Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme)或[Nordic](https://github.com/EliverLara/Nordic)

2. **验证图标主题安装：**
   ```bash
   ls ~/.icons/  # 或 /usr/share/icons/
   ```

3. 在桌面环境设置中**应用图标主题**。

## Flatpak应用未主题化

### 问题
Flatpak应用程序使用默认的Adwaita主题而不是Hentai-Senpai。

### 解决方案

1. **授予Flatpak访问主题的权限：**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **安装Flatpak主题包：**
   ```bash
   ./install.sh -f
   ```

3. **为Flatpak设置GTK主题：**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **重启Flatpak应用程序**以使更改生效。

## 构建错误

### 问题
主题安装或构建期间出错。

### 解决方案

1. **安装Sass编译器：**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **检查缺少的依赖：**
   ```bash
   # 验证sassc已安装
   which sassc
   sassc --version
   ```

3. **清理并重新构建：**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## GTK4/libadwaita应用外观不同

### 问题
GTK4或libadwaita应用程序与主题不完全匹配。

### 解决方案

1. **启用libadwaita链接：**
   ```bash
   ./install.sh -l
   ```

2. **注意：** GTK4/libadwaita应用程序的主题支持在设计上有限。预期会有一些视觉差异。

## 性能问题

### 问题
应用主题后系统感觉变慢。

### 解决方案

1. **禁用动画**（如果需要）：
   - GNOME：`gsettings set org.gnome.desktop.interface enable-animations false`

2. **检查来自主题进程的高CPU使用率**。

3. **使用更轻的变体**（如果可用）。

## 获取帮助

如果您的问题未在此处列出：

1. **搜索现有问题：**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **创建新问题**并提供：
   - 您的发行版和版本
   - 桌面环境和版本
   - 重现问题的步骤
   - 截图（如适用）
   - 错误消息（如有）

3. **查看[安装指南](安装指南)**以获取正确的设置说明。
