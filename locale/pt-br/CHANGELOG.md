<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;"><strong>🇧🇷 Português</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../ko-kr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇰🇷 한국어</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Registro de Alterações

Todas as alterações notáveis no projeto Hentai-Senpai GTK Theme serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
e este projeto adere ao [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Não Lançado]

### Adicionado

- **Modelos GitHub Issue**
  - Modelo de relatório de bug com lista de verificação de ambiente
  - Modelo de solicitação de recurso com seções de casos de uso
  - Modelo de perguntas/suporte
  - Arquivo de configuração com links de contato
- **Diretrizes de Contribuição**
  - `docs/CONTRIBUTING.md` abrangente incluindo:
    - Instruções de configuração de desenvolvimento
    - Diretrizes de estilo de código para CSS e scripts shell
    - Convenções de mensagens de commit
    - Processo de pull request
    - Procedimentos de teste
    - Diretrizes da comunidade
- **Documentação Aprimorada**
  - Adicionado `docs/HOME.md` como página inicial de documentação abrangente
  - Simplificado `docs/README.md` para navegação fácil
  - Atualizados todos os arquivos de documentação com formatação consistente e referências cruzadas
- **Suporte de Tradução**
  - Adicionada barra de tradução a todos os arquivos markdown de documentação
  - Suporte para 9 idiomas: Inglês, Japonês, Espanhol, Francês, Alemão, Chinês, Coreano, Russo, Português
- **Integração com Mídias Sociais**
  - Botões de compartilhamento para Twitter/X, Reddit, Facebook, LinkedIn, Mastodon e Telegram
  - Escudos de status mostrando versão, licença, estrelas, contribuidores e issues
- **Documentação Multilíngue**
  - Reestruturada docs em pastas baseadas em locale (en-us, pt-br, es-es, fr-fr, de-de, it-it, ja-jp, zh-cn, ru-ru)
  - Traduções completas para 9 idiomas
  - Menus suspensos de seleção de idioma em todas as páginas de documentação
  - Atualizado o workflow do GitHub Actions para suportar todos os 9 idiomas
- **Página de Galeria**
  - Criada Gallery.md mostrando prévias do tema e papéis de parede
  - Exibe as imagens preview-1.png e preview-2.png
  - Mostra todos os 6 papéis de parede disponíveis
  - Disponível em todos os 9 idiomas
  - Corrigido: Arquivos Gallery.md realmente criados em todas as pastas de locale
  - Corrigido: Atribuições de imagens de prévia corrigidas (preview-2.png = Área de Trabalho, preview-1.png = Aplicativos)
  - Corrigido: Descrição dos papéis de parede corrigida (minimalistas, cores monocromáticas, temas ecchi)
- **GitHub Discussions**
  - Criadas categorias de discussão abrangentes: Geral, Vitrine, Perguntas e Respostas, Ideias, Desenvolvimento, Anúncios
  - Adicionados modelos de discussão para cada categoria
  - Criado DISCUSSION_GUIDE.md com instruções de uso
  - Definidas as melhores práticas e diretrizes da comunidade
  - Movido para branch `discussions` separada para gerenciamento de modelos
  - Criado workflow setup-discussions.yml para gerar posts a partir de modelos

### Alterado

- **Estrutura de Documentação**: Movido de estrutura de arquivos plana para pastas baseadas em locale
- **Imagens de Prévia**: Removidas as imagens de prévia SVG, mantendo apenas as prévias PNG
- **Workflow Wiki**: Atualizado para lidar com a estrutura de documentação baseada em locale com 9 idiomas
- **Organização de Scripts**: Renomeado `apply-theme.sh` para `apply.sh` e movido para o diretório `scripts/`
  - Atualizadas todas as referências na documentação e código
  - Consolidados todos os scripts no diretório `scripts/`

### Alterado

