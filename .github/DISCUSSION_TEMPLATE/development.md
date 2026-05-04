<!--
  🔧 Development Template
  Use this template for technical discussions, contribution help, and development topics
-->

# 🔧 Development Discussions

<div align="center">

⚙️ **For Developers, Contributors, and Technical Minds** ⚙️

*Build, improve, and maintain the Hentai-Senpai theme*

</div>

---

## 🎯 Topics We Cover

| 🔧 Category | 💬 Discussion Type |
|-------------|-------------------|
| 🏗️ **Development Setup** | Environment configuration, dependencies |
| 📦 **Build Process** | Compilation, packaging, releases |
| 🏛️ **Code Architecture** | Structure, design patterns, refactoring |
| 🤝 **Contributions** | PR help, code review, getting started |
| 🧪 **Testing** | Test procedures, CI/CD, quality assurance |
| 🗺️ **Roadmap Planning** | Version planning, feature prioritization |
| 🐛 **Bug Investigation** | Deep dives into complex issues |
| ⚡ **Performance** | Optimization, speed improvements |

---

## 🚀 Getting Started

### 📋 New Developer Checklist

- [ ] **Forked the repository** 
- [ ] **Read [Contributing Guide](../../wiki/Contributing)**
- [ ] **Set up development environment**
- [ ] **Found a [good first issue](../../issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22)**
- [ ] **Joined this discussion!** 👋

### 🛠️ Quick Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/Hentai-Senpai-GTK-Theme.git
cd Hentai-Senpai-GTK-Theme

# Install dependencies (Ubuntu/Debian)
sudo apt install sassc inkscape optipng

# Make changes to scss files

# Build theme
./install.sh -d ~/.themes/

# Test changes
# (Apply theme and check results)
```

---

## 📝 Development Templates

### 🐛 Bug Investigation

```markdown
# 🔍 Investigating: [Bug Name]

## 🎯 Problem
[Clear description of the bug]

## 🧪 Investigation So Far
- [ ] Reproduced issue
- [ ] Checked related files
- [ ] Tested on multiple DEs

## 📁 Affected Files
```
/path/to/file1
/path/to/file2
```

## 💡 Hypothesis
[What you think is causing it]

## 🧪 Testing Results
| Test | Result | Notes |
|------|--------|-------|
| Test 1 | ✅/❌ | Notes |

## 🎯 Proposed Fix
[Your solution approach]
```

### 🚀 Contribution Proposal

```markdown
# 🚀 Proposal: [Feature/Fix Name]

## 🎯 What
[What you want to implement]

## 🤔 Why
[Why this is needed/beneficial]

## 🛠️ How
[Technical approach]

## 📋 Implementation Plan
- [ ] Step 1
- [ ] Step 2
- [ ] Step 3

## ❓ Questions for Maintainers
1. [Question about approach]
2. [Question about scope]
```

---

## 🏗️ Architecture Overview

```
Hentai-Senpai/
├── 📁 install.sh          # Main installer
├── 📁 lib-core.sh         # Core functions
├── 📁 scripts/
│   ├── 📁 apply.sh        # Theme applier
│   └── 📁 tweaks.sh       # Customization
├── 📁 src/
│   ├── 📁 sass/          # SCSS source files
│   ├── 📁 assets/        # Icons and graphics
│   └── 📁 resources/     # Theme resources
└── 📁 common/            # Generated theme files
```

### 🎨 Color System

| Variable | Description | File |
|----------|-------------|------|
| `$primary` | Main accent color | `_colors.scss` |
| `$background` | Background colors | `_colors.scss` |
| `$text` | Text colors | `_colors.scss` |

---

## 📚 Resources

### 📖 Documentation
- 📋 [Contributing Guide](../../wiki/Contributing)
- ⚙️ [Development Setup](../../wiki/Development-Setup)
- 🎨 [Code Style Guide](../../wiki/Code-Style)
- 🏗️ [Architecture Overview](../../wiki/Architecture)

### 🔗 External Resources
- 📘 [GTK CSS Properties](https://docs.gtk.org/gtk3/css-properties.html)
- 🎨 [Sass Documentation](https://sass-lang.com/documentation)
- 🐛 [GNOME Human Interface Guidelines](https://developer.gnome.org/hig/)

---

## 🏃 Active Development

### 📅 Current Sprint

*Check pinned discussions for current priorities*

### 🎯 Release Planning

| Version | Status | Focus |
|---------|--------|-------|
| v1.x | 🚧 In Progress | [Current focus] |
| v1.y | 📋 Planned | [Upcoming features] |

### 🧹 Code Quality Initiatives

- 🎯 Improving SCSS organization
- 🎯 Adding automated tests
- 🎯 Better documentation coverage

---

## 👥 Development Team

### 🏛️ Maintainers
- @PhantomNimbi - Project Owner

### ⭐ Core Contributors
*Recognition for major contributors*

---

## 💬 How to Ask for Help

### ✅ Good Questions

> 💬 **"I'm trying to add a new color variant. I've modified `_colors.scss` but the changes aren't showing. I ran `./install.sh` but it seems like the SCSS isn't compiling. Here's the error I'm getting: [paste error]. Any suggestions?"**

**Why this works:**
- ✓ Shows what you're trying to achieve
- ✓ Lists what you've already tried
- ✓ Includes specific error messages
- ✓ Asks a clear question

### ❌ Not-So-Good Questions

> 💬 **"Help, my build isn't working!!!"**

**Why this doesn't work:**
- ✗ No context about what you're doing
- ✗ No error messages
- ✗ No information about your setup

---

## 🏷️ Development Tags

Use these to categorize your discussion:

- `#setup` - Development environment issues
- `#build` - Build/compilation problems  
- `#architecture` - Code structure discussions
- `#pr-help` - Pull request assistance
- `#testing` - QA and testing topics
- `#roadmap` - Planning and priorities
- `#performance` - Optimization discussions

---

<div align="center">

**Ready to contribute? Let's build something awesome!** 🔧✨

*Questions? Tag @PhantomNimbi or any maintainer* 👋

</div>

---

## 🔗 Related Categories

- 💡 [Ideas](../ideas) - Feature suggestions to implement
- ❓ [Q&A](../q-a) - General troubleshooting
- 🐛 [Issues](../../issues) - Bug reports
- 📋 [Pull Requests](../../pulls) - Active contributions
