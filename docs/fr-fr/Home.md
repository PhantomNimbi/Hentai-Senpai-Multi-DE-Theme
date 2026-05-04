<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Langue</summary>
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

# Thème Hentai-Senpai

Un magnifique thème GTK sombre basé sur Orchis avec les couleurs Nord. Ce thème apporte une apparence moderne et cohérente à votre bureau Linux avec des schémas de couleurs soigneusement sélectionnés qui sont agréables pour les yeux pendant de longues sessions de codage ou une utilisation quotidienne.

![Capture d'Écran Principale](../../assets/screenshots/hero.png)

## Prérequis

Avant d'installer, assurez-vous d'avoir :

- **Bibliothèques GTK** : Bibliothèques de développement GTK 2, GTK 3 et GTK 4
- **Git** : Pour cloner le dépôt
- **Compilateur Sass** : `sassc` (recommandé) ou `dart-sass`
- **Système Linux** : Toute distribution avec un environnement de bureau basé sur GTK (GNOME, Cinnamon, XFCE, Budgie, MATE, etc.)
- **Espace Disque** : Environ 50MB d'espace libre

### Installer les dépendances (Ubuntu/Debian) :
```bash
sudo apt install git sassc gtk2-engines-murrine gtk2-engines-pixbuf
```

### Installer les dépendances (Fedora) :
```bash
sudo dnf install git sassc gtk-murrine-engine gtk2-engines
```

### Installer les dépendances (Arch) :
```bash
sudo pacman -S git sassc gtk-engine-murrine gtk-engines
```

## Démarrage Rapide

La façon la plus rapide de commencer :

```bash
# Installation de base
./install.sh

# Installation complète avec toutes les corrections et options
./install.sh --update -l -f --dock

# Appliquer le thème
./scripts/apply.sh
```

### Commandes Courantes en Une Ligne

```bash
# Cloner et installer en une seule commande
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git && cd Hentai-Senpai-GTK-Theme && ./install.sh -l -f --dock

# Mettre à jour l'installation existante
cd Hentai-Senpai-GTK-Theme && git pull && ./install.sh --update -l -f
```

## Options d'Installation

| Option | Description |
|--------|-------------|
| `--update` | Mettre à jour/réinstaller le thème (préserve les personnalisations) |
| `-l, --libadwaita` | Corriger le thème des applications GTK4/libadwaita |
| `-f, --flatpak` | Corriger le thème des applications Flatpak en sandbox |
| `--dock [TYPE]` | Appliquer le thème du dock (transparent, solide ou flou) |
| `-w, --wallpapers` | Installer et appliquer les fonds d'écran du thème |
| `-d, --dest DIR` | Répertoire d'installation personnalisé (par défaut : ~/.themes) |
| `-t, --theme VARIANTE` | Installer une variante de couleur spécifique |
| `-c, --color VARIANTE` | Installer une couleur d'accent spécifique |
| `-s, --size TAILLE` | Installer une variante de taille spécifique (standard, compact) |
| `-h, --help` | Afficher le message d'aide détaillé |

### Exemples :

```bash
# Installer avec dock transparent et toutes les corrections
./install.sh -l -f --dock transparent

# Installer dans le répertoire système
sudo ./install.sh -d /usr/share/themes

# Installer uniquement la variante sombre avec accent bleu
./install.sh -t dark -c blue
```

## Problèmes Courants

### Le thème ne s'applique pas ?
- **Utilisateurs GNOME** : Activez l'extension "Thèmes utilisateur" dans les Extensions GNOME
- **Autres ED** : Assurez-vous d'avoir un moteur de thème compatible installé
- Essayez de vous déconnecter et reconnecter, ou redémarrez votre environnement de bureau

### Les applications Flatpak n'ont pas de thème ?
Exécutez le script d'installation avec le drapeau `--flatpak` :
```bash
./install.sh -f
```

### Les applications GTK4/libadwaita ont l'air différentes ?
Appliquez la correction libadwaita :
```bash
./install.sh -l
```

### Icônes manquantes ?
Installez l'un de ces thèmes d'icônes recommandés :
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Tela Icon Theme](https://github.com/vinceliuice/Tela-icon-theme)
- [Nordic Icon Theme](https://github.com/EliverLara/Nordic)

## Fonctionnalités

- **Couleurs Nord Sombres et Élégantes** : Basé sur la palette de couleurs Nord populaire pour une expérience de visualisation confortable
- **Principes du Material Design** : Interface moderne et épurée suivant les directives Material Design de Google
- **Support Multi-DE** : Fonctionne avec GNOME, Cinnamon, XFCE, Budgie, MATE et autres environnements de bureau basés sur GTK
- **Support GTK Complet** : Couvre GTK 2, GTK 3, GTK 4, GNOME Shell et décorations de fenêtres
- **Support Moderne GTK4/libadwaita** : Compatibilité totale avec les applications GTK4 les plus récentes
- **Prêt pour Flatpak** : Thématise les applications Flatpak en sandbox de manière intégrée
- **Personnalisable** : Multiples variantes de couleurs, tailles et couleurs d'accent disponibles
- **Thèmes de Dock** : Stylisation optionnelle de dock transparent, solide ou floue
- **Collection de Fonds d'Écran** : Fonds d'écran sélectionnés qui s'harmonisent parfaitement avec le thème

## Contribuer

Nous accueillons les contributions de la communauté ! Voici comment vous pouvez aider :

- **Vous avez trouvé un bug ?** [Signalez-le sur GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) - Veuillez inclure des captures d'écran et les détails du système
- **Vous avez une suggestion ?** [Ouvrez une Discussion GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions) - Partagez vos idées d'améliorations
- **Vous voulez aider ?** Consultez notre [Guide de Contribution](Contribution) - Apprenez comment soumettre des pull requests, signaler des bugs et contribuer au code

## Liens Rapides

- [Guide d'Installation](Guide-d-Installation) - Instructions d'installation détaillées
- [Résolution de Problèmes](Resolution-de-Problemes) - Solutions aux problèmes courants
- [Personnalisation](Personnalisation) - Comment personnaliser le thème
- [Palette de Couleurs](Palette-de-Couleurs) - Référence des couleurs du thème
- [Contribution](Contribution) - Comment contribuer au projet

## Voir sur GitHub

[Voir sur GitHub](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme)
