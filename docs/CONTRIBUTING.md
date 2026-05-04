# Contributing to Hentai-Senpai Theme

Thank you for your interest in contributing to the Hentai-Senpai GTK Theme! This document provides guidelines and instructions for contributing to the project.

## Table of Contents

- [Getting Started](#getting-started)
- [Ways to Contribute](#ways-to-contribute)
- [Development Setup](#development-setup)
- [Code Style Guidelines](#code-style-guidelines)
- [Commit Message Guidelines](#commit-message-guidelines)
- [Pull Request Process](#pull-request-process)
- [Testing Your Changes](#testing-your-changes)
- [Documentation](#documentation)
- [Community Guidelines](#community-guidelines)
- [Getting Help](#getting-help)

---

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/hentai-senpai-theme.git
   cd hentai-senpai-theme
   ```
3. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b fix/your-bug-fix
   ```

---

## Ways to Contribute

### 🐛 Reporting Bugs

- Use the [Bug Report template](../.github/ISSUE_TEMPLATE/bug_report.md)
- Check if the bug has already been reported
- Include detailed steps to reproduce
- Provide environment information (DE, GTK version, etc.)
- Include screenshots if applicable

### ✨ Suggesting Features

- Use the [Feature Request template](../.github/ISSUE_TEMPLATE/feature_request.md)
- Describe the feature and its use cases
- Explain why it would be useful
- Provide examples if possible

### 📝 Improving Documentation

- Fix typos and grammar
- Clarify confusing sections
- Add examples where helpful
- Translate documentation to other languages

### 🎨 Code Contributions

- Bug fixes
- New features
- Performance improvements
- Desktop environment support
- Color variants
- Icon and asset improvements

### 🧪 Testing

- Test on different desktop environments
- Test with various applications
- Report compatibility issues
- Verify fixes work correctly

---

## Development Setup

### Prerequisites

- Git
- Bash 4.0+
- GTK 3.20+ or GTK 4.0+
- A Linux desktop environment for testing

### Directory Structure

```
hentai-senpai-theme/
├── src/                         # Theme source files
│   ├── gtk-2.0/                # GTK 2.0 theme
│   ├── gtk-3.0/                # GTK 3.0 theme
│   ├── gtk-4.0/                # GTK 4.0 theme
│   ├── gnome-shell/            # GNOME Shell theme
│   ├── cinnamon/               # Cinnamon theme
│   └── xfwm4/                  # XFWM window manager theme
├── docs/                        # Documentation
├── install.sh                   # Installation script
├── apply-theme.sh               # Theme application script
└── wallpapers/                  # Theme wallpapers
```

### Making Changes

1. **Edit theme files** in `src/`
2. **Test your changes** using `./install.sh --update`
3. **Apply the theme** using `./apply-theme.sh`
4. **Verify** the changes work in your desktop environment

---

## Code Style Guidelines

### CSS/Styling

- Use 4 spaces for indentation
- Use lowercase for hex color codes (`#2e3440`, not `#2E3440`)
- Group related properties together
- Comment complex selectors
- Follow existing naming conventions

```css
/* Good */
button {
    background-color: #3b4252;
    color: #d8dee9;
    border: 1px solid #4c566a;
    border-radius: 12px;
}

/* Bad */
button{
background-color:#3B4252;
color:#D8DEE9;
}
```

### Shell Scripts

- Use `#!/bin/bash` shebang
- Include error handling with `set -e`
- Use descriptive variable names
- Add comments for complex logic
- Follow existing code patterns

```bash
#!/bin/bash

# Good
install_theme() {
    local theme_name="$1"
    local dest_dir="$2"
    
    if [[ -d "$dest_dir/$theme_name" ]]; then
        echo "Theme already exists, updating..."
    fi
    
    cp -r "src/$theme_name" "$dest_dir/"
}

# Bad
i(){
cp -r $1 $2
}
```

### Color Palette

When adding colors or modifying the theme:
- Use the Nord color palette
- Reference colors by their Nord names in comments
- Maintain consistent usage patterns

```css
/* nord10 - Primary accent */
@define-color accent_bg_color #5e81ac;

/* nord1 - Secondary background */
@define-color card_bg_color #3b4252;
```

---

## Commit Message Guidelines

Use clear, descriptive commit messages following this format:

```
<type>: <subject>

<body> (optional)

<footer> (optional)
```

### Types

- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Formatting, missing semicolons, etc. (no code change)
- **refactor**: Code refactoring
- **test**: Adding tests
- **chore**: Maintenance tasks

### Examples

```
feat: add support for Budgie desktop environment

fix: correct transparency in GNOME Shell popovers

docs: update installation instructions for Fedora

style: fix indentation in gtk-4.0/gtk.css

refactor: simplify color variables in cinnamon.css
```

### Guidelines

- Use present tense ("Add feature" not "Added feature")
- Use imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit first line to 72 characters
- Reference issues and PRs in the footer when applicable

---

## Pull Request Process

1. **Update documentation** if your changes affect usage or installation
2. **Test thoroughly** on at least one desktop environment
3. **Ensure your code** follows the style guidelines
4. **Update CHANGELOG.md** with your changes
5. **Submit your PR** with a clear description

### PR Description Template

```markdown
## Description
Brief description of what this PR does

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement
- [ ] Code refactoring

## Testing
- [ ] Tested on GNOME
- [ ] Tested on Cinnamon
- [ ] Tested on XFCE
- [ ] Tested on [other DE]

## Screenshots
<!-- If applicable, add screenshots -->

## Checklist
- [ ] My code follows the style guidelines
- [ ] I have performed a self-review
- [ ] I have commented my code where necessary
- [ ] I have updated the documentation
- [ ] My changes generate no new warnings
```

### Review Process

- Maintainers will review your PR within a few days
- Address any feedback or requested changes
- Once approved, a maintainer will merge your PR

---

## Testing Your Changes

### Quick Test

```bash
# Install your modified theme
./install.sh --update

# Apply the theme
./apply-theme.sh

# Test in various applications
```

### Testing Checklist

Before submitting a PR, test on:
- [ ] Different GTK applications
- [ ] GTK 2, 3, and 4 applications
- [ ] Your desktop environment's settings/panels
- [ ] Light and dark conditions
- [ ] Different screen resolutions

### Testing Different DEs

If possible, test on multiple desktop environments:
```bash
# Install in a VM or test environment
./install.sh --update -l -f --dock
./apply-theme.sh
```

---

## Documentation

When contributing documentation:

### Adding New Pages

1. Create the `.md` file in the appropriate `docs/` subdirectory
2. Add it to the navigation in `docs/README.md`
3. Update `docs/HOME.md` if it's a major guide
4. Follow the existing formatting style

### Updating Existing Docs

- Keep language clear and concise
- Use code blocks for commands
- Include examples where helpful
- Update the translation bar if applicable

### Translation Bar

For new documentation pages, include:
```markdown
> 🌐 **Languages:** English | [日本語](FILENAME.ja.md) | ...
```

---

## Community Guidelines

### Be Respectful

- Treat everyone with respect and professionalism
- Welcome newcomers and help them get started
- Provide constructive feedback
- Focus on the work, not the person

### Be Patient

- Maintainers are volunteers with limited time
- Responses may take a few days
- Complex changes may need multiple review cycles

### Be Collaborative

- Discuss major changes in an issue before implementing
- Be open to feedback and alternative approaches
- Help others in the community
- Share knowledge and experience

---

## Getting Help

If you need help contributing:

1. **Check the documentation**:
   - [Installation Guide](INSTALLATION.md)
   - [Troubleshooting](TROUBLESHOOTING.md)
   - [Customization Guide](CUSTOMIZATION.md)

2. **Open a Discussion**:
   - Use GitHub Discussions for questions
   - Ask about implementation approaches
   - Get feedback on ideas

3. **Contact Maintainers**:
   - Comment on relevant issues
   - Tag maintainers with @mention if urgent

---

## Recognition

Contributors will be recognized in:
- Release notes for significant contributions
- CONTRIBUTORS.md file (when created)
- Special thanks in documentation

---

## License

By contributing to this project, you agree that your contributions will be licensed under the GPL-3.0 License.

---

Thank you for contributing to Hentai-Senpai! 🎨

[← Back to Documentation Home](HOME.md) | [Docs Index](README.md) | [Main README](../README.md)
