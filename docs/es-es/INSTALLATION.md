# Guía de Instalación

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Guia-de-Instalacion" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Guia-de-Instalacion-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Guia-de-Instalacion-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Esta guía le ayudará a instalar el Tema Hentai-Senpai GTK en su sistema Linux.

## Tabla de Contenidos

- [Requisitos Previos](#requisitos-previos)
- [Instalación Rápida](#instalación-rápida)
- [Opciones de Instalación](#opciones-de-instalación)
- [Específico del Entorno de Escritorio](#específico-del-entorno-de-escritorio)
- [Soporte Flatpak](#soporte-flatpak)
- [Desinstalación](#desinstalación)

## Requisitos Previos

Antes de instalar, asegúrese de tener:

- **Bibliotecas GTK**: GTK 2, GTK 3 y/o GTK 4 (dependiendo de su sistema)
- **Git**: Para clonar el repositorio
- **Compilador Sass**: `sassc` o `dart-sass` (para compilar desde el código fuente)
- **Acceso root**: Solo si está instalando en todo el sistema

### Instalando Dependencias

**Debian/Ubuntu:**
```bash
sudo apt install git sassc
```

**Fedora:**
```bash
sudo dnf install git sassc
```

**Arch Linux:**
```bash
sudo pacman -S git sassc
```

## Instalación Rápida

La forma más rápida de instalar:

```bash
# Clonar el repositorio
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Instalar el tema
./install.sh --update -l -f --dock

# Aplicar el tema
./apply-theme.sh
```

## Opciones de Instalación

El script de instalación soporta varias opciones:

| Opción | Descripción |
|--------|-------------|
| `-d`, `--dest` | Establecer destino de instalación (por defecto: `~/.themes`) |
| `-n`, `--name` | Establecer nombre del tema (por defecto: `Hentai-Senpai`) |
| `-l`, `--libadwaita` | Enlazar al tema libadwaita |
| `-f`, `--flatpak` | Instalar tema Flatpak |
| `--dock` | Instalar tema del dock (Plank) |
| `-r`, `--remove` | Eliminar temas instalados |
| `--update` | Actualizar instalación existente |

### Ejemplos

**Instalación en todo el sistema:**
```bash
sudo ./install.sh -d /usr/share/themes
```

**Nombre de tema personalizado:**
```bash
./install.sh -n "Mi-Tema-Personalizado"
```

**Instalar con todas las características:**
```bash
./install.sh -l -f --dock
```

**Eliminar tema:**
```bash
./install.sh -r
```

## Específico del Entorno de Escritorio

### GNOME

Después de la instalación, active el tema:

```bash
# Habilitar extensión User Themes (si aún no está habilitada)
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Aplicar tema
./apply-theme.sh
```

O defina manualmente en **Configuración > Apariencia**.

### Cinnamon

Vaya a **Configuración del Sistema > Temas** y seleccione `Hentai-Senpai`.

### XFCE

1. Vaya a **Configuración > Apariencia**
2. Seleccione `Hentai-Senpai` de la lista
3. Vaya a **Administrador de Ventanas** y seleccione el tema allí también

### MATE

Vaya a **Sistema > Preferencias > Apariencia** y seleccione el tema.

### Budgie

Vaya a **Configuración > Escritorio > Apariencia** y seleccione el tema.

## Soporte Flatpak

Para aplicar tema en aplicaciones Flatpak:

```bash
# Permitir que las aplicaciones Flatpak accedan al tema
flatpak override --filesystem=$HOME/.themes

# Instalar tema Flatpak (durante la instalación)
./install.sh -f
```

**Nota:** Es posible que necesite reiniciar las aplicaciones Flatpak para que los cambios surtan efecto.

## Desinstalación

Para eliminar el tema:

```bash
./install.sh -r
```

O elimine manualmente:
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## Próximos Pasos

- Lea la [Guía de Personalización](CUSTOMIZATION) para personalizar su tema
- Consulte la [Solución de Problemas](TROUBLESHOOTING) si encuentra problemas
- Vea la [Paleta de Colores](COLOR_PALETTE) para los colores del tema
