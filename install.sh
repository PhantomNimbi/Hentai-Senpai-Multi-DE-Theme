#!/bin/bash

# Hentai-Senpai Theme Installer
# This script installs, updates, and uninstalls the Hentai-Senpai GTK theme

set -e

THEME_NAME="Hentai-Senpai"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_SOURCE="${SCRIPT_DIR}/src/${THEME_NAME}"
USER_THEMES_DIR="${HOME}/.themes"
LIBADWAITA_CONFIG_DIR="${HOME}/.config/gtk-4.0"

# Source core functions
if [[ -f "${SCRIPT_DIR}/scripts/core.sh" ]]; then
    source "${SCRIPT_DIR}/scripts/core.sh"
else
    echo "Error: core.sh not found. Please ensure the scripts directory is present."
    exit 1
fi

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
Hentai-Senpai Theme Installer

Usage: $0 [OPTIONS]

OPTIONS:
    -u, --uninstall     Uninstall/remove the theme from the system
    --update            Update/reinstall the theme (same as install)
    -d, --dest DIR      Specify destination directory (default: ~/.themes)
    -n, --name NAME     Specify theme name (default: Hentai-Senpai)
    -l, --libadwaita    Apply the libadwaita fix for GTK4 applications
    -f, --flatpak       Apply the Flatpak theme fix for sandboxed apps
    --dock [TYPE]       Apply dock theme fix (TYPE: transparent|solid, default: transparent)
    -w, --wallpapers    Apply theme wallpapers
    --check-deps        Check and install missing dependencies
    --system-info       Show system information and compatibility
    -h, --help          Show this help message

DESCRIPTION:
    This script installs, updates, or uninstalls the Hentai-Senpai GTK theme.

    By default (no options), it installs the theme to ~/.themes without
    applying it. To apply the theme after installation, use apply-theme.sh

    The --update option reinstalls the theme, useful when the theme files
    have been modified or updated.

    The --uninstall option removes the theme from the system.

EXAMPLES:
    $0                          # Install the theme only
    $0 --update                 # Update/reinstall the theme
    $0 --uninstall              # Remove the theme
    $0 -l                       # Install and apply libadwaita fix
    $0 -f                       # Install and apply flatpak fix
    $0 --dock                   # Install with transparent dock (default)
    $0 --dock solid             # Install with solid dock
    $0 -w                       # Install and apply wallpapers
    $0 -lfd                     # Install with libadwaita, flatpak, and dock
    $0 -lfdw                    # Install with all fixes including wallpapers
    $0 -lfd solid               # All fixes with solid dock
    $0 --check-deps             # Install missing dependencies

    # To apply the theme after installation:
    ./apply-theme.sh            # Apply the installed theme

EOF
}

# Function to install transparent plank theme
install_plank_transparent() {
    local dest="${1:-$USER_THEMES_DIR}"
    local name="${2:-$THEME_NAME}"
    local plank_dir="${HOME}/.config/plank/themes/${name}-Transparent"
    local transparent_theme="${SCRIPT_DIR}/src/${name}/plank/dock-transparent.theme"
    
    print_info "Installing transparent plank dock theme..."
    
    # Check if transparent theme file exists
    if [[ ! -f "$transparent_theme" ]]; then
        print_error "Transparent dock theme not found at: $transparent_theme"
        return 1
    fi
    
    # Create plank themes directory if it doesn't exist
    if [[ ! -d "${HOME}/.config/plank/themes" ]]; then
        print_info "Creating plank themes directory..."
        mkdir -p "${HOME}/.config/plank/themes"
    fi
    
    # Remove existing transparent theme
    if [[ -d "$plank_dir" ]]; then
        print_warning "Removing existing transparent plank theme..."
        rm -rf "$plank_dir"
    fi
    
    # Create theme directory and copy theme file
    mkdir -p "$plank_dir"
    cp "$transparent_theme" "${plank_dir}/dock.theme"
    
    print_success "Transparent plank theme installed to: $plank_dir"
    print_info "To use it, run: plank --preferences and select '${name}-Transparent'"
}

# Function to check if required commands exist for fixes
check_fix_dependencies() {
    if ! command -v gsettings &> /dev/null; then
        print_error "gsettings is required for applying fixes but not installed."
        exit 1
    fi
}

