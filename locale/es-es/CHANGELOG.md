# Registro de Cambios

> 🌐 **Idiomas:** [English](../en-us/CHANGELOG.md) | [日本語](../ja-jp/CHANGELOG.md) | **Español** | [Français](../fr-fr/CHANGELOG.md) | [Deutsch](../de-de/CHANGELOG.md) | [Italiano](../it-it/CHANGELOG.md) | [中文](../zh-cn/CHANGELOG.md) | [한국어](../ko-kr/CHANGELOG.md) | [Русский](../ru-ru/CHANGELOG.md) | [Português](../pt-br/CHANGELOG.md)

Todos los cambios notables en el proyecto Hentai-Senpai GTK Theme se documentarán en este archivo.

El formato está basado en [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
y este proyecto se adhiere a [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [No Publicado]

### Añadido

- **Plantillas de GitHub Issue**
  - Plantilla de informe de errores con lista de verificación de entorno
  - Plantilla de solicitud de funciones con secciones de casos de uso
  - Plantilla de preguntas/soporte
  - Archivo de configuración con enlaces de contacto
- **Directrices de Contribución**
  - `docs/CONTRIBUTING.md` completo que incluye:
    - Instrucciones de configuración de desarrollo
    - Guías de estilo de código para CSS y scripts de shell
    - Convenciones de mensajes de commit
    - Proceso de pull request
    - Procedimientos de prueba
    - Directrices de la comunidad
- **Documentación Mejorada**
  - Agregado `docs/HOME.md` como página de inicio de documentación completa
  - Simplificado `docs/README.md` para navegación fácil
  - Actualizados todos los archivos de documentación con formato consistente y referencias cruzadas
- **Soporte de Traducción**
  - Agregada barra de traducción a todos los archivos markdown de documentación
  - Soporte para 9 idiomas: Inglés, Japonés, Español, Francés, Alemán, Chino, Coreano, Ruso, Portugués
- **Integración con Redes Sociales**
  - Botones de compartir para Twitter/X, Reddit, Facebook, LinkedIn, Mastodon y Telegram
  - Escudos de estado que muestran versión, licencia, estrellas, colaboradores e issues
- **Documentación Multilingüe**
  - Reestructurada docs en carpetas basadas en locale (en-us, pt-br, es-es, fr-fr, de-de, it-it, ja-jp, zh-cn, ru-ru)
  - Traducciones completas para 9 idiomas
  - Menús desplegables de selección de idioma en todas las páginas de documentación
  - Actualizado el flujo de trabajo de GitHub Actions para soportar los 9 idiomas
- **Página de Galería**
  - Creada Gallery.md mostrando vistas previas del tema y fondos de pantalla
  - Muestra las imágenes preview-1.png y preview-2.png
  - Muestra los 6 fondos de pantalla disponibles
  - Disponible en los 9 idiomas
  - Corregido: Se crearon realmente los archivos Gallery.md en todas las carpetas de locale
  - Corregido: Se corrigieron las asignaciones de imágenes de vista previa (preview-2.png = Escritorio, preview-1.png = Aplicaciones)
  - Corregido: Se corrigió la descripción de los fondos de pantalla (minimalistas, colores monocromos, temas ecchi)
- **GitHub Discussions**
  - Creadas categorías de discusión comprehensivas: General, Escaparate, Q&A, Ideas, Desarrollo, Anuncios
  - Agregadas plantillas de discusión para cada categoría
  - Creado DISCUSSION_GUIDE.md con instrucciones de uso
  - Definidas las mejores prácticas y directrices de la comunidad
  - Movido a la rama separada `discussions` para gestión de plantillas
  - Creado flujo de trabajo setup-discussions.yml para generar publicaciones desde plantillas

### Cambiado

- **Estructura de Documentación**: Movido de estructura de archivos plana a carpetas basadas en locale
- **Imágenes de Vista Previa**: Eliminadas las imágenes de vista previa SVG, manteniendo solo las previsualizaciones PNG
- **Flujo de Trabajo de Wiki**: Actualizado para manejar la estructura de documentación basada en locale con 9 idiomas
- **Organización de Scripts**: Renombrado `apply-theme.sh` a `apply.sh` y movido al directorio `scripts/`
  - Actualizadas todas las referencias en documentación y código
  - Consolidados todos los scripts en el directorio `scripts/`

### Cambiado

- **Reestructuración de Documentación**:
  - `docs/README.md` ahora sirve como índice de navegación simple
  - `docs/HOME.md` proporciona una visión general completa de la documentación
  - Actualizados todos los enlaces internos de documentación para consistencia
- **Mejoras al README**:
  - Agregada barra de traducción de idiomas
  - Agregados botones de compartir en redes sociales
  - Agregados escudos de estado de GitHub
  - Sección de contribución mejorada con enlace a las directrices
- **Actualizaciones de Navegación**:
  - Agregada Guía de Contribución a toda la navegación de documentación
  - Actualizados los enlaces de pie de página en todos los documentos para consistencia

### Corregido

- Consistencia de enlaces de documentación en todos los archivos markdown
- Mejoras en el formato y claridad de la guía de instalación
- Enlaces de referencia cruzada entre archivos de documentación

## [1.0.0] - 2026-05-03

### Añadido

- **Lanzamiento inicial** de Hentai-Senpai Theme
- Soporte completo de tema GTK:
  - GTK 2.0 con estilo completo de widgets y recursos
  - GTK 3.0 con tematización CSS completa
  - GTK 4.0 con CSS moderno y propiedades personalizadas
- Tema completo de **GNOME Shell 40+** que incluye:
  - Estilo de panel con soporte de transparencia
  - Tematización de vista general y cuadrícula de aplicaciones
  - Estilo de notificaciones y calendario
  - Menús del sistema y popovers
  - Vista previa de ventanas y alt-tab
- Soporte de entorno de escritorio **Cinnamon** con tematización de panel y menú
- Tema de gestor de ventanas **XFWM4**
- Soporte de decoraciones de ventana **Metacity**
- Integración de la **paleta de colores Nord**:
  - Fondos **Polar Night** (`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - Colores de texto **Snow Storm** (`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - Colores de acento **Frost** (`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - Colores semánticos **Aurora** (`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- Principios de **Material Design**:
  - Esquinas redondeadas de 12px para botones, tarjetas y entradas
  - Radio de borde de 20px para popovers
  - Casillas de verificación y botones de radio circulares (radio 9999px)
  - Sombras de elevación y efectos de profundidad
  - Efectos de onda en elementos interactivos
- **Script de instalación** (`install.sh`) con opciones completas:
  - Funcionalidad de instalar y desinstalar
  - Capacidad de actualizar/reinstalar
  - Opciones de destino y nombre personalizados
  - Corrección Libadwaita para aplicaciones GTK4
  - Corrección de tema Flatpak para aplicaciones sandbox
  - Estilo de tema de dock (variantes transparente y sólida)
  - Instalación de fondos de pantalla
  - Verificación de dependencias con auto-instalación
  - Visualización de información del sistema y compatibilidad
- **Script de aplicación de tema** (`scripts/apply.sh`) para activación automática del tema
- **Tema de dock Plank transparente** con integración adecuada de colores Nord
- **Documentación completa**:
  - Guía de instalación con opciones detalladas
  - Guía de solución de problemas para problemas comunes
  - Referencia de paleta de colores con ejemplos de uso
  - Guía de personalización para personalizar el tema
- **Colección de fondos de pantalla** con diseños inspirados en Nord

### Componentes del Tema

| Componente | Descripción |
|-----------|-------------|
| **GTK 2.0** | Estilo completo de widgets con recursos de imagen |
| **GTK 3.0** | Tematización CSS completa con todos los widgets |
| **GTK 4.0** | CSS moderno con propiedades personalizadas y variables |
| **GNOME Shell** | Tema completo de shell con todos los elementos de UI |
| **Cinnamon** | Tematización de escritorio y panel |
| **XFWM4** | Decoraciones de ventana para XFCE |
| **Metacity** | Decoraciones de ventana para MATE y otros |
| **Plank** | Tema de dock transparente |

### Entornos de Escritorio Soportados

- GNOME 40+
- Cinnamon 4.0+
- XFCE (con xfwm4)
- Budgie 10.5+
- MATE 1.24+

[No Publicado]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
