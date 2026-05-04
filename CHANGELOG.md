# Changelog

All notable changes to the Hentai-Senpai GTK Theme project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Renamed screenshot files to use consistent preview naming convention:
  - `Screenshot from 2026-05-03 18-59-32.png` → `preview-1.png`
  - `Screenshot from 2026-05-03 18-59-42.png` → `preview-2.png`
- Updated README screenshots section to display the new PNG preview images instead of SVG graphics

## [1.0.0] - 2026-05-03

### Added

- Initial release of Hentai-Senpai Theme
- GTK 2.0, 3.0, and 4.0 theme support
- GNOME Shell 40+ theme with complete styling
- Cinnamon desktop environment support
- XFWM4 window manager theme
- Metacity window decorations
- Complete Nord color palette integration:
  - Polar Night backgrounds (`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - Snow Storm text colors (`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - Frost accent colors (`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - Aurora semantic colors (`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- Material Design principles:
  - 12px rounded corners for buttons, cards, and entries
  - 20px border radius for popovers
  - Circular checkboxes and radio buttons (9999px radius)
  - Elevation shadows and ripple effects
- Installation script (`install.sh`) with multiple options:
  - Install/uninstall functionality
  - libadwaita fix for GTK4 applications
  - Flatpak theme fix for sandboxed apps
  - Dock theme styling (transparent and solid variants)
  - Dependency checking
  - System information display
- Theme application script (`apply-theme.sh`)
- Transparent Plank dock theme
- Comprehensive documentation:
  - Installation guide
  - Troubleshooting guide
  - Color palette reference
  - Customization guide

### Theme Components

- **GTK 2.0**: Complete widget styling with assets
- **GTK 3.0**: Full CSS theming
- **GTK 4.0**: Modern CSS with custom properties
- **GNOME Shell**: Complete shell theme including:
  - Panel styling
  - Overview and app grid
  - Notifications and calendar
  - System menus
  - Window previews
- **Cinnamon**: Desktop and panel theming
- **Window Managers**: XFWM4 and Metacity support

[Unreleased]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