# Function to install the theme
install_theme() {
    local dest="${1:-$USER_THEMES_DIR}"
    local name="${2:-$THEME_NAME}"

    print_info "Installing ${name} theme to ${dest}..."

    # Check if theme source exists
    if [[ ! -d "$THEME_SOURCE" ]]; then
        print_error "Theme source not found at: $THEME_SOURCE"
        exit 1
    fi

    # Create themes directory if it doesn't exist
    if [[ ! -d "$dest" ]]; then
        print_info "Creating themes directory: $dest"
        mkdir -p "$dest"
    fi

    local theme_dir="${dest}/${name}"

    # Remove existing theme installation
    if [[ -d "$theme_dir" ]]; then
        print_warning "Removing existing theme installation..."
        rm -rf "$theme_dir"
    fi

    # Create theme directory
    mkdir -p "$theme_dir"

    # Get distribution for specific tweaks
    local distro
    distro=$(detect_distribution)
    local de
    de=$(detect_desktop_environment)

    print_info "Detected distribution: $distro"
    print_info "Detected desktop environment: $de"

    # Copy and generate theme files based on available CSS in src
    print_info "Generating theme files from source CSS..."

    # Generate distribution-specific theme files using CSS from src
    generate_distro_theme_files "$THEME_SOURCE" "$theme_dir" "$distro"

    # Generate any missing components based on DE
    generate_missing_components "$theme_dir" "$de"

    # Copy assets from source
    print_info "Copying theme assets..."
    for dir in gtk-3.0 gtk-4.0 gnome-shell cinnamon; do
        if [[ -d "${THEME_SOURCE}/${dir}/assets" ]]; then
            mkdir -p "${theme_dir}/${dir}/assets"
            cp -r "${THEME_SOURCE}/${dir}/assets/"* "${theme_dir}/${dir}/assets/" 2>/dev/null || true
        fi
    done

    # Copy other static files
    for subdir in xfwm4 metacity-1 plank; do
        if [[ -d "${THEME_SOURCE}/${subdir}" ]]; then
            cp -r "${THEME_SOURCE}/${subdir}" "${theme_dir}/" 2>/dev/null || true
        fi
    done

    # Generate/update index.theme
    print_info "Generating theme metadata..."
    generate_index_theme "$name" "$theme_dir"

    # Generate distribution-specific notes
    local notes_dir="${theme_dir}/docs"
    mkdir -p "$notes_dir"
    generate_distro_notes "$distro" "${notes_dir}/INSTALL_NOTES.md"

    # Validate installation
    print_info "Validating installation..."
    if validate_theme_installation "$theme_dir"; then
        print_success "Theme validation passed!"
    else
        print_warning "Theme validation found issues (non-critical)"
    fi

    print_success "Theme installed successfully to: $theme_dir"
}

# Function to uninstall/remove the theme
uninstall_theme() {
    local dest="${1:-$USER_THEMES_DIR}"
    local name="${2:-$THEME_NAME}"
    local theme_dir="${dest}/${name}"
    
    print_info "Uninstalling ${name} theme..."
    
    # Check if theme exists
    if [[ ! -d "$theme_dir" ]]; then
        print_warning "Theme not found at: $theme_dir"
        print_info "Theme may already be uninstalled."
        return 0
    fi
    
    # Remove theme directory
    rm -rf "$theme_dir"
    print_success "Theme removed from: $theme_dir"
    
    # Remove libadwaita links if they point to this theme
    if [[ -L "${LIBADWAITA_CONFIG_DIR}/gtk.css" ]]; then
        local link_target
        link_target=$(readlink "${LIBADWAITA_CONFIG_DIR}/gtk.css")
        if [[ "$link_target" == *"${name}"* ]]; then
            print_info "Removing libadwaita configuration..."
            rm -f "${LIBADWAITA_CONFIG_DIR}/gtk.css"
            rm -f "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css"
            rm -f "${LIBADWAITA_CONFIG_DIR}/assets"
            print_success "Libadwaita configuration removed!"
        fi
    fi
    
    # Restore dock stylesheets if backups exist
    local DASH_TO_DOCK_DIR_HOME="${HOME}/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com"
    local UBUNTU_DOCK_DIR_HOME="${HOME}/.local/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com"

    if [[ -f "${DASH_TO_DOCK_DIR_HOME}/stylesheet.css.bak" ]]; then
        print_info "Restoring dash-to-dock stylesheet..."
        mv "${DASH_TO_DOCK_DIR_HOME}/stylesheet.css.bak" "${DASH_TO_DOCK_DIR_HOME}/stylesheet.css"
        print_success "Dash-to-dock stylesheet restored!"
    fi

    if [[ -f "${UBUNTU_DOCK_DIR_HOME}/stylesheet.css.bak" ]]; then
        print_info "Restoring ubuntu-dock stylesheet..."
        mv "${UBUNTU_DOCK_DIR_HOME}/stylesheet.css.bak" "${UBUNTU_DOCK_DIR_HOME}/stylesheet.css"
        print_success "Ubuntu-dock stylesheet restored!"
    fi

    # Remove transparent plank theme if it exists
    local plank_transparent_dir="${HOME}/.config/plank/themes/${name}-Transparent"
    if [[ -d "$plank_transparent_dir" ]]; then
        print_info "Removing transparent plank theme..."
        rm -rf "$plank_transparent_dir"
        print_success "Transparent plank theme removed!"
    fi

    # Reset gsettings to default theme (Adwaita)
    print_info "Resetting theme settings to default..."
    gsettings reset org.gnome.desktop.interface gtk-theme 2>/dev/null || true
    gsettings reset org.gnome.shell.extensions.user-theme name 2>/dev/null || true
    
    print_success "Theme uninstalled successfully!"
    print_info "Note: You may need to restart GNOME Shell or log out for changes to take effect."
}