- **Reestruturação da Documentação**:
  - `docs/README.md` agora serve como índice de navegação simples
  - `docs/HOME.md` fornece uma visão geral abrangente da documentação
  - Atualizados todos os links internos de documentação para consistência
- **Melhorias no README**:
  - Adicionada barra de tradução de idiomas
  - Adicionados botões de compartilhamento em redes sociais
  - Adicionados escudos de status do GitHub
  - Seção de contribuição aprimorada com link para as diretrizes
- **Atualizações de Navegação**:
  - Adicionado Guia de Contribuição a toda a navegação de documentação
  - Atualizados os links de rodapé em todos os documentos para consistência

### Corrigido

- Consistência de links de documentação em todos os arquivos markdown
- Melhorias na formatação e clareza do guia de instalação
- Links de referência cruzada entre arquivos de documentação

## [1.0.0] - 2026-05-03

### Adicionado

- **Lançamento inicial** do Hentai-Senpai Theme
- Suporte completo ao tema GTK:
  - GTK 2.0 com estilo completo de widgets e recursos
  - GTK 3.0 com tematização CSS completa
  - GTK 4.0 com CSS moderno e propriedades personalizadas
- Tema completo **GNOME Shell 40+** incluindo:
  - Estilização de painel com suporte a transparência
  - Tematização de visão geral e grade de aplicativos
  - Estilização de notificações e calendário
  - Menus do sistema e popovers
  - Prévias de janelas e alt-tab
- Suporte ao ambiente de desktop **Cinnamon** com tematização de painel e menu
- Tema do gerenciador de janelas **XFWM4**
- Suporte a decorações de janela **Metacity**
- Integração da **paleta de cores Nord**:
  - Fundos **Polar Night** (`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - Cores de texto **Snow Storm** (`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - Cores de destaque **Frost** (`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - Cores semânticas **Aurora** (`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- Princípios de **Material Design**:
  - Cantos arredondados de 12px para botões, cards e entradas
  - Raio de borda de 20px para popovers
  - Caixas de seleção e botões de rádio circulares (raio 9999px)
  - Sombras de elevação e efeitos de profundidade
  - Efeitos de ondulação em elementos interativos
- **Script de instalação** (`install.sh`) com opções abrangentes:
  - Funcionalidade de instalar e desinstalar
  - Capacidade de atualizar/reinstalar
  - Opções de destino e nome personalizadas
  - Correção Libadwaita para aplicativos GTK4
  - Correção de tema Flatpak para aplicativos em sandbox
  - Estilização de tema de dock (variantes transparente e sólida)
  - Instalação de papéis de parede
  - Verificação de dependências com auto-instalação
  - Exibição de informações do sistema e compatibilidade
- **Script de aplicação de tema** (`scripts/apply.sh`) para ativação automática do tema
- **Tema de dock Plank transparente** com integração adequada das cores Nord
- **Documentação abrangente**:
  - Guia de instalação com opções detalhadas
  - Guia de solução de problemas para problemas comuns
  - Referência de paleta de cores com exemplos de uso
  - Guia de personalização para personalizar o tema
- **Coleção de papéis de parede** com designs inspirados no Nord

### Componentes do Tema

| Componente | Descrição |
|-----------|-------------|
| **GTK 2.0** | Estilo completo de widgets com recursos de imagem |
| **GTK 3.0** | Tematização CSS completa com todos os widgets |
| **GTK 4.0** | CSS moderno com propriedades personalizadas e variáveis |
| **GNOME Shell** | Tema completo de shell com todos os elementos de UI |
| **Cinnamon** | Tematização de desktop e painel |
| **XFWM4** | Decorações de janela para XFCE |
| **Metacity** | Decorações de janela para MATE e outros |
| **Plank** | Tema de dock transparente |

### Ambientes de Desktop Suportados

- GNOME 40+
- Cinnamon 4.0+
- XFCE (com xfwm4)
- Budgie 10.5+
- MATE 1.24+

[Não Lançado]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
