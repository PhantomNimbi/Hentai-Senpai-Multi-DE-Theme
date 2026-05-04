# Solución de Problemas

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Solucion-de-Problemas" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Solucion-de-Problemas-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Solucion-de-Problemas-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Problemas comunes y soluciones para el Tema Hentai-Senpai GTK.

## Tabla de Contenidos

- [El Tema No Se Aplica](#el-tema-no-se-aplica)
- [Los Iconos No Aparecen Correctamente](#los-iconos-no-aparecen-correctamente)
- [Las Aplicaciones Flatpak No Usan el Tema](#las-aplicaciones-flatpak-no-usan-el-tema)
- [Errores de Compilación](#errores-de-compilación)
- [Las Aplicaciones GTK4/libadwaita Se Ven Diferentes](#las-aplicaciones-gtk4libadwaita-se-ven-diferentes)
- [Problemas de Rendimiento](#problemas-de-rendimiento)
- [Obtener Ayuda](#obtener-ayuda)

## El Tema No Se Aplica

### Problema
El tema no aparece en la configuración o no se aplica después de la selección.

### Soluciones

1. **Verifique la ubicación de instalación:**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **Verifique la instalación adecuada:**
   ```bash
   # Debe mostrar los archivos del tema
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **Reinicie su sesión:**
   - Cierre sesión y vuelva a iniciar
   - O reinicie el entorno de escritorio

4. **Para GNOME - Verifique la extensión User Themes:**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   Si no está habilitada:
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## Los Iconos No Aparecen Correctamente

### Problema
Los iconos aparecen rotos o como iconos predeterminados del sistema.

### Soluciones

1. **Instale un tema de iconos compatible:**
   - Recomendado: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme), o [Nordic](https://github.com/EliverLara/Nordic)

2. **Verifique la instalación del tema de iconos:**
   ```bash
   ls ~/.icons/  # o /usr/share/icons/
   ```

3. **Aplique el tema de iconos** en la configuración de su entorno de escritorio.

## Las Aplicaciones Flatpak No Usan el Tema

### Problema
Las aplicaciones Flatpak usan el tema Adwaita predeterminado en lugar de Hentai-Senpai.

### Soluciones

1. **Conceda a Flatpak acceso a los temas:**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Instale el paquete de tema Flatpak:**
   ```bash
   ./install.sh -f
   ```

3. **Establezca el tema GTK para Flatpak:**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Reinicie las aplicaciones Flatpak** para que los cambios surtan efecto.

## Errores de Compilación

### Problema
Errores durante la instalación o compilación del tema.

### Soluciones

1. **Instale el compilador Sass:**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **Verifique dependencias faltantes:**
   ```bash
   # Verifique si sassc está instalado
   which sassc
   sassc --version
   ```

3. **Limpie y recompile:**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## Las Aplicaciones GTK4/libadwaita Se Ven Diferentes

### Problema
Las aplicaciones GTK4 o libadwaita no coinciden perfectamente con el tema.

### Soluciones

1. **Habilite el enlace de libadwaita:**
   ```bash
   ./install.sh -l
   ```

2. **Nota:** Las aplicaciones GTK4/libadwaita tienen soporte limitado de tematización por diseño. Algunas diferencias visuales son esperadas.

## Problemas de Rendimiento

### Problema
El sistema se siente más lento después de aplicar el tema.

### Soluciones

1. **Deshabilite las animaciones** (si lo desea):
   - GNOME: `gsettings set org.gnome.desktop.interface enable-animations false`

2. **Verifique alto uso de CPU** de procesos del tema.

3. **Use una variante más ligera** si está disponible.

## Obtener Ayuda

Si su problema no está listado aquí:

1. **Busque problemas existentes:**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **Cree un nuevo problema** con:
   - Su distribución y versión
   - Entorno de escritorio y versión
   - Pasos para reproducir el problema
   - Capturas de pantalla (si aplica)
   - Mensajes de error (si los hay)

3. **Consulte la [Guía de Instalación](INSTALLATION)** para instrucciones adecuadas de configuración.
