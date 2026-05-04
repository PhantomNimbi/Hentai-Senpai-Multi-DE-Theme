#!/bin/bash

# Hentai-Senpai Theme Installer and Applicator
# This script installs and applies the Hentai-Senpai GTK theme

set -e

THEME_NAME="Hentai-Senpai"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_SOURCE="${SCRIPT_DIR}/src/${THEME_NAME}"
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

# Function to install the theme to user themes directory
install_theme() {
    print_info "Installing ${THEME_NAME} theme..."
    
    # Check if theme source exists
    if [[ ! -d "$THEME_SOURCE" ]]; then
        print_error "Theme source not found at: $THEME_SOURCE"
        exit 1
    fi
    
    # Create themes directory if it doesn't exist
    if [[ ! -d "$USER_THEMES_DIR" ]]; then
        print_info "Creating themes directory: $USER_THEMES_DIR"
        mkdir -p "$USER_THEMES_DIR"
    fi
    
    # Remove existing theme installation
    if [[ -d "${USER_THEMES_DIR}/${THEME_NAME}" ]]; then
        print_warning "Removing existing theme installation..."
        rm -rf "${USER_THEMES_DIR}/${THEME_NAME}"
    fi
    
    # Copy theme to user themes directory
    print_info "Copying theme files to ${USER_THEMES_DIR}..."
    cp -r "$THEME_SOURCE" "$USER_THEMES_DIR/"
    
    print_success "Theme installed successfully!"
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
    
    # Create libadwaita config directory if it doesn't exist
    if [[ ! -d "$LIBADWAITA_CONFIG_DIR" ]]; then
        print_info "Creating libadwaita config directory: $LIBADWAITA_CONFIG_DIR"
        mkdir -p "$LIBADWAITA_CONFIG_DIR"
    fi
    
    local gtk4_theme_dir="${USER_THEMES_DIR}/${THEME_NAME}/gtk-4.0"
    
    # Check if GTK4 theme files exist
    if [[ ! -d "$gtk4_theme_dir" ]]; then
        print_error "GTK4 theme files not found at: $gtk4_theme_dir"
        print_info "Make sure the theme is installed first."
        exit 1
    fi
    
    # Backup existing libadwaita config
    if [[ -f "${LIBADWAITA_CONFIG_DIR}/gtk.css" ]]; then
        print_info "Backing up existing gtk.css..."
        mv "${LIBADWAITA_CONFIG_DIR}/gtk.css" "${LIBADWAITA_CONFIG_DIR}/gtk.css.bak"
    fi
    
    if [[ -f "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css" ]]; then
        print_info "Backing up existing gtk-dark.css..."
        mv "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css" "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css.bak"
    fi
    
    # Create symbolic links for libadwaita
    if [[ -f "${gtk4_theme_dir}/gtk.css" ]]; then
        ln -sf "${gtk4_theme_dir}/gtk.css" "${LIBADWAITA_CONFIG_DIR}/gtk.css"
        print_success "Linked gtk.css for libadwaita"
    else
        print_warning "gtk.css not found in theme, skipping..."
    fi
    
    if [[ -f "${gtk4_theme_dir}/gtk-dark.css" ]]; then
        ln -sf "${gtk4_theme_dir}/gtk-dark.css" "${LIBADWAITA_CONFIG_DIR}/gtk-dark.css"
        print_success "Linked gtk-dark.css for libadwaita"
    else
        print_warning "gtk-dark.css not found in theme, skipping..."
    fi
    
    # Also link assets if they exist
    if [[ -d "${gtk4_theme_dir}/assets" ]]; then
        if [[ -d "${LIBADWAITA_CONFIG_DIR}/assets" ]]; then
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
    print_info "Applying Flatpak theme fix..."
    
    # Check if flatpak is installed
    if ! command -v flatpak &> /dev/null; then
        print_error "Flatpak is not installed."
        exit 1
    fi
    
    # Check if theme is installed
    if [[ ! -d "${USER_THEMES_DIR}/${THEME_NAME}" ]]; then
        print_error "Theme not found at: ${USER_THEMES_DIR}/${THEME_NAME}"
        print_info "Please run the script without --flatpak first to install the theme."
        exit 1
    fi
    
    # Install the theme using flatpak override to make it available to all Flatpak apps
    print_info "Configuring Flatpak to use ${THEME_NAME} theme..."
    
    # Set the GTK theme for Flatpak applications
    flatpak override --user --env=GTK_THEME="$THEME_NAME" 2>/dev/null || {
        print_warning "Failed to set GTK_THEME environment variable for Flatpak."
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
    
    # Install common GTK theme extensions if needed
    print_info "Checking for GTK theme Flatpak extensions..."
    
    # Check for common GTK theme runtime extensions
    local gtk3_extension="org.gtk.Gtk3theme.${THEME_NAME}"
    local gtk3_extension_alt="org.gtk.Gtk3theme.${THEME_NAME//-/}"
    
    # Check if the extension is already installed
    if flatpak list --app --runtime 2>/dev/null | grep -q "$gtk3_extension"; then
        print_success "GTK3 theme extension already installed: $gtk3_extension"
    else
        print_info "GTK3 theme extension not found in Flatpak repository."
        print_info "Theme will use system fallback or custom CSS."
    fi
    
    print_success "Flatpak theme fix applied!"
    print_info "Note: You may need to restart Flatpak applications for changes to take effect."
    print_info "Tip: Some Flatpak apps may also need the --libadwaita fix for full theme support."
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

# Function to apply the dock fix (Orchis method)
apply_dock_fix() {
    local dock_type="${1:-transparent}"
    
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
        print_info "The dock fix only applies to systems with these extensions installed"
        return 0
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
        print_info "You may need to enable 'Use built-in theme' option manually in GNOME Tweaks or dconf-editor"
    fi
    
    # Install transparent plank theme if transparent mode selected
    if [[ "$dock_type" == "transparent" ]]; then
        install_plank_transparent "$USER_THEMES_DIR" "$THEME_NAME"
    fi
    
    if [[ "$dock_type" == "transparent" ]]; then
        print_success "Transparent dock theme fix applied!"
    else
        print_success "Solid dock theme fix applied!"
    fi
    print_info "Note: You may need to restart GNOME Shell (Alt+F2, type 'r', Enter) for changes to take effect"
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
        print_info "Wallpapers can be added to: ${wallpapers_dir}/"
    fi
}

# Function to show help
show_help() {
    cat << EOF
Hentai-Senpai Theme - Installer and Applicator
A Nord-colored dark theme based on Orchis for GTK/GNOME Shell

USAGE:
    $0 [OPTIONS]

OPTIONS:
    -h, --help          Display this help message and exit

    -l, --libadwaita    Fix GTK4/libadwaita applications
                        Creates symbolic links in ~/.config/gtk-4.0/ pointing
                        to the theme's GTK4 CSS files. This ensures modern
                        GTK4 applications properly use the Hentai-Senpai theme
                        instead of falling back to default libadwaita styling.
                        Note: You may need to restart GTK4 apps after applying.

    -f, --flatpak       Fix Flatpak sandboxed applications
                        Configures Flatpak to use the theme by:
                        - Setting GTK_THEME environment variable
                        - Granting read-only access to ~/.themes/
                        - Granting read-only access to the theme directory
                        This allows sandboxed apps to access and use the theme.
                        Note: Requires Flatpak to be installed on your system.

    -d, --dock [TYPE]   Fix dash-to-dock / ubuntu-dock styling
                        Applies the Orchis method to fix dock theming by:
                        - Backing up and removing the dock's stylesheet.css
                        - Enabling 'apply-custom-theme' in gsettings
                        - Setting transparency mode based on TYPE
                        
                        TYPE can be:
                          transparent (default) - 35% opacity background
                          solid              - 65% opacity background
                        
                        Removing the stylesheet allows the dock to use the theme's
                        built-in styling instead of its default appearance.
                        Supports both user and system installations of dash-to-dock
                        and ubuntu-dock extensions.
                        
                        When TYPE is 'transparent', also installs a transparent
                        Plank dock theme to ~/.config/plank/themes/ which can be
                        selected via 'plank --preferences'.
                        
                        Note: You may need to restart GNOME Shell (Alt+F2, type 'r')
                        after applying this fix.

    -w, --wallpapers    Apply theme wallpapers
                        Sets the desktop background to use the theme's wallpapers.
                        Supports both single wallpapers and slideshow mode.
                        Looks for wallpapers in:
                        - ~/.themes/Hentai-Senpai/wallpapers/
                        - ~/.themes/Hentai-Senpai/backgrounds/
                        If a slideshow XML is found, it will be used for rotating
                        wallpapers (changes every hour with 5-second transitions).

COMBINING OPTIONS:
    Multiple fixes can be applied at once. Short options can be combined:
    
    $0 -lfdw              # Apply all fixes (libadwaita, flatpak, dock, wallpapers)
    $0 -lf                # Apply libadwaita and flatpak fixes
    $0 -ld                # Apply libadwaita and dock fixes
    $0 -fw                # Apply flatpak fix and wallpapers
    
    When combining options, the dock type (if specified) should come last:
    $0 -lfd solid         # Apply libadwaita, flatpak, dock with solid style
    $0 -lfd transparent   # Apply libadwaita, flatpak, dock with transparent style
    
    Long options must be specified separately:
    $0 --libadwaita --flatpak --dock solid --wallpapers

DESCRIPTION:
    This script installs the Hentai-Senpai GTK theme to ~/.themes/ and applies
    it using gsettings. The theme is a dark Nord-colored variant based on the
    Orchis theme, featuring Material Design principles with rounded corners,
    elevation shadows, and the Nord color palette.
    
    By default, running the script without options will only install and apply
    the basic theme. For full functionality including GTK4 apps, Flatpak apps,
    dock styling, and wallpapers, use the appropriate options listed above.

    Key Features:
    - Nord color palette (polar night backgrounds, frost accents)
    - Material Design with 12px rounded corners
    - Support for GNOME, Cinnamon, XFCE, Budgie, and MATE
    - GTK2, GTK3, and GTK4 theme variants included
    - GNOME Shell theme with custom styling

EXAMPLES:
    $0                          # Basic install and apply theme only
    $0 -h                       # Show this help message
    $0 -l                       # Install theme and fix libadwaita/GTK4 apps
    $0 -f                       # Install theme and fix Flatpak apps
    $0 -d                       # Install theme and fix dock (transparent)
    $0 -d solid                 # Install theme and fix dock (solid style)
    $0 -d transparent           # Install theme and fix dock (transparent style)
    $0 --dock solid             # Same as above with long option
    $0 -w                       # Install theme and apply wallpapers
    $0 -l -f                    # Install theme with libadwaita and Flatpak fixes
    $0 -lfd                     # Install theme with libadwaita, flatpak, and dock
    $0 -lfdw                    # Install theme with all available fixes
    $0 -lfd solid               # All fixes with solid dock style
    $0 -lfd transparent         # All fixes with transparent dock style
    $0 --libadwaita --flatpak --dock solid --wallpapers  # All fixes, solid dock

TROUBLESHOOTING:
    - GTK4 apps not themed: Run with -l/--libadwaita option
    - Flatpak apps not themed: Run with -f/--flatpak option
    - Dock not styled correctly: Run with -d/--dock option
    - Dock too transparent: Use -d solid for more opaque background
    - Changes not visible: Restart applications or GNOME Shell (Alt+F2, type 'r')

For more information, see the AGENTS.md file in the theme directory.

EOF
}

# Main function
main() {
    local libadwaita_fix=false
    local flatpak_fix=false
    local dock_fix=false
    local dock_type="transparent"
    local wallpapers_fix=false

    # Parse command line arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            -l|--libadwaita)
                libadwaita_fix=true
                shift
                ;;
            -f|--flatpak)
                flatpak_fix=true
                shift
                ;;
            -d|--dock)
                dock_fix=true
                # Check if next argument is a dock type (transparent or solid)
                if [[ "${2:-}" == "transparent" || "${2:-}" == "solid" ]]; then
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
            --help|-h)
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

    echo "=========================================="
    echo "  ${THEME_NAME} Theme Installer"
    echo "=========================================="
    echo ""

    # Check dependencies
    check_dependencies

    # Install theme
    install_theme

    # Apply theme
    apply_theme

    # Apply libadwaita fix if requested
    if [[ "$libadwaita_fix" == true ]]; then
        echo ""
        apply_libadwaita_fix
    fi

    # Apply flatpak fix if requested
    if [[ "$flatpak_fix" == true ]]; then
        echo ""
        apply_flatpak_fix
    fi

    # Apply dock fix if requested
    if [[ "$dock_fix" == true ]]; then
        echo ""
        apply_dock_fix "$dock_type"
    fi

    # Apply wallpapers if requested
    if [[ "$wallpapers_fix" == true ]]; then
        echo ""
        apply_wallpapers
    fi

    echo ""
    echo "=========================================="
    print_success "Theme installation complete!"
    echo "=========================================="

    # Show tips if fixes weren't applied
    if [[ "$libadwaita_fix" == false ]] || [[ "$flatpak_fix" == false ]] || [[ "$dock_fix" == false ]] || [[ "$wallpapers_fix" == false ]]; then
        echo ""
        print_info "Available options:"
        if [[ "$libadwaita_fix" == false ]]; then
            print_info "  -l, --libadwaita: Fix GTK4/libadwaita applications"
        fi
        if [[ "$flatpak_fix" == false ]]; then
            print_info "  -f, --flatpak: Fix Flatpak sandboxed applications"
        fi
        if [[ "$dock_fix" == false ]]; then
            print_info "  -d, --dock [TYPE]: Fix dash-to-dock/ubuntu-dock styling"
            print_info "                     TYPE: transparent (default) or solid"
        fi
        if [[ "$wallpapers_fix" == false ]]; then
            print_info "  -w, --wallpapers: Apply theme wallpapers"
        fi
    fi
}

# Run main function
main "$@"