# Function to apply the libadwaita fix
apply_libadwaita_fix() {
    local dest="${1:-$USER_THEMES_DIR}"
    local name="${2:-$THEME_NAME}"
    
    print_info "Applying libadwaita fix..."
    
    # Create libadwaita config directory if it doesn't exist
    if [[ ! -d "$LIBADWAITA_CONFIG_DIR" ]]; then
        print_info "Creating libadwaita config directory: $LIBADWAITA_CONFIG_DIR"
        mkdir -p "$LIBADWAITA_CONFIG_DIR"
    fi
    
    local gtk4_theme_dir="${dest}/${name}/gtk-4.0"
    
    # Check if GTK4 theme files exist
    if [[ ! -d "$gtk4_theme_dir" ]]; then
        print_error "GTK4 theme files not found at: $gtk4_theme_dir"
        print_info "Make sure the theme is installed first."
        exit 1
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
    
    print_success "Libadwaita fix applied successfully!"
    print_info "Note: You may need to restart libadwaita applications for changes to take effect."
}

# Function to apply the Flatpak fix
apply_flatpak_fix() {
    local name="${1:-$THEME_NAME}"
    
    print_info "Applying Flatpak theme fix..."
    
    # Check if flatpak is installed
    if ! command -v flatpak &> /dev/null; then
        print_error "Flatpak is not installed."
        exit 1
    fi
    
    # Set the GTK theme for Flatpak applications
    flatpak override --user --env=GTK_THEME="$name" 2>/dev/null || {
        print_warning "Failed to set GTK_THEME environment variable for Flatpak."
    }
    
    # Grant Flatpak apps access to the themes directory
    flatpak override --user --filesystem="${USER_THEMES_DIR}:ro" 2>/dev/null && {
        print_success "Granted Flatpak apps read-only access to themes directory"
    } || {
        print_warning "Failed to grant themes directory access to Flatpak"
    }
    
    # Also grant access to the specific theme directory
    flatpak override --user --filesystem="${USER_THEMES_DIR}/${name}:ro" 2>/dev/null && {
        print_success "Granted Flatpak apps read-only access to ${name} theme"
    } || {
        print_warning "Failed to grant theme directory access to Flatpak"
    }
    
    print_success "Flatpak theme fix applied!"
    print_info "Note: You may need to restart Flatpak applications for changes to take effect."
}

# Function to backup a file
backup_file() {
    local file="$1"
    local use_sudo="$2"
    
    if [[ -f "${file}.bak" || -d "${file}.bak" ]]; then
        if [[ "$use_sudo" == "sudo" ]]; then
            sudo rm -rf "$file"
        else
            rm -rf "$file"
        fi
    fi
    
    if [[ -f "$file" || -d "$file" ]]; then
        if [[ "$use_sudo" == "sudo" ]]; then
            sudo mv -n "$file"{"",".bak"}
        else
            mv -n "$file"{"",".bak"}
        fi
    fi
}

# Function to check and handle dependencies
handle_dependencies() {
    print_info "Checking dependencies..."
    
    local distro
    distro=$(detect_distribution)
    local family
    family=$(get_distro_family "$distro")
    local missing_deps
    
    if ! missing_deps=$(check_and_install_dependencies); then
        print_warning "Missing dependencies detected: $missing_deps"
        
        local install_cmd
        install_cmd=$(get_install_command)
        
        if [[ -z "$install_cmd" ]]; then
            print_error "Could not determine package manager for your distribution"
            print_info "Please install the following packages manually: $missing_deps"
            return 1
        fi
        
        print_info "Would you like to install missing dependencies?"
        read -p "[Y/n]: " response
        
        if [[ -z "$response" || "$response" =~ ^[Yy] ]]; then
            print_info "Installing dependencies: $missing_deps"
            if $install_cmd $missing_deps; then
                print_success "Dependencies installed successfully!"
            else
                print_error "Failed to install dependencies"
                return 1
            fi
        else
            print_warning "Continuing without dependencies. Theme may not work correctly."
        fi
    else
        print_success "All dependencies satisfied!"
    fi
    
    return 0
}

