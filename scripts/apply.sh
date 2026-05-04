#!/bin/bash
#
# Hentai-Senpai Theme Applicator
# This script applies the Hentai-Senpai GTK theme that was installed via install.sh
#
# Usage: ./scripts/apply.sh [OPTIONS]
#
# By default, this script applies all configured options (theme, libadwaita, flatpak,
# dock, and wallpapers). Use options to selectively apply or skip certain components.

set -e

THEME_NAME="Hentai-Senpai"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
USER_THEMES_DIR="${HOME}/.themes"
LIBADWAITA_CONFIG_DIR="${HOME}/.config/gtk-4.0"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to show help
show_help() {
    cat << EOF
Hentai-Senpai Theme Applicator

This script applies the Hentai-Senpai GTK theme and all its components.
It should be run after the theme has been installed via install.sh.

USAGE:
    $0 [OPTIONS]

OPTIONS:
    -h, --help          Display this help message and exit
    -t, --theme-only    Apply only the basic theme (skip all fixes)
    -s, --skip-fixes    Skip all fixes (same as --theme-only)
    -l, --libadwaita    Apply only the libadwaita fix
    -f, --flatpak       Apply only the flatpak fix
    -d, --dock          Apply only the dock fix
    -w, --wallpapers    Apply only the wallpapers

DESCRIPTION:
    By default, this script applies the theme and ALL configured options:
    - Sets the GTK theme via gsettings
    - Links GTK4 files for libadwaita applications
    - Configures Flatpak theme access
    - Applies dock styling (transparent by default)
    - Sets the desktop wallpaper

    If the theme is not installed, run install.sh first:
        ./install.sh

    Use the options above to selectively apply specific components.

EXAMPLES:
    $0                      # Apply theme and all fixes
    $0 -t                   # Apply theme only (skip fixes)
    $0 -l                   # Apply only libadwaita fix
    $0 -f                   # Apply only flatpak fix
    $0 -d                   # Apply only dock fix
    $0 -w                   # Apply only wallpapers
    $0 -lf                  # Apply libadwaita and flatpak fixes only

For full installation options, see install.sh --help.

EOF
}

# Function to check if required commands exist
check_dependencies() {
    local deps=("gsettings")
    for dep in "${deps[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            print_error "$dep is required but not installed."
            exit 1
        fi
    done
}

# Function to check if theme is installed
check_theme_installed() {
    if [[ ! -d "${USER_THEMES_DIR}/${THEME_NAME}" ]]; then
        print_error "Theme not found at: ${USER_THEMES_DIR}/${THEME_NAME}"
        print_info "Please install the theme first by running: ./install.sh"
        exit 1
    fi
}

# Function to apply the theme using gsettings
apply_theme() {
    print_info "Applying ${THEME_NAME} theme..."

    # Apply GTK theme
    gsettings set org.gnome.desktop.interface gtk-theme "$THEME_NAME"
    print_success "GTK theme applied!"

    # Apply GNOME Shell theme if user themes extension is available
    if gsettings list-schemas | grep -q "org.gnome.shell.extensions.user-theme"; then
        gsettings set org.gnome.shell.extensions.user-theme name "$THEME_NAME"
        print_success "GNOME Shell theme applied!"
    else
        print_warning "User Themes extension not detected. GNOME Shell theme not applied."
        print_info "Install GNOME Tweaks and User Themes extension for Shell theme support."
    fi
}

