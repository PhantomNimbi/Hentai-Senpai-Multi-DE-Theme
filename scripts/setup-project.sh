#!/bin/bash
# GitHub Project Setup Script
# This script helps create and configure the GitHub Project for Hentai-Senpai

echo "🚀 GitHub Projects Setup Helper for Hentai-Senpai"
echo "=================================================="
echo ""

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed"
    echo "Please install it first: https://cli.github.com/"
    exit 1
fi

# Check authentication
if ! gh auth status &> /dev/null; then
    echo "❌ Not authenticated with GitHub CLI"
    echo "Run: gh auth login"
    exit 1
fi

REPO_OWNER="PhantomNimbi"
REPO_NAME="Hentai-Senpai-GTK-Theme"

echo "✅ GitHub CLI authenticated"
echo "📦 Repository: $REPO_OWNER/$REPO_NAME"
echo ""

echo "📋 Manual Setup Instructions:"
echo "=============================="
echo ""
echo "Since GitHub Projects cannot be auto-created via repository files,"
echo "please follow these steps to create the project:"
echo ""
echo "1. Go to: https://github.com/users/$REPO_OWNER/projects"
echo ""
echo "2. Click 'New project' button"
echo ""
echo "3. Select 'Table' as the template"
echo ""
echo "4. Enter project details:"
echo "   - Name: Hentai-Senpai GTK Theme"
echo "   - Description: Project board for tracking theme development, documentation, and releases"
echo "   - README: Link to docs/PROJECT_WORKFLOW.md"
echo ""
echo "5. Add to repository:"
echo "   - Go to project Settings → Manage access"
echo "   - Click 'Add repositories'"
echo "   - Select: $REPO_OWNER/$REPO_NAME"
echo ""
echo "6. Configure custom fields (Settings → Custom fields):"
echo ""
cat << 'FIELDS'
   Priority (Single select):
   - 🔴 Critical (color: #FF0000)
   - 🟠 High (color: #FF8C00)
   - 🟡 Medium (color: #FFD700)
   - 🟢 Low (color: #32CD32)

   Size (Single select):
   - XS (color: #C0C0C0)
   - S (color: #87CEEB)
   - M (color: #98FB98)
   - L (color: #FFB6C1)
   - XL (color: #DDA0DD)

   Component (Single select):
   - GTK2 (color: #8B4513)
   - GTK3 (color: #CD853F)
   - GTK4 (color: #D2691E)
   - GNOME Shell (color: #4B0082)
   - Cinnamon (color: #800080)
   - XFWM (color: #9370DB)
   - Documentation (color: #4169E1)
   - Scripts (color: #228B22)
   - CI/CD (color: #DC143C)

   Effort (Number): Story points or hours
   Started (Date): When work began
   Completed (Date): When work finished
FIELDS

echo ""
echo "7. Create views:"
echo "   - 📋 Board (Kanban view)"
echo "   - 📅 Roadmap (Timeline view)"
echo "   - 📊 Table (Table view with all fields)"
echo "   - 🐛 Bugs Only (Filtered by type: bug)"
echo "   - ✨ Features Only (Filtered by type: feature)"
echo ""
echo "8. Configure columns for Board view:"
echo "   - 📥 Backlog"
echo "   - 📝 Todo"
echo "   - 🏃 In Progress"
echo "   - 👀 In Review"
echo "   - ✅ Done"
echo ""
echo "9. Link project to repository:"
echo "   - Go to repository: https://github.com/$REPO_OWNER/$REPO_NAME"
echo "   - Click Projects tab"
echo "   - Click 'Link a project'"
echo "   - Select your newly created project"
echo ""
echo "10. Enable workflows (already configured in .github/workflows/):"
echo "    - project-automation.yml"
echo "    - sprint-management.yml"
echo "    - changelog-integration.yml"
echo ""
echo "📖 Full documentation: docs/PROJECT_WORKFLOW.md"
echo ""

# Try to open the project creation page
if command -v xdg-open &> /dev/null; then
    read -p "Open GitHub Projects page now? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        xdg-open "https://github.com/users/$REPO_OWNER/projects" &
    fi
elif command -v open &> /dev/null; then
    read -p "Open GitHub Projects page now? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open "https://github.com/users/$REPO_OWNER/projects"
    fi
fi

echo "✅ Setup instructions complete!"
echo ""
echo "💡 Tip: After creating the project, add this to the repository README:"
echo ""
echo "## 📊 Project Board"
echo ""
echo "Track our progress on the [GitHub Project Board](https://github.com/users/$REPO_OWNER/projects/X)."
echo ""
