# Personalización

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Personalizacion" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizacion-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Personalizacion-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Cómo personalizar el Tema Hentai-Senpai GTK para que coincida con sus preferencias.

## Tabla de Contenidos

- [Variantes de Color](#variantes-de-color)
- [Personalización Manual](#personalización-manual)
- [Creando Variantes Personalizadas](#creando-variantes-personalizadas)
- [Anulaciones de Usuario](#anulaciones-de-usuario)
- [Ajustes del Entorno de Escritorio](#ajustes-del-entorno-de-escritorio)

## Variantes de Color

El tema viene con diferentes opciones de color. Use el script de instalación para seleccionar variantes:

```bash
# Listar variantes disponibles
./install.sh --help
```

### Variantes Disponibles

| Variante | Descripción | Mejor Para |
|---------|-------------|----------|
| `default` | Nord dark predeterminado | Uso general |
| `blackness` | Fondo negro más profundo | Pantallas OLED |

## Personalización Manual

### Editando Archivos del Tema

Edite los archivos CSS directamente en la instalación de su tema:

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # Configuración GTK2
├── gtk-3.0/gtk.css        # Estilos GTK3
├── gtk-4.0/gtk.css        # Estilos GTK4
└── gnome-shell/gnome-shell.css  # Estilos de GNOME Shell
```

**⚠️ Advertencia:** Las ediciones directas se perderán al actualizar el tema. Use [Anulaciones de Usuario](#anulaciones-de-usuario) para cambios persistentes.

### Variables CSS Principales

Variables comunes que puede modificar:

```css
/* Colores de fondo */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* Colores de acento */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## Creando Variantes Personalizadas

Para crear su propia variante de color:

1. **Copie los archivos fuente:**
   ```bash
   cp -r src src-custom
   ```

2. **Edite las definiciones de color:**
   - Abra `src-custom/gtk-3.0/gtk.css`
   - Modifique las variables de color en la parte superior

3. **Recompile el tema:**
   ```bash
   ./install.sh -d ~/.themes -n Mi-Variante-Personalizada
   ```

## Anulaciones de Usuario

Cree personalizaciones persistentes que sobrevivan a las actualizaciones del tema.

### Anulaciones GTK3

Cree o edite:
```bash
~/.config/gtk-3.0/gtk.css
```

Ejemplo:
```css
/* Hacer todos los botones redondeados */
button {
    border-radius: 8px;
}

/* Cambiar color de selección */
*:selected {
    background-color: #BF616A;
}
```

### Anulaciones GTK4

Cree o edite:
```bash
~/.config/gtk-4.0/gtk.css
```

Ejemplo:
```css
/* Mayor espaciado para GTK4 */
button {
    padding: 8px 16px;
}
```

## Ajustes del Entorno de Escritorio

### Ajustes de GNOME

Instale GNOME Tweaks para opciones adicionales:

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**Configuraciones recomendadas:**
- **Temas > Aplicaciones Legados**: Hentai-Senpai
- **Temas > Shell**: Hentai-Senpai
- **Temas > Iconos**: Papirus-Dark o Nordic

### Ajustes de XFCE

1. Abra **Configuración > Apariencia**
2. Establezca **Estilo**: Hentai-Senpai
3. Establezca **Iconos**: Su tema de iconos preferido
4. Vaya a **Administrador de Ventanas > Estilo**: Hentai-Senpai

### Ajustes de Cinnamon

1. Haga clic derecho en el escritorio → **Configuración del Escritorio**
2. Establezca **Tema del escritorio**: Hentai-Senpai
3. Personalice componentes individuales:
   - **Controles**: Hentai-Senpai
   - **Escritorio**: Su preferencia
   - **Iconos**: Su preferencia
   - **Puntero del mouse**: Su preferencia

## Personalización Avanzada

### Cambiando el Diseño de los Botones de Ventana

Edite `metacity-theme-1.xml` para decoraciones de ventana:

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### Personalizando Elementos del Shell

Para modificaciones de GNOME Shell:

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

Modificaciones comunes:
- Altura del panel
- Estilo de menús
- Apariencia del calendario

## Consejos para Mejores Resultados

1. **Use temas de iconos consistentes** con la paleta de colores Nord
2. **Combine colores del terminal** con el tema (vea [Paleta de Colores](COLOR_PALETTE))
3. **Pruebe cambios incrementalmente** - modifique una cosa a la vez
4. **Mantenga copias de seguridad** de configuraciones funcionales

## Compartiendo Sus Personalizaciones

¿Creó algo genial? Considere:
- Compartir capturas de pantalla en las [Discusiones](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- Enviar mejoras vía [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)
