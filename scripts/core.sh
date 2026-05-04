#!/bin/bash

# core.sh - Core functionality for Hentai-Senpai theme installer
# Handles distribution detection, file generation, and CSS processing

# ============================================
# CONFIGURATION
# ============================================

SCRIPT_DIR="${SCRIPT_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
THEME_NAME="${THEME_NAME:-Hentai-Senpai}"
THEME_SOURCE="${SCRIPT_DIR}/src/${THEME_NAME}"

# ============================================
# DISTRIBUTION DETECTION
# ============================================

# Detect the Linux distribution
detect_distribution() {
    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        echo "$ID"
    elif [[ -f /etc/redhat-release ]]; then
        echo "rhel"
    elif [[ -f /etc/arch-release ]]; then
        echo "arch"
    elif [[ -f /etc/debian_version ]]; then
        echo "debian"
    else
        echo "unknown"
    fi
}

# Detect the desktop environment
detect_desktop_environment() {
    if [[ -n "$XDG_CURRENT_DESKTOP" ]]; then
        echo "$XDG_CURRENT_DESKTOP" | tr '[:upper:]' '[:lower:]'
    elif [[ -n "$DESKTOP_SESSION" ]]; then
        echo "$DESKTOP_SESSION" | tr '[:upper:]' '[:lower:]'
    elif command -v gnome-shell &> /dev/null; then
        echo "gnome"
    elif command -v cinnamon-session &> /dev/null; then
        echo "cinnamon"
    elif command -v xfce4-session &> /dev/null; then
        echo "xfce"
    elif command -v mate-session &> /dev/null; then
        echo "mate"
    else
        echo "unknown"
    fi
}

# Get distribution family
get_distro_family() {
    local distro="$1"
    case "$distro" in
        ubuntu|debian|linuxmint|pop|elementary|zorin)
            echo "debian"
            ;;
        fedora|rhel|centos|rocky|almalinux)
            echo "rhel"
            ;;
        arch|manjaro|endeavouros|garuda)
            echo "arch"
            ;;
        opensuse*|suse*)
            echo "suse"
            ;;
        void)
            echo "void"
            ;;
        alpine)
            echo "alpine"
            ;;
        *)
            echo "unknown"
            ;;
    esac
}

# ============================================
# THEME FILE GENERATION
# ============================================

# Generate index.theme file
generate_index_theme() {
    local theme_name="$1"
    local output_dir="$2"

    cat > "${output_dir}/index.theme" << EOF
[Desktop Entry]
Type=X-GNOME-Metatheme
Name=${theme_name}
Comment=An elegant dark theme based on Orchis with Nord colors
Encoding=UTF-8

[X-GNOME-Metatheme]
GtkTheme=${theme_name}
MetacityTheme=${theme_name}
IconTheme=Papirus-Dark
CursorTheme=Adwaita
ButtonLayout=menu:minimize,maximize,close
EOF
}

# Generate CSS with distribution-specific tweaks
generate_distro_css() {
    local input_file="$1"
    local output_file="$2"
    local distro="$3"

    # Start with the original CSS
    cat "$input_file" > "$output_file"

    # Apply distribution-specific tweaks
    case "$distro" in
        ubuntu)
            # Ubuntu-specific tweaks (Yaru compatibility)
            cat >> "$output_file" << 'EOF'

/* Ubuntu-specific tweaks */
@import url("resource:///com/ubuntu/themes/Yaru/3.0/gtk.css");
EOF
            ;;
        fedora)
            # Fedora uses Adwaita as base, no special tweaks needed
            ;;
        arch)
            # Arch-specific tweaks if needed
            ;;
    esac
}

# Generate distribution-specific theme files
generate_distro_theme_files() {
    local source_dir="$1"
    local output_dir="$2"
    local distro="$3"

    # Copy all standard theme files
    cp -r "${source_dir}/"* "$output_dir/"

    # Apply distribution-specific CSS modifications
    if [[ -f "${output_dir}/gtk-4.0/gtk.css" ]]; then
        generate_distro_css "${source_dir}/gtk-4.0/gtk.css" "${output_dir}/gtk-4.0/gtk.css" "$distro"
    fi

    if [[ -f "${output_dir}/gtk-3.0/gtk.css" ]]; then
        generate_distro_css "${source_dir}/gtk-3.0/gtk.css" "${output_dir}/gtk-3.0/gtk.css" "$distro"
    fi

    # Generate index.theme with proper metadata
    generate_index_theme "$THEME_NAME" "$output_dir"

    # Generate distribution-specific notes
    generate_distro_notes "$distro" "${output_dir}/INSTALL_NOTES.md"
}

