# Guide d'Installation

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Langue</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Installation-Guide" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Installation-Guide-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Guide-d-Installation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsanleitung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Guida-Installazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Installationsguide-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Anleitung-zur-Installation-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Rukovodstvo-po-ustanovke" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Ce guide vous aidera à installer le thème GTK Hentai-Senpai sur votre système Linux.

## Table des Matières

- [Prérequis](#prérequis)
- [Installation Rapide](#installation-rapide)
- [Options d'Installation](#options-dinstallation)
- [Spécifique à l'Environnement de Bureau](#spécifique-à-lenvironnement-de-bureau)
- [Support Flatpak](#support-flatpak)
- [Désinstallation](#désinstallation)

## Prérequis

Avant l'installation, assurez-vous d'avoir :

- **Bibliothèques GTK** : GTK 2, GTK 3 et/ou GTK 4 (selon votre système)
- **Git** : Pour cloner le dépôt
- **Compilateur Sass** : `sassc` ou `dart-sass` (pour compiler depuis les sources)
- **Accès root** : Uniquement si vous installez à l'échelle du système

### Installation des Dépendances

**Debian/Ubuntu :**
```bash
sudo apt install git sassc
```

**Fedora :**
```bash
sudo dnf install git sassc
```

**Arch Linux :**
```bash
sudo pacman -S git sassc
```

## Installation Rapide

La méthode la plus rapide pour installer :

```bash
# Cloner le dépôt
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Installer le thème
./install.sh --update -l -f --dock

# Appliquer le thème
./apply-theme.sh
```

## Options d'Installation

Le script d'installation prend en charge diverses options :

| Option | Description |
|--------|-------------|
| `-d`, `--dest` | Définir le répertoire d'installation (par défaut : `~/.themes`) |
| `-n`, `--name` | Définir le nom du thème (par défaut : `Hentai-Senpai`) |
| `-l`, `--libadwaita` | Lier au thème libadwaita |
| `-f`, `--flatpak` | Installer le thème Flatpak |
| `--dock` | Installer le thème de dock (Plank) |
| `-r`, `--remove` | Supprimer les thèmes installés |
| `--update` | Mettre à jour l'installation existante |

### Exemples

**Installation à l'échelle du système :**
```bash
sudo ./install.sh -d /usr/share/themes
```

**Nom de thème personnalisé :**
```bash
./install.sh -n "Mon-Theme-Personnalise"
```

**Installer avec toutes les fonctionnalités :**
```bash
./install.sh -l -f --dock
```

**Supprimer le thème :**
```bash
./install.sh -r
```

## Spécifique à l'Environnement de Bureau

### GNOME

Après l'installation, activez le thème :

```bash
# Activer l'extension User Themes (si pas déjà activée)
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Appliquer le thème
./apply-theme.sh
```

Ou définissez manuellement via **Paramètres > Apparence**.

### Cinnamon

Allez dans **Paramètres système > Thèmes** et sélectionnez `Hentai-Senpai`.

### XFCE

1. Allez dans **Paramètres > Apparence**
2. Sélectionnez `Hentai-Senpai` dans la liste
3. Allez dans **Gestionnaire de fenêtres** et sélectionnez le thème là aussi

### MATE

Allez dans **Système > Préférences > Apparence** et sélectionnez le thème.

### Budgie

Allez dans **Paramètres > Bureau > Apparence** et sélectionnez le thème.

## Support Flatpak

Pour thémer les applications Flatpak :

```bash
# Autoriser les applications Flatpak à accéder au thème
flatpak override --filesystem=$HOME/.themes

# Installer le thème Flatpak (pendant l'installation)
./install.sh -f
```

**Note :** Vous devrez peut-être redémarrer les applications Flatpak pour que les changements prennent effet.

## Désinstallation

Pour supprimer le thème :

```bash
./install.sh -r
```

Ou supprimez manuellement :
```bash
rm -rf ~/.themes/Hentai-Senpai*
```

## Étapes Suivantes

- Consultez le [Guide de Personnalisation](Personnalisation) pour personnaliser votre thème
- Consultez la [Résolution de Problèmes](Resolution-de-Problemes) si vous rencontrez des problèmes
- Consultez la [Palette de Couleurs](Palette-de-Couleurs) pour les couleurs du thème
