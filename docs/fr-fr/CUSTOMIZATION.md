# Personnalisation

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Langue</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Customization" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Personnalisation" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Anpassung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Personalizzazione" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Customization-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Nastrojka" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Comment personnaliser le thème GTK Hentai-Senpai selon vos préférences.

## Table des Matières

- [Variantes de Couleurs](#variantes-de-couleurs)
- [Personnalisation Manuelle](#personnalisation-manuelle)
- [Créer des Variantes Personnalisées](#créer-des-variantes-personnalisées)
- [Remplacements Utilisateur](#remplacements-utilisateur)
- [Ajustements pour l'Environnement de Bureau](#ajustements-pour-lenvironnement-de-bureau)

## Variantes de Couleurs

Le thème est livré avec différentes options de couleurs. Utilisez le script d'installation pour sélectionner les variantes :

```bash
# Lister les variantes disponibles
./install.sh --help
```

### Variantes Disponibles

| Variante | Description | Idéal Pour |
|----------|-------------|------------|
| `default` | Nord sombre standard | Usage général |
| `blackness` | Arrière-plan noir plus profond | Écrans OLED |

## Personnalisation Manuelle

### Modifier les Fichiers du Thème

Modifiez directement les fichiers CSS dans votre installation du thème :

```
~/.themes/Hentai-Senpai/
├── gtk-2.0/gtkrc          # Configuration GTK2
├── gtk-3.0/gtk.css        # Styles GTK3
├── gtk-4.0/gtk.css        # Styles GTK4
└── gnome-shell/gnome-shell.css  # Styles GNOME Shell
```

**⚠️ Avertissement :** Les modifications directes seront perdues lors de la mise à jour du thème. Utilisez les [Remplacements Utilisateur](#remplacements-utilisateur) pour des changements persistants.

### Variables CSS Clés

Variables courantes que vous pouvez modifier :

```css
/* Couleurs d'arrière-plan */
@define-color bg_color #2E3440;
@define-color fg_color #D8DEE9;

/* Couleurs d'accent */
@define-color accent_color #88C0D0;
@define-color accent_bg_color #81A1C1;
```

## Créer des Variantes Personnalisées

Pour créer votre propre variante de couleur :

1. **Copiez les fichiers sources :**
   ```bash
   cp -r src src-custom
   ```

2. **Modifiez les définitions de couleurs :**
   - Ouvrez `src-custom/gtk-3.0/gtk.css`
   - Modifiez les variables de couleur en haut

3. **Recompilez le thème :**
   ```bash
   ./install.sh -d ~/.themes -n Ma-Variante-Personnalisee
   ```

## Remplacements Utilisateur

Créez des personnalisations persistantes qui survivent aux mises à jour du thème.

### Remplacements GTK3

Créez ou modifiez :
```bash
~/.config/gtk-3.0/gtk.css
```

Exemple :
```css
/* Rendre tous les boutons arrondis */
button {
    border-radius: 8px;
}

/* Changer la couleur de sélection */
*:selected {
    background-color: #BF616A;
}
```

### Remplacements GTK4

Créez ou modifiez :
```bash
~/.config/gtk-4.0/gtk.css
```

Exemple :
```css
/* Padding plus grand pour GTK4 */
button {
    padding: 8px 16px;
}
```

## Ajustements pour l'Environnement de Bureau

### Ajustements GNOME

Installez GNOME Tweaks pour des options supplémentaires :

```bash
# Debian/Ubuntu
sudo apt install gnome-tweaks

# Fedora
sudo dnf install gnome-tweaks

# Arch
sudo pacman -S gnome-tweaks
```

**Paramètres recommandés :**
- **Thèmes > Applications héritées** : Hentai-Senpai
- **Thèmes > Shell** : Hentai-Senpai
- **Thèmes > Icônes** : Papirus-Dark ou Nordic

### Ajustements XFCE

1. Ouvrez **Paramètres > Apparence**
2. Définissez **Style** : Hentai-Senpai
3. Définissez **Icônes** : Votre thème d'icônes préféré
4. Allez dans **Gestionnaire de fenêtres > Style** : Hentai-Senpai

### Ajustements Cinnamon

1. Clic droit sur le bureau → **Paramètres du bureau**
2. Définissez **Thème du bureau** : Hentai-Senpai
3. Personnalisez les composants individuels :
   - **Contrôles** : Hentai-Senpai
   - **Bureau** : Votre préférence
   - **Icônes** : Votre préférence
   - **Pointeur de souris** : Votre préférence

## Personnalisation Avancée

### Changer la Disposition des Boutons de Fenêtre

Modifiez `metacity-theme-1.xml` pour les décorations de fenêtre :

```bash
~/.themes/Hentai-Senpai/metacity-1/metacity-theme-1.xml
```

### Personnaliser les Éléments du Shell

Pour les modifications du shell GNOME :

```bash
~/.themes/Hentai-Senpai/gnome-shell/gnome-shell.css
```

Modifications courantes :
- Hauteur du panneau
- Style des menus
- Apparence du calendrier

## Conseils pour de Meilleurs Résultats

1. **Utilisez des thèmes d'icônes cohérents** avec la palette de couleurs Nord
2. **Faites correspondre les couleurs du terminal** au thème (voir [Palette de Couleurs](Palette-de-Couleurs))
3. **Testez les changements progressivement** - modifiez une chose à la fois
4. **Gardez des sauvegardes** des configurations fonctionnelles

## Partager vos Personnalisations

Vous avez créé quelque chose de génial ? Envisagez de :
- Partager des captures d'écran dans les [Discussions](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/discussions)
- Soumettre des améliorations via [Pull Request](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/pulls)
