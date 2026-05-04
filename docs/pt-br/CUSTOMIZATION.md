# Personalização

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Personalizacao" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizacao-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Personalizacao-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Como personalizar o Tema Hentai-Senpai GTK para corresponder às suas preferências.

## Índice

- [Variantes de Cores](#variantes-de-cores)
- [Personalização Manual](#personalização-manual)
- [Criando Variantes Personalizadas](#criando-variantes-personalizadas)
- [Substituições do Usuário](#substituições-do-usuário)
- [Ajustes do Ambiente Desktop](#ajustes-do-ambiente-desktop)

## Variantes de Cores

O tema vem com diferentes opções de cores. Use o script de instalação para selecionar variantes:

```bash
# Listar variantes disponíveis
./install.sh --help
```

### Variantes Disponíveis

| Variante | Descrição | Melhor Para |
|---------|-------------|----------|
| `default` | Nord dark padrão | Uso geral |
| `blackness` | Fundo preto mais profundo | Telas OLED |

## Personalização Manual

### Editando Arquivos do Tema

Edite os arquivos CSS diretamente na instalação do seu tema:

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # Configuração GTK2
├── gtk-3.0/gtk.css        # Estilos GTK3
├── gtk-4.0/gtk.css        # Estilos GTK4
└── gnome-shell/gnome-shell.css  # Estilos do GNOME Shell
```

**⚠️ Aviso:** Edições diretas serão perdidas ao atualizar o tema. Use [Substituições do Usuário](#substituições-do-usuário) para alterações persistentes.

### Variáveis CSS Principais

Variáveis comuns que você pode modificar:

```css
/* Cores de fundo */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* Cores de destaque */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## Criando Variantes Personalizadas

Para criar sua própria variante de cor:

1. **Copie os arquivos-fonte:**
   ```bash
   cp -r src src-custom
   ```

2. **Edite as definições de cores:**
   - Abra `src-custom/gtk-3.0/gtk.css`
   - Modifique as variáveis de cor no topo

3. **Recompile o tema:**
   ```bash
   ./install.sh -d ~/.themes -n Minha-Variante-Personalizada
   ```

## Substituições do Usuário

Crie personalizações persistentes que sobrevivem a atualizações de tema.

### Substituições GTK3

Crie ou edite:
```bash
~/.config/gtk-3.0/gtk.css
```

Exemplo:
```css
/* Tornar todos os botões arredondados */
button {
    border-radius: 8px;
}

/* Mudar cor de seleção */
*:selected {
    background-color: #BF616A;
}
```

### Substituições GTK4

Crie ou edite:
```bash
~/.config/gtk-4.0/gtk.css
```

Exemplo:
```css
/* Padding maior para GTK4 */
button {
    padding: 8px 16px;
}
```

## Ajustes do Ambiente Desktop

### Ajustes do GNOME

Instale o GNOME Tweaks para opções adicionais:

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**Configurações recomendadas:**
- **Temas > Aplicativos Legados**: Hentai-Senpai
- **Temas > Shell**: Hentai-Senpai
- **Temas > Ícones**: Papirus-Dark ou Nordic

### Ajustes do XFCE

1. Abra **Configurações > Aparência**
2. Defina **Estilo**: Hentai-Senpai
3. Defina **Ícones**: Seu tema de ícones preferido
4. Vá em **Gerenciador de Janelas > Estilo**: Hentai-Senpai

### Ajustes do Cinnamon

1. Clique com botão direito na área de trabalho → **Configurações da Área de Trabalho**
2. Defina **Tema da área de trabalho**: Hentai-Senpai
3. Personalize componentes individuais:
   - **Controles**: Hentai-Senpai
   - **Área de Trabalho**: Sua preferência
   - **Ícones**: Sua preferência
   - **Ponteiro do Mouse**: Sua preferência

## Personalização Avançada

### Mudando Layout dos Botões da Janela

Edite `metacity-theme-1.xml` para decorações de janela:

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### Personalizando Elementos do Shell

Para modificações do GNOME Shell:

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

Modificações comuns:
- Altura do painel
- Estilo dos menus
- Aparência do calendário

## Dicas para Melhores Resultados

1. **Use temas de ícones consistentes** com a paleta de cores Nord
2. **Combine cores do terminal** com o tema (veja [Paleta de Cores](COLOR_PALETTE))
3. **Teste mudanças incrementalmente** - modifique uma coisa de cada vez
4. **Mantenha backups** de configurações funcionais

## Compartilhando Suas Personalizações

Criou algo ótimo? Considere:
- Compartilhar capturas de tela nas [Discussões](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- Enviar melhorias via [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)
