# Contribuindo

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Contribuindo" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribuindo-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Contribuindo-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Obrigado pelo seu interesse em contribuir com o Tema Hentai-Senpai GTK! 🎉

## Índice

- [Como Contribuir](#como-contribuir)
- [Reportando Problemas](#reportando-problemas)
- [Estilo de Código](#estilo-de-código)
- [Documentação](#documentação)
- [Traduções](#traduções)
- [Configuração de Desenvolvimento](#configuração-de-desenvolvimento)

## Como Contribuir

Existem muitas formas de contribuir com este projeto:

1. **Reportar bugs** - Encontrou um problema? Nos avise!
2. **Sugerir funcionalidades** - Tem uma ideia? Adoraríamos ouvir!
3. **Enviar correções** - Melhorias no código são sempre bem-vindas
4. **Melhorar documentação** - Ajude a tornar a documentação mais clara
5. **Traduzir** - Ajude a tornar o tema acessível globalmente
6. **Compartilhar** - Espalhe a palavra sobre o tema

### Fluxo de Contribuição

1. **Fork o repositório** no GitHub
2. **Crie um novo branch** para sua funcionalidade/correção:
   ```bash
   git checkout -b feature/minha-nova-funcionalidade
   # ou
   git checkout -b fix/descrição-do-problema
   ```
3. **Faça suas alterações** com commits claros e focados
4. **Teste suas alterações** completamente
5. **Envie um Pull Request** com uma descrição clara

## Reportando Problemas

### Antes de Reportar

- [ ] Pesquise [problemas existentes](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) para evitar duplicatas
- [ ] Verifique se o problema existe na versão mais recente
- [ ] Tente isolar o problema

### Criando um Report de Bug

Inclua as seguintes informações:

| Campo | Descrição |
|-------|-------------|
| **Título** | Título claro e descritivo |
| **Descrição** | Descrição detalhada do problema |
| **Passos para Reproduzir** | Passos numerados para recriar o bug |
| **Comportamento Esperado** | O que deveria acontecer |
| **Comportamento Atual** | O que realmente acontece |
| **Capturas de Tela** | Evidência visual (se aplicável) |
| **Informações do Sistema** | SO, DE/WM, versão GTK |

## Estilo de Código

### CSS/Estilização

- Use 2 espaços para indentação
- Agrupe propriedades relacionadas juntas
- Use nomes de variáveis significativos
- Comente seções complexas

Exemplo:
```css
/* Estilização de botão primário */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* Estado de hover */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### Scripts Shell

- Use `#!/bin/bash` shebang
- Coloque todas as variáveis entre aspas: `"$variable"`
- Use nomes de funções significativos
- Adicione comentários para lógica complexa

### Mensagens de Commit

Siga o formato de commits convencionais:

```
tipo(escopo): assunto

corpo (opcional)

rodapé (opcional)
```

**Tipos:**
- `feat`: Nova funcionalidade
- `fix`: Correção de bug
- `docs`: Mudanças na documentação
- `style`: Mudanças de estilo de código (formatação)
- `refactor`: Refatoração de código
- `test`: Adicionar ou atualizar testes
- `chore`: Tarefas de manutenção

## Documentação

### Melhorando a Documentação

Melhorias na documentação são altamente valorizadas! Você pode:

- Corrigir erros de digitação e gramática
- Adicionar exemplos e capturas de tela
- Esclarecer seções confusas
- Adicionar informações ausentes

### Estrutura de Documentação

```
docs/
├── en-us/              # Documentação em Inglês
├── pt-br/              # Documentação em Português
└── es-es/              # Documentação em Espanhol
```

### Adicionando Capturas de Tela

Ao adicionar documentação visual:

1. Use formato PNG para capturas de tela
2. Mantenha tamanhos de arquivo razoáveis (< 500KB)
3. Use nomes de arquivos descritivos
4. Foque na funcionalidade específica

## Traduções

### Traduzindo Documentação

Para adicionar uma tradução:

1. **Crie a pasta do idioma:**
   ```bash
   mkdir docs/pt-br
   ```

2. **Copie os arquivos em inglês e traduza**

3. **Códigos de idioma suportados:**
   | Código | Idioma |
   |------|----------|
   | `en` | Inglês |
   | `pt` | Português |
   | `es` | Espanhol |

### Dicas de Tradução

- Mantenha termos técnicos em inglês se não houver tradução direta
- Mantenha a mesma estrutura markdown
- Atualize links para apontar para páginas traduzidas
- Teste a renderização antes de enviar

## Configuração de Desenvolvimento

### Pré-requisitos

```bash
# Instale as ferramentas necessárias
sudo apt install git sassc inkscape optipng
```

### Compilando do Código-Fonte

```bash
# Clone o repositório
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Instale dependências
# (veja a seção Pré-requisitos acima)

# Compile o tema
./install.sh

# Teste localmente
./apply-theme.sh
```

### Estrutura do Projeto

```
Hentai-Senpai-GTK-Theme/
├── src/                    # Arquivos-fonte
│   ├── gtk-2.0/           # Tema GTK2
│   ├── gtk-3.0/           # Tema GTK3
│   ├── gtk-4.0/           # Tema GTK4
│   ├── gnome-shell/       # Tema GNOME Shell
│   ├── cinnamon/          # Tema Cinnamon
│   ├── xfwm4/             # Tema XFWM
│   └── metacity-1/        # Tema Metacity
├── scripts/               # Scripts de build
├── install.sh             # Instalador principal
└── docs/                  # Documentação
```

## Perguntas?

- **Perguntas gerais:** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **Reportar bugs:** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **Contato direto:** Abra uma issue com o rótulo `question`

## Código de Conduta

- Seja respeitoso e construtivo
- Foque no problema, não na pessoa
- Aceite críticas construtivas com graciosidade
- Ajude a criar uma comunidade acolhedora

Obrigado por contribuir! 💜