# Function to apply the libadwaita fix
apply_libadwaita_fix() {
    print_info "Applying libadwaita fix..."

    local gtk4_theme_dir="${USER_THEMES_DIR}/${THEME_NAME}/gtk-4.0"

    # Check if GTK4 theme files exist
    if [[ ! -d "$gtk4_theme_dir" ]]; then
        print_warning "GTK4 theme files not found. Skipping libadwaita fix."
        return 0
    fi

    # Create libadwaita config directory if it doesn't exist
    if [[ ! -d "$LIBADWAITA_CONFIG_DIR" ]]; then
        print_info "Creating libadwaita config directory: $LIBADWAITA_CONFIG_DIR"
        mkdir -p "$LIBADWAITA_CONFIG_DIR"
    fi

    # Backup existing libadwaita config
    if [[ -f "${LIBADWAITA_CONFIG_DIR}/gtk.css" && ! -L "${LIBADWAITA_CONFIG_DIR}/gtk.css" ]]; then
        print_info "Backing up existing gtk.css..."
        mv "${LIBADWAITA_CONFIG_DIR}/gtk.css" "${LIBADWAITA_CONFIG_DIR}/gtk.css.bak"
    fi

    if [[ -f "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css" && ! -L "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css" ]]; then
        print_info "Backing up existing gtk-dark.css..."
        mv "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css" "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css.bak"
    fi

    # Create symbolic links for libadwaita
    if [[ -f "${gtk4_theme_dir}/gtk.css" ]]; then
        ln -sf "${gtk4_theme_dir}/gtk.css" "${LIBADWAITA_CONFIG_DIR}/gtk.css"
        print_success "Linked gtk.css for libadwaita"
    fi

    if [[ -f "${gtk4_theme_dir}/gtk-dark.css" ]]; then
        ln -sf "${gtk4_theme_dir}/gtk-dark.css" "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css"
        print_success "Linked gtk-dark.css for libadwaita"
    fi

    # Also link assets if they exist
    if [[ -d "${gtk4_theme_dir}/assets" ]]; then
        if [[ -d "${LIBADWAITA_CONFIG_DIR}/assets" && ! -L "${LIBADWAITA_CONFIG_DIR}/assets" ]]; then
            mv "${LIBADWAITA_CONFIG_DIR}/assets" "${LIBADWAITA_CONFIG_DIR}/assets.bak"
        fi
        ln -sf "${gtk4_theme_dir}/assets" "${LIBADWAITA_CONFIG_DIR}/assets"
        print_success "Linked assets for libadwaita"
    fi

    print_success "Libadwaita fix applied!"
    print_info "Note: You may need to restart libadwaita applications for changes to take effect."
}

# Function to apply the Flatpak fix
apply_flatpak_fix() {
    print_info "Applying Flatpak theme fix..."

    # Check if flatpak is installed
    if ! command -v flatpak &> /dev/null; then
        print_warning "Flatpak is not installed. Skipping flatpak fix."
        return 0
    fi

    # Set the GTK theme for Flatpak applications
    flatpak override --user --env=GTK_THEME="$THEME_NAME" 2>/dev/null && {
        print_success "Set GTK_THEME for Flatpak applications"
    } || {
        print_warning "Failed to set GTK_THEME for Flatpak"
    }

    # Grant Flatpak apps access to the themes directory
    flatpak override --user --filesystem="${USER_THEMES_DIR}:ro" 2>/dev/null && {
        print_success "Granted Flatpak apps read-only access to themes directory"
    } || {
        print_warning "Failed to grant themes directory access to Flatpak"
    }

    # Also grant access to the specific theme directory
    flatpak override --user --filesystem="${USER_THEMES_DIR}/${THEME_NAME}:ro" 2>/dev/null && {
        print_success "Granted Flatpak apps read-only access to ${THEME_NAME} theme"
    } || {
        print_warning "Failed to grant theme directory access to Flatpak"
    }

    print_success "Flatpak fix applied!"
    print_info "Note: You may need to restart Flatpak applications for changes to take effect."
}

