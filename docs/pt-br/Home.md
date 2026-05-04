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

Um belo tema GTK escuro baseado no Orchis com cores Nord. Este tema traz uma aparência moderna e coesa para sua área de trabalho Linux com esquemas de cores cuidadosamente selecionados que são agradáveis aos olhos durante longas sessões de codificação ou uso diário.

![Captura de Tela Principal](../../assets/screenshots/hero.png)

## Requisitos

Antes de instalar, certifique-se de ter:

- **Bibliotecas GTK**: Bibliotecas de desenvolvimento GTK 2, GTK 3 e GTK 4
- **Git**: Para clonar o repositório
- **Compilador Sass**: `sassc` (recomendado) ou `dart-sass`
- **Sistema Linux**: Qualquer distribuição com ambiente de desktop baseado em GTK (GNOME, Cinnamon, XFCE, Budgie, MATE, etc.)
- **Espaço em Disco**: Aproximadamente 50MB de espaço livre

### Instalar dependências (Ubuntu/Debian):
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### Instalar dependências (Fedora):
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### Instalar dependências (Arch):
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## Início Rápido

A maneira mais rápida de começar:

```bash
# Instalação básica
./install.sh

# Instalação completa com todas as correções e opções
./install.sh --update -l -f --dock

# Aplicar o tema
./scripts/apply.sh
```

### Comandos Comuns em Uma Linha

```bash
# Clonar e instalar em um único comando
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# Atualizar instalação existente
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## Opções de Instalação

| Opção | Descrição |
|-------|-----------|
| `--update` | Atualizar/reinstalar o tema (preserva personalizações) |
| `-l, --libadwaita` | Corrigir tematização de aplicativos GTK4/libadwaita |
| `-f, --flatpak` | Corrigir tematização de aplicativos Flatpak em sandbox |
| `--dock [TIPO]` | Aplicar tema do dock (transparente, sólido ou blur) |
| `-w, --wallpapers` | Instalar e aplicar papéis de parede do tema |
| `-d, --dest DIR` | Diretório de instalação personalizado (padrão: ~/.themes) |
| `-t, --theme VARIANTE` | Instalar variante de cor específica |
| `-c, --color VARIANTE` | Instalar cor de destaque específica |
| `-s, --size TAMANHO` | Instalar variante de tamanho específico (padrão, compacto) |
| `-h, --help` | Mostrar mensagem de ajuda detalhada |

### Exemplos:

```bash
# Instalar com dock transparente e todas as correções
./install.sh -l -f --dock transparent

# Instalar no diretório do sistema
sudo ./install.sh -d /usr/share/themes

# Instalar apenas variante escura com destaque azul
./install.sh -t dark -c blue
```

## Problemas Comuns

### O tema não está sendo aplicado?
- **Usuários GNOME**: Habilite a extensão "Temas de Usuário" nas Extensões GNOME
- **Outros DEs**: Certifique-se de ter um mecanismo de tema compatível instalado
- Tente fazer logout e login novamente, ou reinicie seu ambiente de desktop

### Aplicativos Flatpak não estão com tema?
Execute o script de instalação com a flag `--flatpak`:
```bash
./install.sh -f
```

### Aplicativos GTK4/libadwaita parecem diferentes?
Aplique a correção libadwaita:
```bash
./install.sh -l
```

### Ícones faltando?
Instale um destes temas de ícones recomendados:
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## Recursos

- **Cores Nord Escuras e Elegantes**: Baseado na popular paleta de cores Nord para uma experiência de visualização confortável
- **Princípios de Material Design**: Interface moderna e limpa seguindo as diretrizes do Material Design do Google
- **Suporte Multi-DE**: Funciona com GNOME, Cinnamon, XFCE, Budgie, MATE e outros ambientes de desktop baseados em GTK
- **Suporte Completo GTK**: Cobre GTK 2, GTK 3, GTK 4, GNOME Shell e decorações de janela
- **Suporte Moderno GTK4/libadwaita**: Compatibilidade total com os aplicativos GTK4 mais recentes
- **Pronto para Flatpak**: Tema aplicativos Flatpak em sandbox de forma integrada
- **Personalizável**: Múltiplas variantes de cores, tamanhos e cores de destaque disponíveis
- **Temas de Dock**: Estilização opcional de dock transparente, sólido ou blur
- **Coleção de Papéis de Parede**: Papéis de parede selecionados que combinam perfeitamente com o tema

## Contribuindo

Agradecemos contribuições da comunidade! Veja como você pode ajudar:

- **Encontrou um bug?** [Reporte no GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - Por favor, inclua capturas de tela e detalhes do sistema
- **Tem uma sugestão?** [Abra uma Discussão no GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - Compartilhe suas ideias de melhorias
- **Quer ajudar?** Confira nosso [Guia de Contribuição](Contributing-pt-br) - Aprenda como enviar pull requests, reportar bugs e contribuir com código

## Links Rápidos

- [Guia de Instalação](Installation-Guide-pt-br) - Instruções detalhadas de instalação
- [Solução de Problemas](Troubleshooting-pt-br) - Soluções para problemas comuns
- [Personalização](Customization-pt-br) - Como personalizar o tema
- [Paleta de Cores](Color-Palette-pt-br) - Referência de cores do tema
- [Contribuindo](Contributing-pt-br) - Como contribuir para o projeto

## Ver no GitHub

[Ver no GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