# Function to show system information
show_system_info() {
    print_distro_info
    
    print_info "Checking system compatibility..."
    local compat_issues
    if ! compat_issues=$(check_system_compatibility); then
        print_warning "Compatibility issues found:"
        echo "$compat_issues" | tr ' ' '\n' | while read -r issue; do
            echo "  - $issue"
        done
    else
        print_success "System is compatible!"
    fi
    
    local de_variant
    de_variant=$(get_de_theme_variant)
    print_info "Recommended theme variant: $de_variant"
}

# Function to apply the dock fix
apply_dock_fix() {
    local name="${1:-$THEME_NAME}"
    local dock_type="${2:-transparent}"

    if [[ "$dock_type" == "transparent" ]]; then
        print_info "Applying transparent dock theme fix..."
    else
        print_info "Applying solid dock theme fix..."
    fi

    local DASH_TO_DOCK_DIR_HOME="${HOME}/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com"
    local DASH_TO_DOCK_DIR_ROOT="/usr/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com"
    local UBUNTU_DOCK_DIR_HOME="${HOME}/.local/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com"
    local UBUNTU_DOCK_DIR_ROOT="/usr/share/gnome-shell/extensions/ubuntu-dock@ubuntu.com"

    local dock_found=false

    # Backup and remove dash-to-dock stylesheet
    if [[ -d "$DASH_TO_DOCK_DIR_HOME" ]]; then
        print_info "Found dash-to-dock in user extensions"
        backup_file "${DASH_TO_DOCK_DIR_HOME}/stylesheet.css"
        dock_found=true
    elif [[ -d "$DASH_TO_DOCK_DIR_ROOT" ]]; then
        print_info "Found dash-to-dock in system extensions"
        backup_file "${DASH_TO_DOCK_DIR_ROOT}/stylesheet.css" "sudo"
        dock_found=true
    fi

    # Backup and remove ubuntu-dock stylesheet
    if [[ -d "$UBUNTU_DOCK_DIR_HOME" ]]; then
        print_info "Found ubuntu-dock in user extensions"
        backup_file "${UBUNTU_DOCK_DIR_HOME}/stylesheet.css"
        dock_found=true
    elif [[ -d "$UBUNTU_DOCK_DIR_ROOT" ]]; then
        print_info "Found ubuntu-dock in system extensions"
        backup_file "${UBUNTU_DOCK_DIR_ROOT}/stylesheet.css" "sudo"
        dock_found=true
    fi

    if [[ "$dock_found" == false ]]; then
        print_warning "Neither dash-to-dock nor ubuntu-dock extension found"
    fi

    # Enable custom theme support via gsettings
    if gsettings list-schemas | grep -q "org.gnome.shell.extensions.dash-to-dock"; then
        print_info "Enabling custom theme support for dock..."
        gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme true

        # Set dock transparency based on type
        if [[ "$dock_type" == "transparent" ]]; then
            gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED' 2>/dev/null || true
            gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.35 2>/dev/null || true
        else
            gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DEFAULT' 2>/dev/null || true
            gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.65 2>/dev/null || true
        fi
        print_success "Custom theme support enabled!"
    else
        print_warning "Could not enable custom theme support for dock"
    fi

    # Install transparent plank theme if transparent mode selected
    if [[ "$dock_type" == "transparent" ]]; then
        install_plank_transparent "$USER_THEMES_DIR" "$name"
    fi

    if [[ "$dock_type" == "transparent" ]]; then
        print_success "Transparent dock theme fix applied!"
    else
        print_success "Solid dock theme fix applied!"
    fi
    print_info "Note: You may need to restart GNOME Shell for changes to take effect"
}

# Function to apply wallpapers
apply_wallpapers() {
    local name="${1:-$THEME_NAME}"
    local dest="${2:-$USER_THEMES_DIR}"

    print_info "Applying ${name} wallpapers..."

    local wallpapers_dir="${dest}/${name}/wallpapers"
    local backgrounds_dir="${dest}/${name}/backgrounds"
    local slideshow_xml="${backgrounds_dir}/${name}-slideshow.xml"
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
        local temp_slideshow="${backgrounds_dir}/${name}-slideshow-absolute.xml"

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
        print_warning "No wallpapers found in ${name} theme"
        print_info "Wallpapers can be added to: ${wallpapers_dir}/"
    fi
}