# Generate missing theme components based on available CSS
generate_missing_components() {
    local theme_dir="$1"
    local de="$2"

    # Ensure all required directories exist
    mkdir -p "${theme_dir}/gtk-2.0"
    mkdir -p "${theme_dir}/gtk-3.0"
    mkdir -p "${theme_dir}/gtk-4.0"
    mkdir -p "${theme_dir}/gnome-shell"
    mkdir -p "${theme_dir}/cinnamon"
    mkdir -p "${theme_dir}/xfwm4"
    mkdir -p "${theme_dir}/metacity-1"

    # Generate GTK2 theme from GTK3 colors if missing
    if [[ ! -f "${theme_dir}/gtk-2.0/main.rc" && -f "${theme_dir}/gtk-3.0/gtk.css" ]]; then
        generate_gtk2_from_gtk3 "${theme_dir}/gtk-3.0/gtk.css" "${theme_dir}/gtk-2.0/main.rc"
    fi

    # Generate XFWM4 theme if missing
    if [[ ! -f "${theme_dir}/xfwm4/themerc" ]]; then
        generate_xfwm4_theme "$theme_dir"
    fi

    # Generate Metacity theme if missing
    if [[ ! -f "${theme_dir}/metacity-1/metacity-theme-3.xml" ]]; then
        generate_metacity_theme "$theme_dir"
    fi
}

# Generate GTK2 theme file from GTK3 CSS colors
generate_gtk2_from_gtk3() {
    local gtk3_css="$1"
    local gtk2_rc="$2"

    # Extract colors from GTK3 CSS
    local bg_color="#2e3440"
    local fg_color="#d8dee9"
    local accent_color="#5e81ac"
    local selected_bg="#5e81ac"
    local selected_fg="#ffffff"
    local border_color="#4c566a"

    # Try to extract colors from CSS if available
    if [[ -f "$gtk3_css" ]]; then
        bg_color=$(grep -oP '@define-color window_bg_color \K[^;]+' "$gtk3_css" 2>/dev/null | tr -d ';' || echo "#2e3440")
        fg_color=$(grep -oP '@define-color window_fg_color \K[^;]+' "$gtk3_css" 2>/dev/null | tr -d ';' || echo "#d8dee9")
        accent_color=$(grep -oP '@define-color accent_bg_color \K[^;]+' "$gtk3_css" 2>/dev/null | tr -d ';' || echo "#5e81ac")
    fi

    cat > "$gtk2_rc" << EOF
# GTK2 Theme generated from ${THEME_NAME}
# Based on Nord color palette

style "default"
{
    bg[NORMAL] = "${bg_color}"
    bg[PRELIGHT] = "#3b4252"
    bg[SELECTED] = "${accent_color}"
    bg[ACTIVE] = "#3b4252"
    bg[INSENSITIVE] = "#2e3440"

    fg[NORMAL] = "${fg_color}"
    fg[PRELIGHT] = "${fg_color}"
    fg[SELECTED] = "${selected_fg}"
    fg[ACTIVE] = "${fg_color}"
    fg[INSENSITIVE] = "#4c566a"

    base[NORMAL] = "#3b4252"
    base[PRELIGHT] = "#434c5e"
    base[SELECTED] = "${accent_color}"
    base[ACTIVE] = "${accent_color}"
    base[INSENSITIVE] = "#2e3440"

    text[NORMAL] = "${fg_color}"
    text[PRELIGHT] = "${fg_color}"
    text[SELECTED] = "${selected_fg}"
    text[ACTIVE] = "${selected_fg}"
    text[INSENSITIVE] = "#4c566a"

    engine "murrine"
    {
        contrast = 0.8
        glazestyle = 3
        gradient_shades = { 1.1, 1.0, 0.9, 0.8 }
        roundness = 4
        animation = FALSE
    }
}

style "button" = "default"
{
    bg[NORMAL] = "#3b4252"
    bg[PRELIGHT] = "#434c5e"
    bg[ACTIVE] = "${accent_color}"
    bg[INSENSITIVE] = "#2e3440"

    fg[ACTIVE] = "${selected_fg}"
}

style "entry" = "default"
{
    base[NORMAL] = "#2e3440"
    base[ACTIVE] = "#2e3440"
}

class "GtkWidget" style "default"
class "GtkButton" style "button"
class "GtkEntry" style "entry"
EOF
}

