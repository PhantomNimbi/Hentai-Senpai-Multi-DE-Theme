# Guia de Instalação

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Idioma</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Guia-de-Instalacao" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Guia-de-Instalacao-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div><a href="Guia-de-Instalacao-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
    </div>
  </details>
</div>

Este guia ajudará você a instalar o Tema Hentai-Senpai GTK no seu sistema Linux.

## Índice

- [Pré-requisitos](#pré-requisitos)
- [Instalação Rápida](#instalação-rápida)
- [Opções de Instalação](#opções-de-instalação)
- [Específico do Ambiente Desktop](#específico-do-ambiente-desktop)
- [Suporte Flatpak](#suporte-flatpak)
- [Desinstalação](#desinstalação)

## Pré-requisitos

Antes de instalar, certifique-se de ter:

- **Bibliotecas GTK**: GTK 2, GTK 3 e/ou GTK 4 (dependendo do seu sistema)
- **Git**: Para clonar o repositório
- **Compilador Sass**: `sassc` ou `dart-sass` (para compilar do código-fonte)
- **Acesso root**: Apenas se estiver instalando em todo o sistema

### Instalando Dependências

**Debian/Ubuntu:**
```bash
sudo apt install git sassc
```

**Fedora:**
```bash
sudo dnf install git sassc
```

**Arch Linux:**
```bash
sudo pacman -S git sassc
```

## Instalação Rápida

A forma mais rápida de instalar:

```bash
# Clonar o repositório
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Instalar o tema
./install.sh --update -l -f --dock

# Aplicar o tema
./apply-theme.sh
```

## Opções de Instalação

O script de instalação suporta várias opções:

| Opção | Descrição |
|--------|-------------|
| `-d`, `--dest` | Definir destino da instalação (padrão: `~/.themes`) |
| `-n`, `--name` | Definir nome do tema (padrão: `Hentai-Senpai`) |
| `-l`, `--libadwaita` | Vincular ao tema libadwaita |
| `-f`, `--flatpak` | Instalar tema Flatpak |
| `--dock` | Instalar tema do dock (Plank) |
| `-r`, `--remove` | Remover temas instalados |
| `--update` | Atualizar instalação existente |

### Exemplos

**Instalação em todo o sistema:**
```bash
sudo ./install.sh -d /usr/share/themes
```

**Nome de tema personalizado:**
```bash
./install.sh -n "Meu-Tema-Personalizado"
```

**Instalar com todos os recursos:**
```bash
./install.sh -l -f --dock
```

**Remover tema:**
```bash
./install.sh -r
```

## Específico do Ambiente Desktop

### GNOME

Após a instalação, ative o tema:

```bash
# Habilitar extensão User Themes (se ainda não estiver habilitada)
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Aplicar tema
./apply-theme.sh
```

Ou defina manualmente via **Configurações > Aparência**.

### Cinnamon

Vá em **Configurações do Sistema > Temas** e selecione `Hentai-Senpai`.

### XFCE

1. Vá em **Configurações > Aparência**
2. Selecione `Hentai-Senpai` da lista
3. Vá em **Gerenciador de Janelas** e selecione o tema lá também

### MATE

Vá em **Sistema > Preferências > Aparência** e selecione o tema.

### Budgie

Vá em **Configurações > Área de Trabalho > Aparência** e selecione o tema.

## Suporte Flatpak

Para aplicar tema em aplicações Flatpak:

```bash
# Permitir que apps Flatpak acessem o tema
flatpak override --filesystem=$HOME/.themes

# Instalar tema Flatpak (durante a instalação)
./install.sh -f
```

**Nota:** Você pode precisar reiniciar os aplicativos Flatpak para as alterações terem efeito.

## Desinstalação

Para remover o tema:

```bash
./install.sh -r
```

Ou exclua manualmente:
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## Próximos Passos

- Leia o [Guia de Personalização](CUSTOMIZATION) para personalizar seu tema
- Consulte a [Solução de Problemas](TROUBLESHOOTING) se encontrar problemas
- Veja a [Paleta de Cores](COLOR_PALETTE) para as cores do tema
