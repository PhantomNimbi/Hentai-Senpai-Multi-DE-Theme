<!--
  ❓ Q&A / Help & Troubleshooting Template
  Use this template when you need help with issues or problems
-->

# ❓ Questions & Troubleshooting

<div align="center">

🆘 **Need Help? We've Got You Covered!** 🆘

*Get support from the community for any issues you're experiencing*

</div>

---

## 🚨 Before You Post

### 🔍 Step 1: Quick Self-Check

- [ ] **Searched discussions** - Your issue might already be solved!
- [ ] **Checked [Troubleshooting Guide](../../wiki/Troubleshooting)** - Common fixes
- [ ] **Tried the basics:**
  - 🔄 Log out and back in
  - 🔄 Restart your DE session
  - 🔄 Verify theme installation location

### ⚡ Quick Fixes

<details>
<summary>🎨 <strong>Theme not applying?</strong></summary>

- ✅ Check theme is in `~/.themes/` or `/usr/share/themes/`
- ✅ Restart your session
- ✅ Enable "User Themes" extension (GNOME only)
- ✅ Try: `gsettings set org.gnome.desktop.interface gtk-theme "Hentai-Senpai"`
</details>

<details>
<summary>🔣 <strong>Icons not showing?</strong></summary>

- ✅ Install compatible icon theme (Papirus, Tela, Nordic)
- ✅ Apply in your DE settings
- ✅ Check icon cache: `gtk-update-icon-cache`
</details>

<details>
<summary>🪟 <strong>GTK4 apps not themed?</strong></summary>

- ✅ Run: `./install.sh -l` for libadwaita support
- ✅ Note: Some GTK4 apps have limited theming support
- ✅ Flatpak apps need separate configuration
</details>

---

## 📝 Issue Report Template

**Copy and fill out this template for faster help:**

```markdown
## 🎯 Issue Summary
[One sentence describing the problem]

## 🖥️ System Information
| Component | Details |
|-----------|---------|
| **OS/Distro** | [e.g., Ubuntu 22.04, Fedora 38, Arch] |
| **Desktop Environment** | [e.g., GNOME 44, Cinnamon 5.8, XFCE 4.18] |
| **Theme Version** | [e.g., 1.2.0 or git commit hash] |
| **Installation Method** | [e.g., install.sh, manual, package manager] |

## 🔄 Steps to Reproduce
1. [First step]
2. [Second step]
3. [Third step]

## ✅ Expected Behavior
[What should happen?]

## ❌ Actual Behavior
[What's actually happening?]

## 📸 Screenshots
[Drag and drop images here - super helpful!]

## 📋 Logs/Error Messages
```
[Paste any relevant terminal output or error messages]
```

## 🧪 What I've Tried
- [ ] Restarted session
- [ ] Reinstalled theme
- [ ] Checked permissions
- [ ] Other: [describe]
```

---

## 🏷️ Common Tags

Use these tags to help others find and help with your issue:

- `#installation` - Setup problems
- `#gtk3` / `#gtk4` - Specific toolkit issues
- `#gnome` / `#cinnamon` / `#xfce` / `#mate` - DE-specific
- `#icons` - Icon theming issues
- `#libadwaita` - GTK4/libadwaita problems

---

## ⏱️ Response Expectations

| ⏰ Timeline | 📝 What to Expect |
|-------------|-------------------|
| **0-24h** | Community members check and respond |
| **24-48h** | BUMP your post with more info if needed |
| **48h+** | Consider opening a [GitHub Issue](../../issues) if it's a bug |

---

## 🙋 Need More Help?

- 📖 [Full Documentation](../../wiki)
- 🐛 [Report a Bug](../../issues/new?template=bug_report.md)
- 💬 [General Chat](../general)

---

<div align="center">

**Thanks for being patient!** 🙏

*Remember: The more details you provide, the faster we can help!* ⚡

</div>