# Generate XFWM4 window manager theme
generate_xfwm4_theme() {
    local theme_dir="$1"
    local xfwm4_dir="${theme_dir}/xfwm4"

    mkdir -p "$xfwm4_dir"

    cat > "${xfwm4_dir}/themerc" << EOF
# XFWM4 Theme for ${THEME_NAME}
# Based on Nord color palette

active_text_color=#d8dee9
active_border_color=#4c566a
active_color_1=#2e3440
active_color_2=#3b4252
active_hilight_1=#434c5e
active_hilight_2=#4c566a
active_shadow_1=#2e3440
active_shadow_2=#2e3440

inactive_text_color=#4c566a
inactive_border_color=#3b4252
inactive_color_1=#2e3440
inactive_color_2=#3b4252
inactive_hilight_1=#3b4252
inactive_hilight_2=#434c5e
inactive_shadow_1=#2e3440
inactive_shadow_2=#2e3440

button_offset=6
button_spacing=2
full_width_title=true
maximized_offset=4
title_horizontal_offset=4
title_shadow_active=false
title_shadow_inactive=false
title_vertical_offset_active=2
title_vertical_offset_inactive=2
EOF
}

# Generate Metacity window manager theme
generate_metacity_theme() {
    local theme_dir="$1"
    local metacity_dir="${theme_dir}/metacity-1"

    mkdir -p "$metacity_dir"

    cat > "${metacity_dir}/metacity-theme-3.xml" << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<metacity_theme>
    <info>
        <name>Hentai-Senpai</name>
        <author>Theme Generator</author>
        <date>2024</date>
        <description>Dark Nord theme for Metacity</description>
    </info>

    <frame_geometry name="normal" rounded_top_left="8" rounded_top_right="8">
        <distance name="left_width" value="1"/>
        <distance name="right_width" value="1"/>
        <distance name="bottom_height" value="1"/>
        <distance name="left_titlebar_edge" value="8"/>
        <distance name="right_titlebar_edge" value="8"/>
        <distance name="title_vertical_pad" value="6"/>
        <aspect ratio="1.6" min="18" max="24"/>
    </frame_geometry>

    <draw_ops name="titlebar-gradient">
        <gradient type="linear" x1="0" y1="0" x2="0" y2="24">
            <color value="#3b4252"/>
            <color value="#2e3440"/>
        </gradient>
    </draw_ops>

    <draw_ops name="titlebar-inactive">
        <rectangle color="#2e3440" filled="true" x="0" y="0" width="width" height="height"/>
    </draw_ops>

    <frame_style name="normal" geometry="normal">
        <piece position="titlebar" draw_ops="titlebar-gradient"/>
    </frame_style>

    <frame_style name="normal_unfocused" geometry="normal">
        <piece position="titlebar" draw_ops="titlebar-inactive"/>
    </frame_style>

    <window type="normal" style_set="normal"/>
    <window type="dialog" style_set="normal"/>
    <window type="modal_dialog" style_set="normal"/>
    <window type="menu" style_set="normal"/>
    <window type="utility" style_set="normal"/>
    <window type="border" style_set="normal"/>
</metacity_theme>
EOF
}

# ============================================
# DEPENDENCY MANAGEMENT
# ============================================

# Check if a package is installed
check_package_installed() {
    local package="$1"
    local distro
    distro=$(detect_distribution)
    local family
    family=$(get_distro_family "$distro")

    case "$family" in
        debian)
            dpkg -l "$package" &> /dev/null
            ;;
        rhel)
            rpm -q "$package" &> /dev/null
            ;;
        arch)
            pacman -Q "$package" &> /dev/null
            ;;
        suse)
            rpm -q "$package" &> /dev/null
            ;;
        void)
            xbps-query "$package" &> /dev/null
            ;;
        alpine)
            apk info -e "$package" &> /dev/null
            ;;
        *)
            return 1
            ;;
    esac
}

