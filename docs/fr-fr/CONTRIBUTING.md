# Contribution

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Langue</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Contributing" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribution" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Mitwirken" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Contribuire" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Contributing-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Uchastie" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Merci de votre intérêt pour contribuer au thème GTK Hentai-Senpai ! 🎉

## Table des Matières

- [Comment Contribuer](#comment-contribuer)
- [Signaler des Problèmes](#signaler-des-problèmes)
- [Style de Code](#style-de-code)
- [Documentation](#documentation)
- [Traductions](#traductions)
- [Configuration du Développement](#configuration-du-développement)

## Comment Contribuer

Il existe de nombreuses façons de contribuer à ce projet :

1. **Signaler des bogues** - Vous avez trouvé un problème ? Faites-le nous savoir !
2. **Suggérer des fonctionnalités** - Vous avez une idée ? Nous serions ravis de l'entendre !
3. **Soumettre des corrections** - Les améliorations de code sont toujours les bienvenues
4. **Améliorer la documentation** - Aidez à rendre la documentation plus claire
5. **Traduire** - Aidez à rendre le thème accessible mondialement
6. **Partager** - Faites passer le mot sur le thème

### Flux de Contribution

1. **Fork le dépôt** sur GitHub
2. **Créez une nouvelle branche** pour votre fonctionnalité/correction :
   ```bash
   git checkout -b feature/ma-nouvelle-fonctionnalite
   # ou
   git checkout -b fix/description-du-probleme
   ```
3. **Apportez vos modifications** avec des commits clairs et ciblés
4. **Testez vos modifications** soigneusement
5. **Soumettez une Pull Request** avec une description claire

## Signaler des Problèmes

### Avant de Signaler

- [ ] Recherchez les [problèmes existants](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues) pour éviter les doublons
- [ ] Vérifiez si le problème existe dans la dernière version
- [ ] Essayez d'isoler le problème

### Créer un Rapport de Bogue

Incluez les informations suivantes :

| Champ | Description |
|-------|-------------|
| **Titre** | Titre clair et descriptif |
| **Description** | Description détaillée du problème |
| **Étapes pour Reproduire** | Étapes numérotées pour recréer le bogue |
| **Comportement Attendu** | Ce qui devrait se passer |
| **Comportement Actuel** | Ce qui se passe réellement |
| **Captures d'écran** | Preuves visuelles (si applicable) |
| **Infos Système** | OS, DE/WM, version GTK |

### Exemple de Modèle de Rapport de Bogue

```markdown
**Description :**
Le thème ne s'applique pas aux applications GTK4

**Étapes pour Reproduire :**
1. Installez le thème avec `./install.sh`
2. Ouvrez une application GTK4 (par exemple, Éditeur de texte GNOME)
3. Observez le style Adwaita par défaut

**Attendu :**
L'application devrait utiliser le thème Hentai-Senpai

**Actuel :**
L'application utilise le thème Adwaita par défaut

**Système :**
- OS : Ubuntu 22.04
- DE : GNOME 42
- GTK : 4.6
```

## Style de Code

### CSS/Style

- Utilisez 2 espaces pour l'indentation
- Regroupez les propriétés liées ensemble
- Utilisez des noms de variables significatifs
- Commentez les sections complexes

Exemple :
```css
/* Style du bouton principal */
button.primary {
  background-color: @accent_color;
  color: @fg_color;
  border-radius: 6px;
  padding: 8px 16px;
  
  /* État de survol */
  &:hover {
    background-color: @accent_hover_color;
  }
}
```

### Scripts Shell

- Utilisez le shebang `#!/bin/bash`
- Mettez toutes les variables entre guillemets : `"$variable"`
- Utilisez des noms de fonctions significatifs
- Ajoutez des commentaires pour la logique complexe

### Messages de Commit

Suivez le format des commits conventionnels :

```
type(scope): sujet

corps (optionnel)

pied de page (optionnel)
```

**Types :**
- `feat` : Nouvelle fonctionnalité
- `fix` : Correction de bogue
- `docs` : Changements de documentation
- `style` : Changements de style de code (formatage)
- `refactor` : Refactoring de code
- `test` : Ajout ou mise à jour de tests
- `chore` : Tâches de maintenance

**Exemples :**
```
feat(gtk3): ajouter le support des coins arrondis
fix(install): résoudre le problème de chemin sur Fedora
docs(readme): mettre à jour les instructions d'installation
```

## Documentation

### Améliorer la Documentation

Les améliorations de documentation sont très appréciées ! Vous pouvez :

- Corriger les fautes de frappe et la grammaire
- Ajouter des exemples et des captures d'écran
- Clarifier les sections confuses
- Ajouter des informations manquantes
- Traduire dans d'autres langues

### Structure de la Documentation

```
docs/
├── INSTALLATION.md      # Guide d'installation
├── TROUBLESHOOTING.md   # Résolution de problèmes
├── CUSTOMIZATION.md     # Guide de personnalisation
├── COLOR_PALETTE.md     # Référence des couleurs
└── CONTRIBUTING.md      # Ce fichier
```

### Ajouter des Captures d'écran

Lors de l'ajout de documentation visuelle :

1. Utilisez le format PNG pour les captures d'écran
2. Gardez les tailles de fichier raisonnables (< 500 Ko)
3. Utilisez des noms de fichiers descriptifs
4. Concentrez-vous sur la fonctionnalité spécifique

## Traductions

### Traduire la Documentation

Pour ajouter une traduction dans une nouvelle langue :

1. **Copiez les fichiers anglais :**
   ```bash
   cp docs/INSTALLATION.md docs/INSTALLATION-fr.md
   ```

2. **Traduisez le contenu** dans le nouveau fichier

3. **Mettez à jour la barre de traduction** dans le flux de travail :
   - Modifiez `.github/workflows/generate-wiki.yml`
   - Ajoutez la nouvelle langue à la barre de traduction de Home.md

4. **Codes de langue supportés :**
   | Code | Langue |
   |------|--------|
   | `pt` | Portugais |
   | `es` | Espagnol |
   | `fr` | Français |
   | `de` | Allemand |
   | `it` | Italien |
   | `ja` | Japonais |
   | `zh` | Chinois |

### Conseils de Traduction

- Gardez les termes techniques en anglais s'il n'y a pas de traduction directe
- Maintenez la même structure markdown
- Mettez à jour les liens pour pointer vers les pages traduites
- Testez le rendu avant de soumettre

## Configuration du Développement

### Prérequis

```bash
# Installer les outils requis
sudo apt install git sassc inkscape optipng
```

### Compilation depuis les Sources

```bash
# Cloner le dépôt
git clone https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Installer les dépendances
# (voir section Prérequis ci-dessus)

# Compiler le thème
./install.sh

# Tester localement
./apply-theme.sh
```

### Structure du Projet

```
Hentai-Senpai-GTK-Theme/
├── src/                    # Fichiers sources
│   ├── gtk-2.0/           # Thème GTK2
│   ├── gtk-3.0/           # Thème GTK3
│   ├── gtk-4.0/           # Thème GTK4
│   ├── gnome-shell/       # Thème GNOME Shell
│   ├── cinnamon/          # Thème Cinnamon
│   ├── xfwm4/             # Thème XFWM
│   └── metacity-1/        # Thème Metacity
├── scripts/               # Scripts de compilation
├── install.sh             # Installateur principal
└── docs/                  # Documentation (cette branche)
```

## Questions ?

- **Questions générales :** [GitHub Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- **Rapports de bogues :** [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)
- **Contact direct :** Ouvrez un problème avec l'étiquette `question`

## Code de Conduite

- Soyez respectueux et constructif
- Concentrez-vous sur le problème, pas sur la personne
- Acceptez la critique constructive avec grâce
- Aidez à créer une communauté accueillante

Merci de contribuer ! 💜
