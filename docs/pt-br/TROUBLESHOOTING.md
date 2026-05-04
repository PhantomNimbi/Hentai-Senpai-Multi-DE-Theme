# Solução de Problemas

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Solucao-de-Problemas" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Solucao-de-Problemas-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Solucao-de-Problemas-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Problemas comuns e soluções para o Tema Hentai-Senpai GTK.

## Índice

- [Tema Não Aplicando](#tema-não-aplicando)
- [Ícones Não Aparecendo Corretamente](#ícones-não-aparecendo-corretamente)
- [Apps Flatpak Não Tematizados](#apps-flatpak-não-tematizados)
- [Erros de Compilação](#erros-de-compilação)
- [Apps GTK4/libadwaita Parecem Diferentes](#apps-gtk4libadwaita-parecem-diferentes)
- [Problemas de Performance](#problemas-de-performance)
- [Obter Ajuda](#obter-ajuda)

## Tema Não Aplicando

### Problema
O tema não aparece nas configurações ou não aplica após a seleção.

### Soluções

1. **Verifique o local de instalação:**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **Verifique a instalação adequada:**
   ```bash
   # Deve mostrar os arquivos do tema
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **Reinicie sua sessão:**
   - Faça logout e login novamente
   - Ou reinicie o ambiente desktop

4. **Para GNOME - Verifique a extensão User Themes:**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   Se não estiver habilitada:
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## Ícones Não Aparecendo Corretamente

### Problema
Ícones aparecem quebrados ou como ícones padrão do sistema.

### Soluções

1. **Instale um tema de ícones compatível:**
   - Recomendado: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme), ou [Nordic](https://github.com/EliverLara/Nordic)

2. **Verifique a instalação do tema de ícones:**
   ```bash
   ls ~/.icons/  # ou /usr/share/icons/
   ```

3. **Aplique o tema de ícones** nas configurações do seu ambiente desktop.

## Apps Flatpak Não Tematizados

### Problema
Aplicativos Flatpak usam o tema Adwaita padrão em vez do Hentai-Senpai.

### Soluções

1. **Conceda ao Flatpak acesso aos temas:**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Instale o pacote de tema Flatpak:**
   ```bash
   ./install.sh -f
   ```

3. **Defina o tema GTK para Flatpak:**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Reinicie os aplicativos Flatpak** para as alterações terem efeito.

## Erros de Compilação

### Problema
Erros durante a instalação ou compilação do tema.

### Soluções

1. **Instale o compilador Sass:**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **Verifique dependências ausentes:**
   ```bash
   # Verifique se sassc está instalado
   which sassc
   sassc --version
   ```

3. **Limpe e recompile:**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## Apps GTK4/libadwaita Parecem Diferentes

### Problema
Aplicativos GTK4 ou libadwaita não correspondem perfeitamente ao tema.

### Soluções

1. **Habilite o link do libadwaita:**
   ```bash
   ./install.sh -l
   ```

2. **Nota:** Aplicativos GTK4/libadwaita têm suporte limitado de tematização por design. Algumas diferenças visuais são esperadas.

## Problemas de Performance

### Problema
Sistema fica mais lento após aplicar o tema.

### Soluções

1. **Desative animações** (se desejado):
   - GNOME: `gsettings set org.gnome.desktop.interface enable-animations false`

2. **Verifique alto uso de CPU** de processos do tema.

3. **Use uma variante mais leve** se disponível.

## Obter Ajuda

Se seu problema não estiver listado aqui:

1. **Pesquise problemas existentes:**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **Crie um novo problema** com:
   - Sua distribuição e versão
   - Ambiente desktop e versão
   - Passos para reproduzir o problema
   - Capturas de tela (se aplicável)
   - Mensagens de erro (se houver)

3. **Consulte o [Guia de Instalação](INSTALLATION)** para instruções adequadas de configuração.