# Function to apply the dock fix
apply_dock_fix() {
    print_info "Applying dock theme fix..."

    local DASH_TO_DOCK_DIR_HOME="${HOME}/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com"
    local DASH_TO_DOCK_DIR_ROOT="/usr/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com"
    local UBUNTU_DOCK_DIR_HOME="${HOME}/.local/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com"
    local UBUNTU_DOCK_DIR_ROOT="/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com"

    local dock_found=false

    # Check for dash-to-dock
    if [[ -d "$DASH_TO_DOCK_DIR_HOME" ]] || [[ -d "$DASH_TO_DOCK_DIR_ROOT" ]]; then
        dock_found=true
        print_info "Found dash-to-dock extension"
    fi

    # Check for ubuntu-dock
    if [[ -d "$UBUNTU_DOCK_DIR_HOME" ]] || [[ -d "$UBUNTU_DOCK_DIR_ROOT" ]]; then
        dock_found=true
        print_info "Found ubuntu-dock extension"
    fi

    if [[ "$dock_found" == false ]]; then
        print_warning "Neither dash-to-dock nor ubuntu-dock extension found"
        return 0
    fi

    # Enable custom theme support via gsettings
    if gsettings list-schemas | grep -q "org.gnome.shell.extensions.dash-to-dock"; then
        print_info "Enabling custom theme support for dock..."
        gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme true
        print_success "Custom theme support enabled!"
    else
        print_warning "Could not enable custom theme support for dock"
    fi

    print_success "Dock fix applied!"
    print_info "Note: You may need to restart GNOME Shell for changes to take effect"
}

