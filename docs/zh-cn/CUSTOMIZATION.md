# 自定义

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Customization" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Personnalisation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Anpassung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizzazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="自定义" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Nastrojka" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

如何根据您的偏好自定义Hentai-Senpai GTK主题。

## 目录

- [颜色变体](#颜色变体)
- [手动自定义](#手动自定义)
- [创建自定义变体](#创建自定义变体)
- [用户覆盖](#用户覆盖)
- [桌面环境调整](#桌面环境调整)

## 颜色变体

该主题带有不同的颜色选项。使用安装脚本选择变体：

```bash
# 列出可用变体
./install.sh --help
```

### 可用变体

| 变体 | 描述 | 最适合 |
|------|------|--------|
| `default` | 标准Nord深色 | 一般用途 |
| `blackness` | 更深的黑色背景 | OLED显示器 |

## 手动自定义

### 编辑主题文件

直接在主题安装中编辑CSS文件：

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # GTK2配置
├── gtk-3.0/gtk.css        # GTK3样式
├── gtk-4.0/gtk.css        # GTK4样式
└── gnome-shell/gnome-shell.css  # GNOME Shell样式
```

**⚠️ 警告：** 直接编辑将在更新主题时丢失。使用[用户覆盖](#用户覆盖)进行持久更改。

### 关键CSS变量

您可以修改的常用变量：

```css
/* 背景颜色 */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* 强调色 */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## 创建自定义变体

要创建您自己的颜色变体：

1. **复制源文件：**
   ```bash
   cp -r src src-custom
   ```

2. **编辑颜色定义：**
   - 打开`src-custom/gtk-3.0/gtk.css`
   - 修改顶部的颜色变量

3. **重新构建主题：**
   ```bash
   ./install.sh -d ~/.themes -n My-Custom-Variant
   ```

## 用户覆盖

创建在主题更新后仍然存在的持久自定义。

### GTK3覆盖

创建或编辑：
```bash
~/.config/gtk-3.0/gtk.css
```

示例：
```css
/* 使所有按钮圆角 */
button {
    border-radius: 8px;
}

/* 更改选择颜色 */
*:selected {
    background-color: #BF616A;
}
```

### GTK4覆盖

创建或编辑：
```bash
~/.config/gtk-4.0/gtk.css
```

示例：
```css
/* GTK4更大的内边距 */
button {
    padding: 8px 16px;
}
```

## 桌面环境调整

### GNOME调整

安装GNOME Tweaks以获取更多选项：

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**推荐设置：**
- **主题 > 传统应用程序**：Hentai-Senpai
- **主题 > 外壳**：Hentai-Senpai
- **主题 > 图标**：Papirus-Dark或Nordic

### XFCE调整

1. 打开**设置 > 外观**
2. 设置**样式**：Hentai-Senpai
3. 设置**图标**：您首选的图标主题
4. 转到**窗口管理器 > 样式**：Hentai-Senpai

### Cinnamon调整

1. 右键点击桌面 → **桌面设置**
2. 设置**桌面主题**：Hentai-Senpai
3. 自定义单个组件：
   - **控件**：Hentai-Senpai
   - **桌面**：您的偏好
   - **图标**：您的偏好
   - **鼠标指针**：您的偏好

## 高级自定义

### 更改窗口按钮布局

为窗口装饰编辑`metacity-theme-1.xml`：

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### 自定义Shell元素

对于GNOME Shell修改：

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

常见修改：
- 面板高度
- 菜单样式
- 日历外观

## 更好结果的提示

1. **使用与Nord调色板一致的图标主题**
2. **将终端颜色与主题匹配**（参见[调色板](调色板)）
3. **增量测试更改** - 一次修改一件事
4. **保留工作配置的备份**

## 分享您的自定义

创建了很棒的东西？考虑：
- 在[Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)中分享截图
- 通过[Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)提交改进
