# AGENTS.md - Agent Instructions for Hentai-Senpai GTK Theme

## Project Overview

**Hentai-Senpai GTK Theme** is a beautiful dark GTK theme based on [Orchis](https://github.com/vinceliuice/Orchis-theme) with the [Nord](https://www.nordtheme.com/) color palette. It provides complete theming support for GTK 2/3/4, GNOME Shell, and multiple desktop environments.

### Key Characteristics
- **Theme Type**: GTK theme with Material Design principles
- **Color Scheme**: Nord (Arctic-inspired: Polar Night, Snow Storm, Frost, Aurora)
- **Target Platforms**: Linux (Ubuntu, Debian, Fedora, Arch, Manjaro, openSUSE, Mint, Pop!_OS)
- **Desktop Environments**: GNOME 40+, Cinnamon, XFCE, Budgie, MATE
- **Current Version**: 1.0.0

## Repository Structure

```
/
├── install.sh              # Main installation script
├── apply.sh                # Theme application script  
├── src/                    # Source theme files
│   ├── gtk-2.0/           # GTK 2.0 theme assets and CSS
│   ├── gtk-3.0/           # GTK 3.0 SCSS and CSS
│   ├── gtk-4.0/           # GTK 4.0 SCSS and CSS
│   ├── gnome-shell/       # GNOME Shell theme
│   ├── cinnamon/          # Cinnamon theme
│   ├── xfwm4/             # XFCE window decorations
│   └── COPYING            # GPL-3.0 license
├── scripts/               # Helper scripts
│   ├── apply.sh           # Apply theme to system
│   ├── libadwaita-tweaks.sh  # GTK4/libadwaita fixes
│   ├── flatpak-tweaks.sh     # Flatpak theme fixes
│   └── plank.sh              # Plank dock theming
├── wallpapers/            # Theme wallpapers
├── locale/                # Translated documentation
│   ├── ja-jp/            # Japanese
│   ├── es-es/            # Spanish
│   ├── fr-fr/            # French
│   ├── de-de/            # German
│   ├── it-it/            # Italian
│   ├── ko-kr/            # Korean
│   ├── pt-br/            # Portuguese (Brazil)
│   ├── ru-ru/            # Russian
│   └── zh-cn/            # Chinese (Simplified)
├── .github/               # GitHub configuration
│   ├── workflows/         # GitHub Actions
│   └── ISSUE_TEMPLATE/    # Issue templates
├── CHANGELOG.md           # Version history
└── README.md              # Main documentation
```

## Coding Standards

### Shell Scripts (install.sh, scripts/*.sh)
- Use Bash 4.0+ features
- Include `set -e` for error handling
- Use descriptive variable names in UPPERCASE for constants
- Quote all variable expansions: `"$variable"`
- Include help text with `-h` or `--help` flags
- Use `echo` with colors: `\033[0;32m` (green), `\033[0;34m` (blue), `\033[0;31m` (red)

### SCSS/CSS (src/gtk-3.0/, src/gtk-4.0/)
- Follow existing indentation (2 spaces)
- Use Nord color variables from `_colors.scss`
- Comment sections clearly with `// Section Name`
- Maintain compatibility with GTK 3.20+ and GTK 4.0+

### Markdown Documentation
- Use ATX-style headers (`# Header`)
- Include language dropdown in all locale files
- Use Nord color (#88C0D0) for badges and accents
- Keep line length under 100 characters when possible
- Use emoji consistently: 🐧 (distros), ✨ (features), 📦 (install), 🔧 (fixes)

## Branding & Style Guide

### Colors (Nord Theme)
- **Primary Accent**: `#88C0D0` (Nord Frost 4) - Use for badges, links
- **Background Dark**: `#2E3440` (Nord Polar Night 0)
- **Background Light**: `#3B4252` (Nord Polar Night 1)
- **Border**: `#4C566A` (Nord Polar Night 3)
- **Text Light**: `#D8DEE9` (Nord Snow Storm 0)

### Badges
Use shields.io with Nord color (#88C0D0) and emojis:
```markdown
[![Release](https://img.shields.io/github/v/release/...?label=%F0%9F%93%A6%20Release&style=plastic&color=88C0D0)]
[![License](https://img.shields.io/github/license/...?label=%E2%9A%96%EF%B8%8F%20License&style=plastic&color=88C0D0)]
[![Stars](https://img.shields.io/github/stars/...?label=%E2%AD%90%20Stars&style=plastic&color=88C0D0)]
[![Issues](https://img.shields.io/github/issues/...?label=%F0%9F%90%9B%20Issues&style=plastic&color=88C0D0)]
```

### Language Dropdown Format
Always use this exact HTML structure for language selectors:
```html
<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; 
                    border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px;
                    display: inline-flex; align-items: center; gap: 6px; ...">🌐 Language</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; 
                border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <!-- Language links -->
    </div>
  </details>
</div>
```

## Installation & Testing

### Local Installation (for testing)
```bash
# Install theme locally
./install.sh -d ~/.themes

# Apply theme
./scripts/apply.sh

# Test with GTK4 apps (requires libadwaita fix)
./install.sh -l
```

### Build Requirements
- `sassc` - For compiling SCSS to CSS
- `inkscape` or `optipng` - For asset generation (optional)
- Bash 4.0+

### Testing Checklist
- [ ] Theme applies without errors
- [ ] GTK 3 apps show correct styling
- [ ] GTK 4 apps show correct styling (after -l flag)
- [ ] GNOME Shell theme loads (if applicable)
- [ ] No visual glitches in common apps (Files, Terminal, Settings)

## Git Workflow

### Branches
- `main` - Production-ready code
- `templates` - Stores GitHub templates, workflows (consolidated)
- `docs` - Documentation wiki content
- `discussions` - Discussion templates

### Commits
Use conventional commits format:
- `feat:` - New features
- `fix:` - Bug fixes
- `docs:` - Documentation changes
- `style:` - Formatting changes
- `refactor:` - Code restructuring
- `chore:` - Maintenance tasks

### Releases
1. Update CHANGELOG.md with version number and date
2. Create git tag: `git tag -a v1.0.0 -m "Release version 1.0.0"`
3. Push tag: `git push origin v1.0.0`
4. GitHub Actions will create release automatically (if workflow exists)

## Translation Guidelines

When updating translations:
1. Always maintain the language dropdown in the same format
2. Keep badge URLs pointing to the correct relative paths
3. Translate section headers but keep emoji consistent
4. Update ALL language files when adding a new language
5. Test links work correctly (relative paths: `../xx-yy/FILENAME.md`)

### Translation Status
Current translations (9 languages):
- 🇺🇸 English (source)
- 🇯🇵 Japanese (ja-jp)
- 🇪🇸 Spanish (es-es)
- 🇫🇷 French (fr-fr)
- 🇩🇪 German (de-de)
- 🇮🇹 Italian (it-it)
- 🇰🇷 Korean (ko-kr)
- 🇧🇷 Portuguese (pt-br)
- 🇷🇺 Russian (ru-ru)
- 🇨🇳 Chinese Simplified (zh-cn)

## Common Tasks

### Adding a New Language
1. Create `locale/xx-yy/README.md` and `CHANGELOG.md`
2. Copy English version as template
3. Translate content while preserving:
   - HTML dropdown structure
   - Badge markdown format
   - Section emojis
   - Relative link paths
4. Update ALL other language files to include new language in dropdown
5. Update main README.md dropdown

### Updating Badges
When updating badge styles:
1. Update main README.md first
2. Apply same changes to all 9 translated README.md files
3. Ensure color consistency (#88C0D0)
4. Maintain center alignment with `<p align="center">`

### Adding New Sections
When adding documentation sections:
1. Add to English README first
2. Use emoji in header: `## 🚀 Section Name`
3. Translate to all other languages
4. Keep section order consistent across all files

## Important Notes

### Do NOT Delete
- `.github/workflows/` - Required for GitHub Actions (must be on main)
- `.github/ISSUE_TEMPLATE/` - Required for issue templates (must be on main)
- `LICENSE` - License file in root directory

### Files That Can Be Deleted
- `VERSION` - Was removed; version is now managed via git tags only
- Old release workflows if moving to manual releases

### Security
- Never commit sensitive data (tokens, passwords)
- Use GitHub Secrets for workflow variables
- Validate all external URLs in documentation

## Quick Reference

### Key Files to Update Together
When making documentation changes, update all of these:
- `README.md`
- `locale/*/README.md` (9 files)
- `CHANGELOG.md`
- `locale/*/CHANGELOG.md` (9 files)

### Useful Commands
```bash
# Check for broken links
find . -name "*.md" -exec grep -l "](../" {} \;

# List all locale files
glob "locale/*/*.md"

# Count files by type
find . -type f | sed 's/.*\.//' | sort | uniq -c | sort -rn
```

## Resources

- **Nord Theme**: https://www.nordtheme.com/docs/colors-and-palettes
- **GTK Theming Guide**: https://docs.gtk.org/gtk3/css-overview.html
- **GNOME Shell Theming**: https://gitlab.gnome.org/GNOME/gnome-shell/-/blob/main/data/theme/gnome-shell-sass
- **Orchis Theme** (upstream): https://github.com/vinceliuice/Orchis-theme
- **Keep a Changelog**: https://keepachangelog.com/
- **Semantic Versioning**: https://semver.org/

---

**Last Updated**: 2026-05-04
**Maintainer**: @PhantomNimbi
**License**: GPL-3.0