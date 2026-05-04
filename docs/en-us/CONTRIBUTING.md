# Contributing

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Language</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Contributing" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Contributing-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Thank you for your interest in contributing to Hentai-Senpai GTK Theme! 🎉

## Table of Contents

- [How to Contribute](#how-to-contribute)
- [Reporting Issues](#reporting-issues)
- [Code Style](#code-style)
- [Documentation](#documentation)
- [Translations](#translations)
- [Development Setup](#development-setup)

## How to Contribute

There are many ways to contribute to this project:

1. **Report bugs** - Found an issue? Let us know!
2. **Suggest features** - Have an idea? We'd love to hear it!
3. **Submit fixes** - Code improvements are always welcome
4. **Improve documentation** - Help make docs clearer
5. **Translate** - Help make the theme accessible globally
6. **Share** - Spread the word about the theme

### Contribution Workflow

1. **Fork the repository** on GitHub
2. **Create a new branch** for your feature/fix:
   ```bash
   git checkout -b feature/my-new-feature
   # or
   git checkout -b fix/issue-description
   ```
3. **Make your changes** with clear, focused commits
4. **Test your changes** thoroughly
5. **Submit a Pull Request** with a clear description

## Reporting Issues

### Before Reporting

- [ ] Search existing [issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) to avoid duplicates
- [ ] Check if the issue exists in the latest version
- [ ] Try to isolate the problem

### Creating a Bug Report

Include the following information:

| Field | Description |
|-------|-------------|
| **Title** | Clear, descriptive title |
| **Description** | Detailed description of the issue |
| **Steps to Reproduce** | Numbered steps to recreate the bug |
| **Expected Behavior** | What should happen |
| **Actual Behavior** | What actually happens |
| **Screenshots** | Visual evidence (if applicable) |
| **System Info** | OS, DE/WM, GTK version |

### Example Bug Report Template

```markdown
**Description:**
Theme doesn't apply to GTK4 applications

**Steps to Reproduce:**
1. Install theme with `./install.sh`
2. Open GTK4 application (e.g., GNOME Text Editor)
3. Observe default Adwaita styling

**Expected:**
Application should use Hentai-Senpai theme

**Actual:**
Application uses default Adwaita theme

**System:**
- OS: Ubuntu 22.04
- DE: GNOME 42
- GTK: 4.6
```

## Code Style

### CSS/Styling

- Use 2 spaces for indentation
- Group related properties together
- Use meaningful variable names
- Comment complex sections

Example:
```css
/* Primary button styling */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* Hover state */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### Shell Scripts

- Use `#!/bin/bash` shebang
- Quote all variables: `"$variable"`
- Use meaningful function names
- Add comments for complex logic

### Commit Messages

Follow conventional commits format:

```
type(scope): subject

body (optional)

footer (optional)
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

**Examples:**
```
feat(gtk3): add support for rounded corners
fix(install): resolve path issue on Fedora
docs(readme): update installation instructions
```

## Documentation

### Improving Documentation

Documentation improvements are highly valued! You can:

- Fix typos and grammar
- Add examples and screenshots
- Clarify confusing sections
- Add missing information
- Translate to other languages

### Documentation Structure

```
docs/
├── INSTALLATION.md      # Installation guide
├── TROUBLESHOOTING.md   # Problem solving
├── CUSTOMIZATION.md     # Personalization guide
├── COLOR_PALETTE.md     # Color reference
└── CONTRIBUTING.md      # This file
```

### Adding Screenshots

When adding visual documentation:

1. Use PNG format for screenshots
2. Keep file sizes reasonable (< 500KB)
3. Use descriptive filenames
4. Focus on the specific feature

## Translations

### Translating Documentation

To add a new language translation:

1. **Copy English files:**
   ```bash
   cp docs/INSTALLATION.md docs/INSTALLATION-pt.md
   ```

2. **Translate content** in the new file

3. **Update the translation bar** in the workflow:
   - Edit `.github/workflows/generate-wiki.yml`
   - Add new language to the Home.md translation bar

4. **Supported language codes:**
   | Code | Language |
   |------|----------|
   | `pt` | Portuguese |
   | `es` | Spanish |
   | `fr` | French |
   | `de` | German |
   | `it` | Italian |
   | `ja` | Japanese |
   | `zh` | Chinese |

### Translation Tips

- Keep technical terms in English if there's no direct translation
- Maintain the same markdown structure
- Update links to point to translated pages
- Test rendering before submitting

## Development Setup

### Prerequisites

```bash
# Install required tools
sudo apt install git sassc inkscape optipng
```

### Building from Source

```bash
# Clone repository
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Install dependencies
# (see Prerequisites section above)

# Build theme
./install.sh

# Test locally
./apply-theme.sh
```

### Project Structure

```
Hentai-Senpai-GTK-Theme/
├── src/                    # Source files
│   ├── gtk-2.0/           # GTK2 theme
│   ├── gtk-3.0/           # GTK3 theme
│   ├── gtk-4.0/           # GTK4 theme
│   ├── gnome-shell/       # GNOME Shell theme
│   ├── cinnamon/          # Cinnamon theme
│   ├── xfwm4/             # XFWM theme
│   └── metacity-1/        # Metacity theme
├── scripts/               # Build scripts
├── install.sh             # Main installer
└── docs/                  # Documentation (this branch)
```

## Questions?

- **General questions:** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **Bug reports:** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **Direct contact:** Open an issue with the `question` label

## Code of Conduct

- Be respectful and constructive
- Focus on the issue, not the person
- Accept constructive criticism gracefully
- Help create a welcoming community

Thank you for contributing! 💜
