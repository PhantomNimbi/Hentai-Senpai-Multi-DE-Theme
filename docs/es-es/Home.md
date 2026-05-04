<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Home" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-fr-fr" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-de-de" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-it-it" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Home-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Home-ru-ru" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Tema Hentai-Senpai

Un hermoso tema GTK oscuro basado en Orchis con colores Nord. Este tema brinda una apariencia moderna y cohesiva a tu escritorio Linux con esquemas de color cuidadosamente seleccionados que son fáciles para los ojos durante largas sesiones de codificación o uso diario.

![Captura de Pantalla Principal](../../assets/screenshots/hero.png)

## Requisitos

Antes de instalar, asegúrate de tener:

- **Bibliotecas GTK**: Bibliotecas de desarrollo GTK 2, GTK 3 y GTK 4
- **Git**: Para clonar el repositorio
- **Compilador Sass**: `sassc` (recomendado) o `dart-sass`
- **Sistema Linux**: Cualquier distribución con un entorno de escritorio basado en GTK (GNOME, Cinnamon, XFCE, Budgie, MATE, etc.)
- **Espacio en Disco**: Aproximadamente 50MB de espacio libre

### Instalar dependencias (Ubuntu/Debian):
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### Instalar dependencias (Fedora):
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### Instalar dependencias (Arch):
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## Inicio Rápido

La forma más rápida de comenzar:

```bash
# Instalación básica
./install.sh

# Instalación completa con todas las correcciones y opciones
./install.sh --update -l -f --dock

# Aplicar el tema
./scripts/apply.sh
```

### Comandos Comunes en Una Línea

```bash
# Clonar e instalar en un solo comando
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# Actualizar instalación existente
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## Opciones de Instalación

| Opción | Descripción |
|--------|-------------|
| `--update` | Actualizar/reinstalar el tema (preserva personalizaciones) |
| `-l, --libadwaita` | Corregir tematización de aplicaciones GTK4/libadwaita |
| `-f, --flatpak` | Corregir tematización de aplicaciones Flatpak en sandbox |
| `--dock [TIPO]` | Aplicar tema del dock (transparente, sólido o blur) |
| `-w, --wallpapers` | Instalar y aplicar fondos de pantalla del tema |
| `-d, --dest DIR` | Directorio de instalación personalizado (predeterminado: ~/.themes) |
| `-t, --theme VARIANTE` | Instalar variante de color específica |
| `-c, --color VARIANTE` | Instalar color de acento específico |
| `-s, --size TAMAÑO` | Instalar variante de tamaño específico (estándar, compacto) |
| `-h, --help` | Mostrar mensaje de ayuda detallada |

### Ejemplos:

```bash
# Instalar con dock transparente y todas las correcciones
./install.sh -l -f --dock transparent

# Instalar en directorio de todo el sistema
sudo ./install.sh -d /usr/share/themes

# Instalar solo variante oscura con acento azul
./install.sh -t dark -c blue
```

## Problemas Comunes

### ¿El tema no se está aplicando?
- **Usuarios de GNOME**: Habilita la extensión "Temas de Usuario" en Extensiones GNOME
- **Otros DEs**: Asegúrate de tener un motor de tema compatible instalado
- Intenta cerrar sesión y volver a iniciar, o reinicia tu entorno de escritorio

### ¿Las aplicaciones Flatpak no tienen tema?
Ejecuta el script de instalación con la bandera `--flatpak`:
```bash
./install.sh -f
```

### ¿Las aplicaciones GTK4/libadwaita se ven diferentes?
Aplica la corrección libadwaita:
```bash
./install.sh -l
```

### ¿Faltan iconos?
Instala uno de estos temas de iconos recomendados:
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## Características

- **Colores Nord Oscuros y Elegantes**: Basado en la popular paleta de colores Nord para una experiencia de visualización cómoda
- **Principios de Material Design**: Interfaz moderna y limpia siguiendo las directrices de Material Design de Google
- **Soporte Multi-DE**: Funciona con GNOME, Cinnamon, XFCE, Budgie, MATE y otros entornos de escritorio basados en GTK
- **Soporte Completo GTK**: Cubre GTK 2, GTK 3, GTK 4, GNOME Shell y decoraciones de ventana
- **Soporte Moderno GTK4/libadwaita**: Compatibilidad total con las aplicaciones GTK4 más recientes
- **Listo para Flatpak**: Tema aplicaciones Flatpak en sandbox de forma integrada
- **Personalizable**: Múltiples variantes de colores, tamaños y colores de acento disponibles
- **Temas de Dock**: Estilización opcional de dock transparente, sólido o blur
- **Colección de Fondos de Pantalla**: Fondos de pantalla seleccionados que combinan perfectamente con el tema

## Contribuyendo

¡Agradecemos las contribuciones de la comunidad! Aquí te mostramos cómo puedes ayudar:

- **¿Encontraste un bug?** [Repórtalo en GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - Por favor, incluye capturas de pantalla y detalles del sistema
- **¿Tienes una sugerencia?** [Abre una Discusión en GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - Comparte tus ideas de mejoras
- **¿Quieres ayudar?** Consulta nuestra [Guía de Contribución](Contributing-es-es) - Aprende cómo enviar pull requests, reportar bugs y contribuir con código

## Enlaces Rápidos

- [Guía de Instalación](Installation-Guide-es-es) - Instrucciones detalladas de instalación
- [Solución de Problemas](Troubleshooting-es-es) - Soluciones a problemas comunes
- [Personalización](Customization-es-es) - Cómo personalizar el tema
- [Paleta de Colores](Color-Palette-es-es) - Referencia de colores del tema
- [Contribuyendo](Contributing-es-es) - Cómo contribuir al proyecto

## Ver en GitHub

[Ver en GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
