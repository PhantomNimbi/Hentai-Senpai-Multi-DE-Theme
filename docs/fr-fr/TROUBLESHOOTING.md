# Résolution de Problèmes

<div align="right" style="margin-bottom: 20px;">
  <details>
    <summary style="background: #2E3440; color: #D8DEE9; border: 1px solid #4C566A; border-radius: 6px; padding: 8px 16px; cursor: pointer; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; list-style: none;">🌐 Langue</summary>
    <div style="margin-top: 10px; padding: 12px; background: #3B4252; border: 1px solid #4C566A; border-radius: 6px; text-align: right;">
      <div style="margin-bottom: 6px;"><a href="Troubleshooting" style="color: #88C0D0; text-decoration: none;">🇺🇸 English</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-pt-br" style="color: #88C0D0; text-decoration: none;">🇧🇷 Português</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-es-es" style="color: #88C0D0; text-decoration: none;">🇪🇸 Español</a></div>
      <div style="margin-bottom: 6px;"><a href="Resolution-de-Problemes" style="color: #88C0D0; text-decoration: none;">🇫🇷 Français</a></div>
      <div style="margin-bottom: 6px;"><a href="Fehlerbehebung" style="color: #88C0D0; text-decoration: none;">🇩🇪 Deutsch</a></div>
      <div style="margin-bottom: 6px;"><a href="Risoluzione-Problemi" style="color: #88C0D0; text-decoration: none;">🇮🇹 Italiano</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-ja-jp" style="color: #88C0D0; text-decoration: none;">🇯🇵 日本語</a></div>
      <div style="margin-bottom: 6px;"><a href="Troubleshooting-zh-cn" style="color: #88C0D0; text-decoration: none;">🇨🇳 中文</a></div>
      <div><a href="Ustranenie-nepoladok" style="color: #88C0D0; text-decoration: none;">🇷🇺 Русский</a></div>
    </div>
  </details>
</div>

Problèmes courants et solutions pour le thème GTK Hentai-Senpai.

## Table des Matières

- [Le thème ne s'applique pas](#le-thème-ne-sapplique-pas)
- [Les icônes ne s'affichent pas correctement](#les-icônes-ne-saffichent-pas-correctement)
- [Les applications Flatpak ne sont pas thémées](#les-applications-flatpak-ne-sont-pas-thémées)
- [Erreurs de compilation](#erreurs-de-compilation)
- [Les applications GTK4/libadwaita ont un aspect différent](#les-applications-gtk4libadwaita-ont-un-aspect-différent)
- [Problèmes de performance](#problèmes-de-performance)
- [Obtenir de l'aide](#obtenir-de-laide)

## Le thème ne s'applique pas

### Problème
Le thème n'apparaît pas dans les paramètres ou ne s'applique pas après la sélection.

### Solutions

1. **Vérifiez l'emplacement d'installation :**
   ```bash
   ls ~/.themes/
   ls /usr/share/themes/
   ```

2. **Vérifiez l'installation correcte :**
   ```bash
   # Devrait afficher les fichiers du thème
   ls ~/.themes/Hentai-Senpai*/
   ```

3. **Redémarrez votre session :**
   - Déconnectez-vous et reconnectez-vous
   - Ou redémarrez l'environnement de bureau

4. **Pour GNOME - Vérifiez l'extension User Themes :**
   ```bash
   gnome-extensions list | grep user-theme
   ```
   Si non activée :
   ```bash
   gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
   ```

## Les icônes ne s'affichent pas correctement

### Problème
Les icônes apparaissent cassées ou comme des icônes système par défaut.

### Solutions

1. **Installez un thème d'icônes compatible :**
   - Recommandé : [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme), ou [Nordic](https://github.com/EliverLara/Nordic)

2. **Vérifiez l'installation du thème d'icônes :**
   ```bash
   ls ~/.icons/  # ou /usr/share/icons/
   ```

3. **Appliquez le thème d'icônes** dans les paramètres de votre environnement de bureau.

## Les applications Flatpak ne sont pas thémées

### Problème
Les applications Flatpak utilisent le thème Adwaita par défaut au lieu de Hentai-Senpai.

### Solutions

1. **Accordez à Flatpak l'accès aux thèmes :**
   ```bash
   flatpak override --filesystem=$HOME/.themes
   sudo flatpak override --filesystem=/usr/share/themes/
   ```

2. **Installez le paquet de thème Flatpak :**
   ```bash
   ./install.sh -f
   ```

3. **Définissez le thème GTK pour Flatpak :**
   ```bash
   flatpak override --env=GTK_THEME=Hentai-Senpai
   ```

4. **Redémarrez les applications Flatpak** pour que les changements prennent effet.

## Erreurs de compilation

### Problème
Erreurs pendant l'installation ou la compilation du thème.

### Solutions

1. **Installez le compilateur Sass :**
   ```bash
   # Debian/Ubuntu
   sudo apt install sassc
   
   # Fedora
   sudo dnf install sassc
   
   # Arch
   sudo pacman -S sassc
   ```

2. **Vérifiez les dépendances manquantes :**
   ```bash
   # Vérifiez que sassc est installé
   which sassc
   sassc --version
   ```

3. **Nettoyez et recompilez :**
   ```bash
   rm -rf ~/.themes/Hentai-Senpai*
   ./install.sh
   ```

## Les applications GTK4/libadwaita ont un aspect différent

### Problème
Les applications GTK4 ou libadwaita ne correspondent pas parfaitement au thème.

### Solutions

1. **Activez le lien libadwaita :**
   ```bash
   ./install.sh -l
   ```

2. **Note :** Les applications GTK4/libadwaita ont un support de théming limité par conception. Certaines différences visuelles sont attendues.

## Problèmes de performance

### Problème
Le système semble plus lent après l'application du thème.

### Solutions

1. **Désactivez les animations** (si désiré) :
   - GNOME : `gsettings set org.gnome.desktop.interface enable-animations false`

2. **Vérifiez une utilisation élevée du CPU** par les processus du thème.

3. **Utilisez une variante plus légère** si disponible.

## Obtenir de l'aide

Si votre problème n'est pas listé ici :

1. **Recherchez les problèmes existants :**
   [GitHub Issues](https://github.com/PhantomNimbi/Hentai-Senpai-GTK-Theme/issues)

2. **Créez un nouveau problème** avec :
   - Votre distribution et version
   - Environnement de bureau et version
   - Étapes pour reproduire le problème
   - Captures d'écran (si applicable)
   - Messages d'erreur (s'il y en a)

3. **Consultez le [Guide d'Installation](Guide-d-Installation)** pour les instructions d'installation correctes.
