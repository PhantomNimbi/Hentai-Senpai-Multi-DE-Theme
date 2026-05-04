## 🐛 Q&A - Help & Troubleshooting

Get help with issues, errors, or problems you're experiencing with the theme.

### Before Posting
1. **Search existing discussions** - Your issue might already be solved
2. **Check the [Troubleshooting Guide](../../wiki/Troubleshooting)** - Common solutions
3. **Try basic fixes:**
   - Log out and log back in
   - Restart your desktop environment
   - Verify installation location

### Information to Include
When asking for help, please provide:

```markdown
## Issue Description
[Clear description of the problem]

## System Information
- **OS/Distro:** [e.g., Ubuntu 22.04, Fedora 36]
- **Desktop Environment:** [e.g., GNOME 42, Cinnamon 5.4]
- **Theme Version:** [e.g., 1.0.0 or git commit]
- **Installation Method:** [e.g., install.sh, manual]

## Steps to Reproduce
1. Step one
2. Step two
3. ...

## Expected Behavior
[What should happen]

## Actual Behavior
[What actually happens]

## Screenshots
[If applicable, attach screenshots]

## Logs/Error Messages
```
[Paste any relevant error messages]
```
```

### Common Quick Fixes

**Theme not applying:**
- Check if theme is in `~/.themes/` or `/usr/share/themes/`
- Restart session
- Enable User Themes extension (GNOME)

**Icons not showing:**
- Install a compatible icon theme (Papirus, Tela, Nordic)
- Apply icon theme in settings

**GTK4 apps not themed:**
- Run `./install.sh -l` for libadwaita fix
- Note: Some GTK4 apps have limited theming support

### Be Patient
Community members help when they can. If no one responds:
- Wait 24-48 hours
- Bump your post with additional information
- Consider opening an [Issue](../../issues) if it's a bug
