# 贡献

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 语言</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Contributing" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribution" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Mitwirken" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribuire" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="贡献" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Uchastie" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

感谢您有兴趣为Hentai-Senpai GTK主题做出贡献！🎉

## 目录

- [如何贡献](#如何贡献)
- [报告问题](#报告问题)
- [代码风格](#代码风格)
- [文档](#文档)
- [翻译](#翻译)
- [开发设置](#开发设置)

## 如何贡献

有很多方式可以为这个项目做出贡献：

1. **报告错误** - 发现问题？请告诉我们！
2. **建议功能** - 有想法？我们很乐意听取！
3. **提交修复** - 代码改进总是受欢迎的
4. **改进文档** - 帮助使文档更清晰
5. **翻译** - 帮助使主题在全球范围内可访问
6. **分享** - 传播关于主题的信息

### 贡献工作流程

1. 在GitHub上**Fork仓库**
2. 为您的功能/修复**创建新分支**：
   ```bash
   git checkout -b feature/my-new-feature
   # 或
   git checkout -b fix/issue-description
   ```
3. 用清晰、集中的提交**进行更改**
4. **彻底测试您的更改**
5. 提交具有清晰描述的**Pull Request**

## 报告问题

### 报告之前

- [ ] 搜索现有的[issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)以避免重复
- [ ] 检查问题是否存在于最新版本中
- [ ] 尝试隔离问题

### 创建错误报告

包含以下信息：

| 字段 | 描述 |
|------|------|
| **标题** | 清晰、描述性的标题 |
| **描述** | 问题的详细描述 |
| **重现步骤** | 重现错误的编号步骤 |
| **预期行为** | 应该发生什么 |
| **实际行为** | 实际发生什么 |
| **截图** | 视觉证据（如适用） |
| **系统信息** | 操作系统、DE/WM、GTK版本 |

### 错误报告模板示例

```markdown
**描述：**
主题未应用到GTK4应用程序

**重现步骤：**
1. 使用`./install.sh`安装主题
2. 打开GTK4应用程序（例如GNOME文本编辑器）
3. 观察到默认Adwaita样式

**预期：**
应用程序应使用Hentai-Senpai主题

**实际：**
应用程序使用默认Adwaita主题

**系统：**
- 操作系统：Ubuntu 22.04
- 桌面环境：GNOME 42
- GTK：4.6
```

## 代码风格

### CSS/样式

- 使用2个空格缩进
- 将相关属性分组
- 使用有意义的变量名
- 注释复杂部分

示例：
```css
/* 主按钮样式 */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* 悬停状态 */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### Shell脚本

- 使用`#!/bin/bash` shebang
- 引用所有变量：`"$variable"`
- 使用有意义的函数名
- 为复杂逻辑添加注释

### 提交消息

遵循常规提交格式：

```
type(scope): subject

body (可选)

footer (可选)
```

**类型：**
- `feat`：新功能
- `fix`：错误修复
- `docs`：文档更改
- `style`：代码风格更改（格式化）
- `refactor`：代码重构
- `test`：添加或更新测试
- `chore`：维护任务

**示例：**
```
feat(gtk3): 添加圆角支持
fix(install): 解决Fedora上的路径问题
docs(readme): 更新安装说明
```

## 文档

### 改进文档

文档改进非常受重视！您可以：

- 修复错别字和语法
- 添加示例和截图
- 澄清令人困惑的部分
- 添加缺失的信息
- 翻译成其他语言

### 文档结构

```
docs/
├── INSTALLATION.md      # 安装指南
├── TROUBLESHOOTING.md   # 问题解决
├── CUSTOMIZATION.md     # 自定义指南
├── COLOR_PALETTE.md     # 颜色参考
└── CONTRIBUTING.md      # 本文件
```

### 添加截图

添加视觉文档时：

1. 截图使用PNG格式
2. 保持合理的文件大小（< 500KB）
3. 使用描述性文件名
4. 关注特定功能

## 翻译

### 翻译文档

要添加新的语言翻译：

1. **复制英文文件：**
   ```bash
   cp docs/INSTALLATION.md docs/INSTALLATION-zh.md
   ```

2. 在新文件中**翻译内容**

3. 在工作流程中**更新翻译栏**：
   - 编辑`.github/workflows/generate-wiki.yml`
   - 将新语言添加到Home.md翻译栏

4. **支持的语言代码：**
   | 代码 | 语言 |
   |------|------|
   | `pt` | 葡萄牙语 |
   | `es` | 西班牙语 |
   | `fr` | 法语 |
   | `de` | 德语 |
   | `it` | 意大利语 |
   | `ja` | 日语 |
   | `zh` | 中文 |

### 翻译提示

- 如果没有直接翻译，保持技术术语为英文
- 保持相同的Markdown结构
- 更新链接以指向翻译页面
- 提交前测试渲染

## 开发设置

### 前提条件

```bash
# 安装所需工具
sudo apt install git sassc inkscape optipng
```

### 从源码构建

```bash
# 克隆仓库
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# 安装依赖
# （参见上面的前提条件部分）

# 构建主题
./install.sh

# 本地测试
./apply-theme.sh
```

### 项目结构

```
Hentai-Senpai-GTK-Theme/
├── src/                    # 源文件
│   ├── gtk-2.0/           # GTK2主题
│   ├── gtk-3.0/           # GTK3主题
│   ├── gtk-4.0/           # GTK4主题
│   ├── gnome-shell/       # GNOME Shell主题
│   ├── cinnamon/          # Cinnamon主题
│   ├── xfwm4/             # XFWM主题
│   └── metacity-1/        # Metacity主题
├── scripts/               # 构建脚本
├── install.sh             # 主安装程序
└── docs/                  # 文档（本分支）
```

## 问题？

- **一般问题：** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **错误报告：** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **直接联系：** 打开带有`question`标签的issue

## 行为准则

- 尊重他人并保持建设性
- 关注问题而非个人
- 优雅地接受建设性批评
- 帮助创造友好的社区

感谢您的贡献！💜
