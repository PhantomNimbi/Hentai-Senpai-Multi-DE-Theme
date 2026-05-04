<div align="right" style="margin-bottom: 10px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 6px 12px; cursor: pointer; font-size: 13px; display: inline-flex; align-items: center; gap: 6px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Langue</summary>
    <div style="margin-top: 8px; padding: 10px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 4px;"><a href="../../CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 4px;"><a href="../pt-br/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 4px;"><a href="../es-es/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 4px;"><a href="../fr-fr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;"><strong>🇫🇷 Français</strong></a></div>
      <div style="margin-bottom: 4px;"><a href="../de-de/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 4px;"><a href="../it-it/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 4px;"><a href="../ja-jp/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 4px;"><a href="../ko-kr/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇰🇷 한국어</a></div>
      <div style="margin-bottom: 4px;"><a href="../zh-cn/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="../ru-ru/CHANGELOG.md" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

# Journal des Modifications

Tous les changements notables du projet Hentai-Senpai GTK Theme seront documentés dans ce fichier.

Le format est basé sur [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
et ce projet adhère à [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Non Publié]

### Ajouté

- **Modèles GitHub Issue**
  - Modèle de rapport de bug avec liste de vérification de l'environnement
  - Modèle de demande de fonctionnalité avec sections de cas d'utilisation
  - Modèle de question/assistance
  - Fichier de configuration avec liens de contact
- **Directives de Contribution**
  - `docs/CONTRIBUTING.md` complet comprenant :
    - Instructions de configuration de développement
    - Directives de style de code pour CSS et scripts shell
    - Conventions de messages de commit
    - Processus de pull request
    - Procédures de test
    - Directives communautaires
- **Documentation Améliorée**
  - Ajout de `docs/HOME.md` comme page d'atterrissage de documentation complète
  - Simplification de `docs/README.md` pour une navigation facile
  - Mise à jour de tous les fichiers de documentation avec formatage cohérent et références croisées
- **Support de Traduction**
  - Ajout d'une barre de traduction à tous les fichiers de documentation markdown
  - Support pour 9 langues : Anglais, Japonais, Espagnol, Français, Allemand, Chinois, Coréen, Russe, Portugais
- **Intégration des Médias Sociaux**
  - Boutons de partage pour Twitter/X, Reddit, Facebook, LinkedIn, Mastodon et Telegram
  - Badges de statut affichant la version, la licence, les étoiles, les contributeurs et les issues
- **Documentation Multilingue**
  - Restructuration des docs en dossiers basés sur les locales (en-us, pt-br, es-es, fr-fr, de-de, it-it, ja-jp, zh-cn, ru-ru)
  - Traductions complètes pour 9 langues
  - Menus déroulants de sélection de langue sur toutes les pages de documentation
  - Mise à jour du workflow GitHub Actions pour supporter les 9 langues
- **Page Galerie**
  - Création de Gallery.md présentant les aperçus du thème et les fonds d'écran
  - Affichage des images preview-1.png et preview-2.png
  - Affichage des 6 fonds d'écran disponibles
  - Disponible dans les 9 langues
  - Corrigé : Création effective des fichiers Gallery.md dans tous les dossiers de locale
  - Corrigé : Correction des attributions d'images d'aperçu (preview-2.png = Bureau, preview-1.png = Applications)
  - Corrigé : Correction de la description des fonds d'écran (minimalistes, couleurs monochromes, thèmes ecchi)
- **GitHub Discussions**
  - Création de catégories de discussion complètes : Général, Vitrine, Q&R, Idées, Développement, Annonces
  - Ajout de modèles de discussion pour chaque catégorie
  - Création de DISCUSSION_GUIDE.md avec instructions d'utilisation
  - Définition des meilleures pratiques et directives communautaires
  - Déplacement vers une branche `discussions` séparée pour la gestion des modèles
  - Création du workflow setup-discussions.yml pour générer des posts à partir des modèles

### Modifié

- **Structure de Documentation** : Passage d'une structure de fichiers plate à des dossiers basés sur les locales
- **Images d'Aperçu** : Suppression des images d'aperçu SVG, conservation uniquement des aperçus PNG
- **Workflow Wiki** : Mise à jour pour gérer la structure de documentation basée sur les locales avec 9 langues
- **Organisation des Scripts** : Renommage de `apply-theme.sh` en `apply.sh` et déplacement dans le répertoire `scripts/`
  - Mise à jour de toutes les références dans la documentation et le code
  - Consolidation de tous les scripts dans le répertoire `scripts/`

### Modifié

- **Restructuration de la Documentation** :
  - `docs/README.md` sert désormais d'index de navigation simple
  - `docs/HOME.md` fournit une vue d'ensemble complète de la documentation
  - Mise à jour de tous les liens internes de documentation pour cohérence
- **Améliorations du README** :
  - Ajout d'une barre de traduction de langue
  - Ajout de boutons de partage sur les réseaux sociaux
  - Ajout de badges de statut GitHub
  - Section de contribution améliorée avec lien vers les directives
- **Mises à Jour de Navigation** :
  - Ajout du Guide de Contribution à toute la navigation de documentation
  - Mise à jour des liens de pied de page dans tous les documents pour cohérence

### Corrigé

- Cohérence des liens de documentation dans tous les fichiers markdown
- Améliorations du formatage et de la clarté du guide d'installation
- Liens de référence croisée entre les fichiers de documentation

## [1.0.0] - 2026-05-03

### Ajouté

- **Version initiale** de Hentai-Senpai Theme
- Support complet du thème GTK :
  - GTK 2.0 avec style complet de widgets et ressources
  - GTK 3.0 avec thématisation CSS complète
  - GTK 4.0 avec CSS moderne et propriétés personnalisées
- Thème complet **GNOME Shell 40+** comprenant :
  - Style de panel avec support de transparence
  - Thématisation de l'aperçu et de la grille d'applications
  - Style des notifications et du calendrier
  - Menus système et popovers
  - Aperçus de fenêtres et alt-tab
- Support de l'environnement de bureau **Cinnamon** avec thématisation du panel et du menu
- Thème de gestionnaire de fenêtres **XFWM4**
- Support des décorations de fenêtre **Metacity**
- Intégration de la **palette de couleurs Nord** :
  - Arrière-plans **Polar Night** (`#2e3440`, `#3b4252`, `#434c5e`, `#4c566a`)
  - Couleurs de texte **Snow Storm** (`#d8dee9`, `#e5e9f0`, `#eceff4`)
  - Couleurs d'accent **Frost** (`#8fbcbb`, `#88c0d0`, `#81a1c1`, `#5e81ac`)
  - Couleurs sémantiques **Aurora** (`#bf616a`, `#d08770`, `#ebcb8b`, `#a3be8c`, `#b48ead`)
- Principes de **Material Design** :
  - Coins arrondis de 12px pour les boutons, cartes et entrées
  - Rayon de bordure de 20px pour les popovers
  - Cases à cocher et boutons radio circulaires (rayon 9999px)
  - Ombres d'élévation et effets de profondeur
  - Effets de ripple sur les éléments interactifs
- **Script d'installation** (`install.sh`) avec options complètes :
  - Fonctionnalité d'installation et de désinstallation
  - Capacité de mise à jour/réinstallation
  - Options de destination et de nom personnalisées
  - Correctif Libadwaita pour les applications GTK4
  - Correctif de thème Flatpak pour les applications sandbox
  - Style de thème de dock (variantes transparente et solide)
  - Installation de fonds d'écran
  - Vérification des dépendances avec auto-installation
  - Affichage des informations système et de compatibilité
- **Script d'application de thème** (`scripts/apply.sh`) pour l'activation automatique du thème
- **Thème de dock Plank transparent** avec intégration appropriée des couleurs Nord
- **Documentation complète** :
  - Guide d'installation avec options détaillées
  - Guide de dépannage pour les problèmes courants
  - Référence de palette de couleurs avec exemples d'utilisation
  - Guide de personnalisation pour personnaliser le thème
- **Collection de fonds d'écran** avec des designs inspirés de Nord

### Composants du Thème

| Composant | Description |
|-----------|-------------|
| **GTK 2.0** | Style complet de widgets avec ressources d'image |
| **GTK 3.0** | Thématisation CSS complète avec tous les widgets |
| **GTK 4.0** | CSS moderne avec propriétés personnalisées et variables |
| **GNOME Shell** | Thème complet de shell avec tous les éléments d'UI |
| **Cinnamon** | Thématisation du bureau et du panel |
| **XFWM4** | Décorations de fenêtre pour XFCE |
| **Metacity** | Décorations de fenêtre pour MATE et autres |
| **Plank** | Thème de dock transparent |

### Environnements de Bureau Supportés

- GNOME 40+
- Cinnamon 4.0+
- XFCE (avec xfwm4)
- Budgie 10.5+
- MATE 1.24+

[Non Publié]: https://github.com/owner/hentai-senpai-theme/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/owner/hentai-senpai-theme/releases/tag/v1.0.0
