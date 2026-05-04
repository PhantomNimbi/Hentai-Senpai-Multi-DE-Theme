# Changelog

> 🌐 **Languages:** English | [日本語](CHANGELOG.ja.md) | [Español](CHANGELOG.es.md) | [Français](CHANGELOG.fr.md) | [Deutsch](CHANGELOG.de.md) | [中文](CHANGELOG.zh.md) | [한국어](CHANGELOG.ko.md) | [Русский](CHANGELOG.ru.md) | [Português](CHANGELOG.pt.md)

All notable changes to the Hentai-Senpai GTK Theme project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- **GitHub Issue Templates**
  - Bug report template with environment checklist
  - Feature request template with use case sections
  - Question/support template
  - Configuration file with contact links
- **Contributing Guidelines**
  - Comprehensive `docs/CONTRIBUTING.md` with:
    - Development setup instructions
    - Code style guidelines for CSS and shell scripts
    - Commit message conventions
    - Pull request process
    - Testing procedures
    - Community guidelines
- **Enhanced Documentation**
  - Added `docs/HOME.md` as a comprehensive documentation landing page
  - Simplified `docs/README.md` for easy navigation
  - Updated all documentation files with consistent formatting and cross-references
- **Translation Support**
  - Added translation bars to all markdown documentation files
  - Support for 9 languages: English, Japanese, Spanish, French, German, Chinese, Korean, Russian, Portuguese
- **Social Media Integration**
  - Share buttons for Twitter/X, Reddit, Facebook, LinkedIn, Mastodon, and Telegram
  - Status shields showing version, license, stars, contributors, and issues
- **Multi-language Documentation**
  - Restructured docs into locale-based folders (en-us, pt-br, es-es, fr-fr, de-de, it-it, ja-jp, zh-cn, ru-ru)
  - Complete translations for 9 languages
  - Language selector dropdowns on all documentation pages
  - Updated GitHub Actions workflow to support all 9 languages
- **Gallery Page**
  - Created Gallery.md showcasing theme previews and wallpapers
  - Displays preview-1.png and preview-2.png images
  - Shows all 6 available wallpapers
  - Available in all 9 languages
  - Fixed: Actually created the Gallery.md files in all locale folders
  - Fixed: Corrected preview image assignments (preview-2.png = Desktop, preview-1.png = Applications)
  - Fixed: Corrected wallpaper description (minimalistic, monochrome colors, ecchi themes)
- **GitHub Projects Workflow**
  - Implemented comprehensive project management system
  - Created automated workflows for issue/PR management
  - Added sprint management automation
  - Created task, epic, and CHANGELOG issue templates
  - Added project board configuration with custom fields
  - Implemented CHANGELOG integration workflow
  - Created detailed workflow documentation (docs/PROJECT_WORKFLOW.md)
  - Added setup script (scripts/setup-project.sh)
  - Added project creation workflow (.github/workflows/create-project.yml)
  - Note: GitHub Projects must be created manually through GitHub UI

### Changed

- **Documentation Structure**: Moved from flat file structure to locale-based folders
- **Preview Images**: Removed SVG preview images, keeping only PNG previews
- **Wiki Workflow**: Updated to handle locale-based documentation structure with 9 languages
- **Script Organization**: Renamed `apply-theme.sh` to `apply.sh` and moved it to `scripts/` directory
  - Updated all references in documentation and code
  - Consolidated all scripts in the `scripts/` directory

### Changed

- **Documentation Restructure**:
  - `docs/README.md` now serves as a simple navigation index
  - `docs/HOME.md` provides comprehensive documentation overview
  - Updated all internal documentation links for consistency
- **README Improvements**:
  - Added language translation bar
  - Added social media share buttons
  - Added GitHub status shields
  - Enhanced contributing section with link to guidelines
- **Navigation Updates**:
  - Added Contributing Guide to all documentation navigation
  - Updated footer links across all docs for consistency

### Fixed

- Documentation link consistency across all markdown files
- Installation guide formatting and clarity improvements
- Cross-reference links between documentation files

## [1.0.0] - 2026-05-03

### Added

- **Initial release** of Hentai-Senpai Theme
- Complete GTK theme support:
  - GTK 2.0 with full widget styling and assets
  - GTK 3.0 with comprehensive CSS theming
  - GTK 4.0 with modern CSS and custom properties
- **GNOME Shell 40+** complete theme including:
  - Panel styling with transparency support
  - Overview and app grid theming
  - Notifications and calendar styling
  - System menus and popovers
  - Window previews and alt-tab
- **Cinnamon** desktop environment support with panel and menu theming
- **XFWM4** window manager theme
- **Metacity** window decorations support
- **Nord color palette** integration:
  - **Polar Night** backgrounds (`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - **Snow Storm** text colors (`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - **Frost** accent colors (`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - **Aurora** semantic colors (`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- **Material Design** principles:
  - 12px rounded corners for buttons, cards, and entries
  - 20px border radius for popovers
  - Circular checkboxes and radio buttons (9999px radius)
  - Elevation shadows and depth effects
  - Ripple effects on interactive elements
- **Installation script** (`install.sh`) with comprehensive options:
  - Install and uninstall functionality
  - Update/reinstall capability
  - Custom destination and name options
  - Libadwaita fix for GTK4 applications
  - Flatpak theme fix for sandboxed apps
  - Dock theme styling (transparent and solid variants)
  - Wallpaper installation
  - Dependency checking with auto-installation
  - System information and compatibility display
- **Theme application script** (`scripts/apply.sh`) for automatic theme activation
- **Transparent Plank dock theme** with proper Nord color integration
- **Comprehensive documentation**:
  - Installation guide with detailed options
  - Troubleshooting guide for common issues
  - Color palette reference with usage examples
  - Customization guide for personalizing the theme
- **Wallpaper collection** with Nord-inspired designs

### Theme Components

| Component | Description |
|-----------|-------------|
| **GTK 2.0** | Complete widget styling with image assets |
| **GTK 3.0** | Full CSS theming with all widgets |
| **GTK 4.0** | Modern CSS with custom properties and variables |
| **GNOME Shell** | Complete shell theme with all UI elements |
| **Cinnamon** | Desktop and panel theming |
| **XFWM4** | Window decorations for XFCE |
| **Metacity** | Window decorations for MATE and others |
| **Plank** | Transparent dock theme |

### Supported Desktop Environments

- GNOME 40+
- Cinnamon 4.0+
- XFCE (with xfwm4)
- Budgie 10.5+
- MATE 1.24+

[Unreleased]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