# Get install command for the distribution
get_install_command() {
    local distro
    distro=$(detect_distribution)
    local family
    family=$(get_distro_family "$distro")

    case "$family" in
        debian)
            echo "sudo apt-get install -y"
            ;;
        rhel)
            if command -v dnf &> /dev/null; then
                echo "sudo dnf install -y"
            else
                echo "sudo yum install -y"
            fi
            ;;
        arch)
            echo "sudo pacman -S --noconfirm"
            ;;
        suse)
            echo "sudo zypper install -y"
            ;;
        void)
            echo "sudo xbps-install -y"
            ;;
        alpine)
            echo "sudo apk add"
            ;;
        *)
            echo ""
            ;;
    esac
}

# Define dependencies for different package managers
declare -A PKG_DEPS_GTK2=(
    ["debian"]="gtk2-engines-murrine gtk2-engines-pixbuf"
    ["rhel"]="gtk-murrine-engine gtk2-engines"
    ["arch"]="gtk-engine-murrine gtk-engines"
    ["suse"]="gtk2-engine-murrine gtk2-tools"
    ["void"]="gtk2-engine-murrine"
    ["alpine"]="gtk-murrine-engine"
)

declare -A PKG_DEPS_GTK3=(
    ["debian"]="libgtk-3-0"
    ["rhel"]="gtk3"
    ["arch"]="gtk3"
    ["suse"]="gtk3"
    ["void"]="gtk+3"
    ["alpine"]="gtk+3.0"
)

declare -A PKG_DEPS_GTK4=(
    ["debian"]="libgtk-4-1"
    ["rhel"]="gtk4"
    ["arch"]="gtk4"
    ["suse"]="gtk4"
    ["void"]="gtk4"
    ["alpine"]="gtk4.0"
)

# Check and return missing dependencies
check_and_install_dependencies() {
    local distro
    distro=$(detect_distribution)
    local family
    family=$(get_distro_family "$distro")
    local missing_deps=()

    # Check GTK2 engine (optional but recommended for legacy apps)
    if [[ -n "${PKG_DEPS_GTK2[$family]}" ]]; then
        for pkg in ${PKG_DEPS_GTK2[$family]}; do
            if ! check_package_installed "$pkg"; then
                missing_deps+=("$pkg")
            fi
        done
    fi

    # Check GTK3 (required)
    if [[ -n "${PKG_DEPS_GTK3[$family]}" ]]; then
        for pkg in ${PKG_DEPS_GTK3[$family]}; do
            if ! check_package_installed "$pkg"; then
                missing_deps+=("$pkg")
            fi
        done
    fi

    # Return missing dependencies
    if [[ ${#missing_deps[@]} -gt 0 ]]; then
        echo "${missing_deps[*]}"
        return 1
    fi

    return 0
}

# ============================================
# DOCUMENTATION GENERATION
# ============================================

# Generate distribution-specific installation notes
generate_distro_notes() {
    local distro="$1"
    local output_file="$2"

    cat > "$output_file" << EOF
# Installation Notes for ${distro}

## Prerequisites

EOF

    case "$distro" in
        ubuntu|debian|linuxmint|pop)
            cat >> "$output_file" << 'EOF'
```bash
sudo apt-get update
sudo apt-get install -y gtk2-engines-murrine gtk2-engines-pixbuf
```

## Additional Notes

- For GNOME Shell theming, install the User Themes extension:
  ```bash
  sudo apt-get install -y gnome-shell-extensions
  ```
- For best results, enable the extension via GNOME Tweaks or Extensions app
EOF
            ;;
        fedora|rhel|centos)
            cat >> "$output_file" << 'EOF'
```bash
sudo dnf install -y gtk-murrine-engine gtk2-engines
# or for older versions:
sudo yum install -y gtk-murrine-engine gtk2-engines
```

## Additional Notes

- For GNOME Shell theming, install the User Themes extension from GNOME Extensions
- Fedora Workstation may need SELinux permissions adjusted for themes in ~/.themes
EOF
            ;;
        arch|manjaro|endeavouros)
            cat >> "$output_file" << 'EOF'
```bash
sudo pacman -S --needed gtk-engine-murrine gtk-engines
```

## Additional Notes

- For GNOME Shell theming, install the User Themes extension from AUR:
  ```bash
  yay -S gnome-shell-extensions-user-theme
  ```
- Arch users may want to install `gnome-tweaks` for easier theme switching
EOF
            ;;
        opensuse*)
            cat >> "$output_file" << 'EOF'