# Function to apply wallpapers
apply_wallpapers() {
    print_info "Applying ${THEME_NAME} wallpapers..."

    local wallpapers_dir="${USER_THEMES_DIR}/${THEME_NAME}/wallpapers"
    local backgrounds_dir="${USER_THEMES_DIR}/${THEME_NAME}/backgrounds"
    local slideshow_xml="${backgrounds_dir}/${THEME_NAME}-slideshow.xml"
    local first_wallpaper=""

    # Check if wallpapers directory exists
    if [[ -d "$wallpapers_dir" ]]; then
        # Find the first wallpaper file
        first_wallpaper=$(find "$wallpapers_dir" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.webp" \) | sort | head -n 1)
    fi

    # Check if slideshow XML exists - if so, create a version with absolute paths
    if [[ -f "$slideshow_xml" ]] && [[ -n "$first_wallpaper" ]]; then
        print_info "Found slideshow configuration"

        # Create a temporary slideshow XML with absolute paths
        local temp_slideshow="${backgrounds_dir}/${THEME_NAME}-slideshow-absolute.xml"

        cat > "$temp_slideshow" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<background>
  <starttime>
    <year>2024</year>
    <month>01</month>
    <day>01</day>
    <hour>00</hour>
    <minute>00</minute>
    <second>00</second>
  </starttime>

  <!-- Wallpaper 001 -->
  <static>
    <duration>3600.0</duration>
    <file>${wallpapers_dir}/001.png</file>
  </static>
  <transition>
    <duration>5.0</duration>
    <from>${wallpapers_dir}/001.png</from>
    <to>${wallpapers_dir}/002.png</to>
  </transition>

  <!-- Wallpaper 002 -->
  <static>
    <duration>3600.0</duration>
    <file>${wallpapers_dir}/002.png</file>
  </static>
  <transition>
    <duration>5.0</duration>
    <from>${wallpapers_dir}/002.png</from>
    <to>${wallpapers_dir}/003.png</to>
  </transition>

  <!-- Wallpaper 003 -->
  <static>
    <duration>3600.0</duration>
    <file>${wallpapers_dir}/003.png</file>
  </static>
  <transition>
    <duration>5.0</duration>
    <from>${wallpapers_dir}/003.png</from>
    <to>${wallpapers_dir}/004.png</to>
  </transition>

  <!-- Wallpaper 004 -->
  <static>
    <duration>3600.0</duration>
    <file>${wallpapers_dir}/004.png</file>
  </static>
  <transition>
    <duration>5.0</duration>
    <from>${wallpapers_dir}/004.png</from>
    <to>${wallpapers_dir}/005.png</to>
  </transition>

  <!-- Wallpaper 005 -->
  <static>
    <duration>3600.0</duration>
    <file>${wallpapers_dir}/005.png</file>
  </static>
  <transition>
    <duration>5.0</duration>
    <from>${wallpapers_dir}/005.png</from>
    <to>${wallpapers_dir}/006.png</to>
  </transition>

  <!-- Wallpaper 006 -->
  <static>
    <duration>3600.0</duration>
    <file>${wallpapers_dir}/006.png</file>
  </static>
  <transition>
    <duration>5.0</duration>
    <from>${wallpapers_dir}/006.png</from>
    <to>${wallpapers_dir}/001.png</to>
  </transition>

</background>
EOF

        # Apply the absolute path slideshow
        gsettings set org.gnome.desktop.background picture-uri "file://${temp_slideshow}"
        gsettings set org.gnome.desktop.background picture-uri-dark "file://${temp_slideshow}"
        print_success "Slideshow wallpaper applied with absolute paths!"

    elif [[ -n "$first_wallpaper" ]]; then
        print_info "Found wallpaper: $(basename "$first_wallpaper")"
        # Apply single wallpaper
        gsettings set org.gnome.desktop.background picture-uri "file://$first_wallpaper"
        gsettings set org.gnome.desktop.background picture-uri-dark "file://$first_wallpaper"
        print_success "Wallpaper applied!"
    else
        print_warning "No wallpapers found in ${THEME_NAME} theme"
    fi
}

# Main function
main() {
    local theme_only=false
    local apply_libadwaita=false
    local apply_flatpak=false
    local apply_dock=false
    local apply_wallpaper=false

    # Parse command line arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            -h|--help)
                show_help
                exit 0
                ;;
            -t|--theme-only|-s|--skip-fixes)
                theme_only=true
                shift
                ;;
            -l|--libadwaita)
                apply_libadwaita=true
                shift
                ;;
            -f|--flatpak)
                apply_flatpak=true
                shift
                ;;
            -d|--dock)
                apply_dock=true
                shift
                ;;
            -w|--wallpapers)
                apply_wallpaper=true
                shift
                ;;
            *)
                print_error "Unknown option: $1"
                show_help
                exit 1
                ;;
        esac
    done

    echo "=========================================="
    echo "  ${THEME_NAME} Theme Applicator"
    echo "=========================================="
    echo ""

    # Check dependencies
    check_dependencies

    # Check if theme is installed
    check_theme_installed
    print_success "Theme found at: ${USER_THEMES_DIR}/${THEME_NAME}"
    echo ""

    # Apply theme
    apply_theme

    # If theme-only mode, skip all fixes
    if [[ "$theme_only" == true ]]; then
        echo ""
        print_info "Theme-only mode: Skipping all fixes."
    else
        # If no specific fixes requested, apply all
        # If specific fixes requested, only apply those
        if [[ "$apply_libadwaita" == false && "$apply_flatpak" == false && "$apply_dock" == false && "$apply_wallpaper" == false ]]; then
            # Apply all fixes
            echo ""
            apply_libadwaita_fix
            echo ""
            apply_flatpak_fix
            echo ""
            apply_dock_fix
            echo ""
            apply_wallpapers
        else
            # Apply only requested fixes
            if [[ "$apply_libadwaita" == true ]]; then
                echo ""
                apply_libadwaita_fix
            fi
            if [[ "$apply_flatpak" == true ]]; then
                echo ""
                apply_flatpak_fix
            fi
            if [[ "$apply_dock" == true ]]; then
                echo ""
                apply_dock_fix
            fi
            if [[ "$apply_wallpaper" == true ]]; then
                echo ""
                apply_wallpapers
            fi
        fi
    fi

    echo ""
    echo "=========================================="
    print_success "Theme application complete!"
    echo "=========================================="
    echo ""
    print_info "If changes are not visible, try:"
    print_info "  - Restarting applications"
    print_info "  - Logging out and back in"
    print_info "  - Restarting GNOME Shell (Alt+F2, type 'r', Enter)"
}

# Run main function
main "$@"