# Main function
main() {
    local uninstall=false
    local update=false
    local libadwaita_fix=false
    local flatpak_fix=false
    local dock_fix=false
    local wallpapers_fix=false
    local check_deps=false
    local show_info=false
    local dock_type="transparent"
    local dest="$USER_THEMES_DIR"
    local name="$THEME_NAME"

    # Parse command line arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            -u|--uninstall)
                uninstall=true
                shift
                ;;
            --update)
                update=true
                shift
                ;;
            -d|--dest)
                dest="$2"
                shift 2
                ;;
            -n|--name)
                name="$2"
                shift 2
                ;;
            -l|--libadwaita)
                libadwaita_fix=true
                shift
                ;;
            -f|--flatpak)
                flatpak_fix=true
                shift
                ;;
            --dock)
                dock_fix=true
                # Check if next argument is a dock type
                if [[ -n "$2" && "$2" != -* && ("$2" == "transparent" || "$2" == "solid") ]]; then
                    dock_type="$2"
                    shift 2
                else
                    shift
                fi
                ;;
            -w|--wallpapers)
                wallpapers_fix=true
                shift
                ;;
            -lfdw|-lfd|-ldf|-fld|-fdl|-dlf|-dfl|-wlf|-wld|-wfl|-wfd|-wdl|-wdf)
                # Combined short options with wallpapers
                libadwaita_fix=true
                flatpak_fix=true
                dock_fix=true
                wallpapers_fix=true
                shift
                ;;
            -lf|-fl)
                # Combined: libadwaita + flatpak
                libadwaita_fix=true
                flatpak_fix=true
                shift
                ;;
            -ld|-dl)
                # Combined: libadwaita + dock
                libadwaita_fix=true
                dock_fix=true
                shift
                ;;
            -fd|-df)
                # Combined: flatpak + dock
                flatpak_fix=true
                dock_fix=true
                shift
                ;;
            -lw|-wl)
                # Combined: libadwaita + wallpapers
                libadwaita_fix=true
                wallpapers_fix=true
                shift
                ;;
            -fw|-wf)
                # Combined: flatpak + wallpapers
                flatpak_fix=true
                wallpapers_fix=true
                shift
                ;;
            -dw|-wd)
                # Combined: dock + wallpapers
                dock_fix=true
                wallpapers_fix=true
                shift
                ;;
            --check-deps)
                check_deps=true
                shift
                ;;
            --system-info)
                show_info=true
                shift
                ;;
            -h|--help)
                show_help
                exit 0
                ;;
            *)
                print_error "Unknown option: $1"
                show_help
                exit 1
                ;;
        esac
    done

    # Show system info if requested
    if [[ "$show_info" == true ]]; then
        show_system_info
        exit 0
    fi

    # Check deps if requested
    if [[ "$check_deps" == true ]]; then
        handle_dependencies
        exit 0
    fi

    echo "=========================================="
    echo "  ${THEME_NAME} Theme Installer"
    echo "=========================================="
    echo ""

    # Show distribution info
    print_distro_info
    echo ""

    # Handle uninstall
    if [[ "$uninstall" == true ]]; then
        uninstall_theme "$dest" "$name"
        exit 0
    fi

    # Check dependencies before installation
    handle_dependencies
    echo ""

    # Install/update theme
    install_theme "$dest" "$name"

    # Check dependencies for fixes if any are requested
    if [[ "$libadwaita_fix" == true ]] || [[ "$flatpak_fix" == true ]] || [[ "$dock_fix" == true ]] || [[ "$wallpapers_fix" == true ]]; then
        check_fix_dependencies
    fi

    # Apply libadwaita fix if requested
    if [[ "$libadwaita_fix" == true ]]; then
        echo ""
        apply_libadwaita_fix "$dest" "$name"
    fi

    # Apply flatpak fix if requested
    if [[ "$flatpak_fix" == true ]]; then
        echo ""
        apply_flatpak_fix "$name"
    fi

    # Apply dock fix if requested
    if [[ "$dock_fix" == true ]]; then
        echo ""
        apply_dock_fix "$name" "$dock_type"
    fi

    # Apply wallpapers if requested
    if [[ "$wallpapers_fix" == true ]]; then
        echo ""
        apply_wallpapers "$name" "$dest"
    fi

    echo ""
    echo "=========================================="
    print_success "Theme installation complete!"
    echo "=========================================="
    echo ""
    print_info "To apply the theme, run: ./apply-theme.sh"
}

# Run main function
main "$@"