```bash
sudo zypper install -y gtk2-engine-murrine gtk2-tools
```

## Additional Notes

- For GNOME Shell theming, install the User Themes extension
- Enable via GNOME Tweaks tool
EOF
            ;;
        *)
            cat >> "$output_file" << 'EOF'
## General Instructions

1. Install GTK2 Murrine engine for your distribution
2. Ensure GTK3 and GTK4 libraries are installed
3. For GNOME users: Install the User Themes extension
4. For best compatibility, use a recent version of your desktop environment
EOF
            ;;
    esac
}

# ============================================
# VALIDATION
# ============================================

# Validate theme installation
validate_theme_installation() {
    local theme_dir="$1"
    local errors=0

    # Check for required files
    local required_files=(
        "index.theme"
    )

    for file in "${required_files[@]}"; do
        if [[ ! -f "${theme_dir}/${file}" ]]; then
            echo "Missing required file: ${file}"
            ((errors++))
        fi
    done

    # Check for at least one GTK version
    local has_gtk=false
    if [[ -d "${theme_dir}/gtk-3.0" ]] || [[ -d "${theme_dir}/gtk-4.0" ]]; then
        has_gtk=true
    fi

    if [[ "$has_gtk" == false ]]; then
        echo "Missing GTK theme files (gtk-3.0 or gtk-4.0)"
        ((errors++))
    fi

    return $errors
}

# Check system compatibility
check_system_compatibility() {
    local issues=()

    # Check GTK version
    if command -v pkg-config &> /dev/null; then
        local gtk3_version
        gtk3_version=$(pkg-config --modversion gtk+-3.0 2>/dev/null || echo "0")
        if [[ "$gtk3_version" != "0" ]]; then
            local major minor
            major=$(echo "$gtk3_version" | cut -d. -f1)
            minor=$(echo "$gtk3_version" | cut -d. -f2)
            if [[ "$major" -lt 3 ]] || [[ "$major" -eq 3 && "$minor" -lt 20 ]]; then
                issues+=("GTK3 version ${gtk3_version} is too old (3.20+ required)")
            fi
        fi
    fi

    # Check for gsettings
    if ! command -v gsettings &> /dev/null; then
        issues+=("gsettings not found (required for theme application)")
    fi

    # Print issues
    if [[ ${#issues[@]} -gt 0 ]]; then
        echo "${issues[@]}"
        return 1
    fi

    return 0
}

# ============================================
# UTILITY FUNCTIONS
# ============================================

# Print formatted info
print_distro_info() {
    local distro
    distro=$(detect_distribution)
    local de
    de=$(detect_desktop_environment)
    local family
    family=$(get_distro_family "$distro")

    echo "=========================================="
    echo "  System Information"
    echo "=========================================="
    echo "  Distribution: $distro"
    echo "  Family: $family"
    echo "  Desktop Environment: $de"
    echo "=========================================="
}

# Get theme variant suggestion based on DE
get_de_theme_variant() {
    local de
    de=$(detect_desktop_environment)

    case "$de" in
        *gnome*)
            echo "gnome-shell"
            ;;
        *cinnamon*)
            echo "cinnamon"
            ;;
        *xfce*)
            echo "xfwm4"
            ;;
        *mate*)
            echo "metacity-1"
            ;;
        *budgie*)
            echo "budgie"
            ;;
        *)
            echo "generic"
            ;;
    esac
}

# Export functions for use in other scripts
export -f detect_distribution
export -f detect_desktop_environment
export -f get_distro_family
export -f generate_index_theme
export -f generate_distro_css
export -f generate_distro_theme_files
export -f generate_missing_components
export -f generate_gtk2_from_gtk3
export -f generate_xfwm4_theme
export -f generate_metacity_theme
export -f generate_distro_notes
export -f check_package_installed
export -f get_install_command
export -f check_and_install_dependencies
export -f validate_theme_installation
export -f check_system_compatibility
export -f print_distro_info
export -f get_de_theme_variant
