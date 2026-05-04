# Contribuyendo

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Contribuyendo" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribuyendo-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Contribuyendo-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

¡Gracias por su interés en contribuir con el Tema Hentai-Senpai GTK! 🎉

## Tabla de Contenidos

- [Cómo Contribuir](#cómo-contribuir)
- [Reportando Problemas](#reportando-problemas)
- [Estilo de Código](#estilo-de-código)
- [Documentación](#documentación)
- [Traducciones](#traducciones)
- [Configuración de Desarrollo](#configuración-de-desarrollo)

## Cómo Contribuir

Hay muchas formas de contribuir con este proyecto:

1. **Reportar bugs** - ¿Encontró un problema? ¡Háganos saber!
2. **Sugerir funcionalidades** - ¿Tiene una idea? ¡Nos encantaría escucharla!
3. **Enviar correcciones** - Las mejoras en el código siempre son bienvenidas
4. **Mejorar documentación** - Ayude a hacer la documentación más clara
5. **Traducir** - Ayude a hacer el tema accesible globalmente
6. **Compartir** - ¡Difunda la palabra sobre el tema!

### Flujo de Contribución

1. **Haga fork del repositorio** en GitHub
2. **Cree una nueva rama** para su funcionalidad/corrección:
   ```bash
   git checkout -b feature/mi-nueva-funcionalidad
   # o
   git checkout -b fix/descripción-del-problema
   ```
3. **Haga sus cambios** con commits claros y enfocados
4. **Pruebe sus cambios** completamente
5. **Envíe un Pull Request** con una descripción clara

## Reportando Problemas

### Antes de Reportar

- [ ] Busque [problemas existentes](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) para evitar duplicados
- [ ] Verifique si el problema existe en la versión más reciente
- [ ] Intente aislar el problema

### Creando un Reporte de Bug

Incluya la siguiente información:

| Campo | Descripción |
|-------|-------------|
| **Título** | Título claro y descriptivo |
| **Descripción** | Descripción detallada del problema |
| **Pasos para Reproducir** | Pasos numerados para recrear el bug |
| **Comportamiento Esperado** | Lo que debería suceder |
| **Comportamiento Actual** | Lo que realmente sucede |
| **Capturas de Pantalla** | Evidencia visual (si aplica) |
| **Información del Sistema** | SO, DE/WM, versión GTK |

## Estilo de Código

### CSS/Estilización

- Use 2 espacios para indentación
- Agrupe propiedades relacionadas juntas
- Use nombres de variables significativos
- Comente secciones complejas

Ejemplo:
```css
/* Estilización de botón primario */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* Estado hover */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### Scripts Shell

- Use `#!/bin/bash` shebang
- Ponga todas las variables entre comillas: `"$variable"`
- Use nombres de funciones significativos
- Agregue comentarios para lógica compleja

### Mensajes de Commit

Siga el formato de commits convencionales:

```
tipo(alcance): asunto

cuerpo (opcional)

pie (opcional)
```

**Tipos:**
- `feat`: Nueva funcionalidad
- `fix`: Corrección de bug
- `docs`: Cambios en documentación
- `style`: Cambios de estilo de código (formato)
- `refactor`: Refactorización de código
- `test`: Agregar o actualizar pruebas
- `chore`: Tareas de mantenimiento

## Documentación

### Mejorando la Documentación

¡Las mejoras en la documentación son muy valoradas! Puede:

- Corregir errores de tipografía y gramática
- Agregar ejemplos y capturas de pantalla
- Aclarar secciones confusas
- Agregar información faltante

### Estructura de Documentación

```
docs/
├── en-us/              # Documentación en Inglés
├── pt-br/              # Documentación en Portugués
└── es-es/              # Documentación en Español
```

### Agregando Capturas de Pantalla

Al agregar documentación visual:

1. Use formato PNG para capturas de pantalla
2. Mantenga tamaños de archivo razonables (< 500KB)
3. Use nombres de archivos descriptivos
4. Enfóquese en la funcionalidad específica

## Traducciones

### Traduciendo Documentación

Para agregar una traducción:

1. **Cree la carpeta del idioma:**
   ```bash
   mkdir docs/es-es
   ```

2. **Copie los archivos en inglés y traduzca**

3. **Códigos de idioma soportados:**
   | Código | Idioma |
   |------|----------|
   | `en` | Inglés |
   | `pt` | Portugués |
   | `es` | Español |

### Consejos de Traducción

- Mantenga términos técnicos en inglés si no hay traducción directa
- Mantenga la misma estructura markdown
- Actualice enlaces para apuntar a páginas traducidas
- Pruebe la renderización antes de enviar

## Configuración de Desarrollo

### Requisitos Previos

```bash
# Instale las herramientas necesarias
sudo apt install git sassc inkscape optipng
```

### Compilando desde el Código Fuente

```bash
# Clone el repositorio
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Instale dependencias
# (vea la sección Requisitos Previos arriba)

# Compile el tema
./install.sh

# Pruebe localmente
./apply-theme.sh
```

### Estructura del Proyecto

```
Hentai-Senpai-GTK-Theme/
├── src/                    # Archivos fuente
│   ├── gtk-2.0/           # Tema GTK2
│   ├── gtk-3.0/           # Tema GTK3
│   ├── gtk-4.0/           # Tema GTK4
│   ├── gnome-shell/       # Tema GNOME Shell
│   ├── cinnamon/          # Tema Cinnamon
│   ├── xfwm4/             # Tema XFWM
│   └── metacity-1/        # Tema Metacity
├── scripts/               # Scripts de build
├── install.sh             # Instalador principal
└── docs/                  # Documentación
```

## ¿Preguntas?

- **Preguntas generales:** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **Reportar bugs:** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **Contacto directo:** Abra una issue con la etiqueta `question`

## Código de Conducta

- Sea respetuoso y constructivo
- Enfóquese en el problema, no en la persona
- Acepte críticas constructivas con gracia
- Ayude a crear una comunidad acogedora

¡Gracias por contribuir! 💜
