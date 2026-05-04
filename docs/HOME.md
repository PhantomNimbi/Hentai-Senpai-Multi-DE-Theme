# Hentai-Senpai Theme Documentation

> 🌐 **Languages:** English | [日本語](HOME.ja.md) | [Español](HOME.es.md) | [Français](HOME.fr.md) | [Deutsch](HOME.de.md) | [中文](HOME.zh.md) | [한국어](HOME.ko.md) | [Русский](HOME.ru.md) | [Português](HOME.pt.md)

Welcome to the Hentai-Senpai theme documentation. This is your starting point for learning about, installing, and customizing this beautiful Nord-colored GTK theme.

## What is Hentai-Senpai?

Hentai-Senpai is a dark GTK theme that combines:
- **Orchis Material Design** — Modern, clean aesthetics with rounded corners and subtle shadows
- **Nord Color Palette** — Arctic-inspired colors designed for clarity and comfort
- **Multi-DE Support** — Works on GNOME, Cinnamon, XFCE, Budgie, and MATE
- **Complete Theming** — GTK 2/3/4, GNOME Shell, window decorations, and wallpapers

## Getting Started

### New Users

1. **Install the Theme**
   ```bash
   ./install.sh --update -l -f --dock
   ```

2. **Apply the Theme**
   ```bash
   ./apply-theme.sh
   ```

3. **Done!** Your desktop is now themed.

### Quick Reference

| Task | Command |
|------|---------|
| Install with all fixes | `./install.sh --update -l -f --dock` |
| Fix GTK4 apps | `./install.sh -l` |
| Fix Flatpak apps | `./install.sh -f` |
| Style dock | `./install.sh --dock transparent` |
| Check dependencies | `./install.sh --check-deps` |
| Show system info | `./install.sh --system-info` |
| Remove theme | `./install.sh --uninstall` |

## Documentation Sections

### 📖 [Installation Guide](INSTALLATION.md)

Complete installation instructions including:
- Prerequisites and requirements
- Basic and advanced installation
- All command-line options explained
- Post-installation steps
- Manual theme application
- Uninstallation procedures

**[→ Read Installation Guide](INSTALLATION.md)**

### 🐛 [Troubleshooting](TROUBLESHOOTING.md)

Solutions to common issues:
- GTK4/libadwaita apps not themed
- Flatpak apps not themed
- GNOME Shell theme not applied
- Dock not styled
- Theme not appearing in settings
- Performance issues

**[→ Read Troubleshooting Guide](TROUBLESHOOTING.md)**

### 🎨 [Customization Guide](CUSTOMIZATION.md)

Personalize the theme:
- Changing colors
- Adjusting transparency
- Modifying border radius
- Custom wallpapers
- Creating theme variants
- Custom CSS overrides

**[→ Read Customization Guide](CUSTOMIZATION.md)**

### 🌈 [Color Palette](COLOR_PALETTE.md)

Complete Nord color reference:
- All 16 Nord colors with hex codes
- Usage in the theme
- CSS variables
- Color accessibility
- Usage examples

**[→ View Color Palette](COLOR_PALETTE.md)**

### 🤝 [Contributing Guide](CONTRIBUTING.md)

Guidelines for contributing to the project:
- How to contribute (code, documentation, testing)
- Development setup instructions
- Code style guidelines
- Commit message conventions
- Pull request process
- Community guidelines

**[→ Read Contributing Guide](CONTRIBUTING.md)**

## Theme Features

### Supported Desktop Environments

- **GNOME 40+** — Full Shell theming with User Themes extension
- **Cinnamon 4.0+** — Complete desktop and panel support
- **XFCE** — GTK theme and xfwm4 window decorations
- **Budgie 10.5+** — Full desktop integration
- **MATE 1.24+** — GTK and Metacity support

### Theme Components

- **GTK 2.0/3.0/4.0** — Complete widget theming for all GTK versions
- **GNOME Shell** — Panel, menus, notifications, and overview styling
- **Cinnamon** — Desktop, panel, and menu theming
- **XFWM4/Metacity** — Window decorations
- **Plank** — Transparent dock theme included

### Design Principles

- **Material Design** — Rounded corners (12px), elevation shadows, ripple effects
- **Nord Colors** — Consistent Arctic color palette
- **Accessibility** — WCAG AA compliant contrast ratios
- **Consistency** — Unified look across all desktop elements

## Common Workflows

### First Time Installation

```bash
# 1. Check your system
./install.sh --system-info

# 2. Install dependencies (if needed)
./install.sh --check-deps

# 3. Install with all fixes
./install.sh --update -l -f --dock

# 4. Apply the theme
./apply-theme.sh

# 5. Log out and back in (for GTK4 apps)
```

### Updating the Theme

```bash
# Simple update
./install.sh --update

# Or with all fixes
./install.sh --update -l -f --dock
```

### Fixing Common Issues

```bash
# GTK4 apps not themed
./install.sh -l && echo "Log out and back in"

# Flatpak apps not themed
./install.sh -f && echo "Restart Flatpak apps"

# Dock not styled
./install.sh --dock transparent

# Everything broken
./install.sh --uninstall
./install.sh --update -l -f --dock
```

## External Resources

- [Main Repository](https://github.com/owner/hentai-senpai-theme) — Source code and releases
- [Orchis Theme](https://github.com/vinceliuice/Orchis-theme) — Base theme
- [Nord Theme](https://www.nordtheme.com/) — Color palette
- [GNOME Shell Extensions](https://extensions.gnome.org/) — User Themes extension

## Getting Help

1. **Check the [Troubleshooting Guide](TROUBLESHOOTING.md)** — Most issues have solutions here
2. **Review the [Installation Guide](INSTALLATION.md)** — Detailed setup instructions
3. **See the [Customization Guide](CUSTOMIZATION.md)** — For personalization questions

## Contributing

Contributions are welcome! Areas where help is appreciated:
- Bug fixes
- Documentation improvements
- New desktop environment support
- Additional color variants

## Changelog

See [CHANGELOG.md](../CHANGELOG.md) for version history and changes.

## License

This project is licensed under the GPL-3.0 License.

---

**Ready to get started?** → [Installation Guide](INSTALLATION.md)

**Having issues?** → [Troubleshooting](TROUBLESHOOTING.md)

**Want to customize?** → [Customization Guide](CUSTOMIZATION.md)

---

Back to [main README](../README.md) | [Docs Index](README.md)
