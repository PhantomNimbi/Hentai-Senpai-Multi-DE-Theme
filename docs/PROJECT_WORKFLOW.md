# GitHub Projects Workflow

This document describes the comprehensive project management system for the Hentai-Senpai GTK Theme repository using GitHub Projects.

## 📊 Project Board Overview

We use GitHub Projects (Beta) to track all work across the repository. The project board provides a kanban-style interface with automated workflows.

### Access the Project Board

**URL:** `https://github.com/users/PhantomNimbi/projects/`

## 🏗️ Board Structure

### Default Views

1. **📋 Board View** - Classic kanban board with columns
2. **📅 Roadmap View** - Timeline view for planning
3. **📊 Table View** - Spreadsheet-style view with all fields
4. **🔍 Filtered Views**:
   - Bugs Only
   - Features Only
   - Current Sprint
   - My Items

### Status Columns

| Column | Description | Auto-assignment |
|--------|-------------|-----------------|
| 📥 **Backlog** | Unprioritized items waiting to be scheduled | New issues without sprint |
| 📝 **Todo** | Ready to work, scheduled for current sprint | Sprint-assigned issues |
| 🏃 **In Progress** | Currently being worked on | When PR opened or assigned |
| 👀 **In Review** | Ready for review/testing | PR marked ready for review |
| ✅ **Done** | Completed items | When issue/PR closed |
| 🗃️ **Archive** | Historical items (hidden by default) | After 30 days in Done |

## 🏷️ Label System

### Type Labels

Used to categorize the kind of work:

- `type: bug` - Something is broken
- `type: feature` - New functionality
- `type: task` - General task or to-do
- `type: documentation` - Documentation updates
- `type: refactor` - Code restructuring
- `type: testing` - Test-related work
- `type: translation` - i18n/l10n work
- `type: epic` - Large initiative tracker
- `type: meta` - Repository maintenance

### Priority Labels

Indicate urgency and importance:

- `priority: critical` - Blocking, fix immediately (red)
- `priority: high` - Important, do soon (orange)
- `priority: medium` - Normal priority (yellow)
- `priority: low` - Nice to have (green)

### Status Labels

Track workflow state:

- `status: todo` - Ready to start
- `status: in-progress` - Being worked on
- `status: in-review` - Under review
- `status: blocked` - Waiting on something
- `status: stale` - No activity for 30+ days
- `status: rolled-over` - Moved to next sprint

### Component Labels

Identify which part of the project:

- `component: gtk2` - GTK2 theme
- `component: gtk3` - GTK3 theme
- `component: gtk4` - GTK4 theme
- `component: gnome-shell` - GNOME Shell theme
- `component: cinnamon` - Cinnamon theme
- `component: xfwm` - XFWM theme
- `component: docs` - Documentation
- `component: scripts` - Installation scripts
- `component: ci` - CI/CD workflows

## 🔄 Automated Workflows

### 1. Auto-labeling (`.github/workflows/project-automation.yml`)

**Triggers:** New issue opened

**Actions:**
- Detects issue type from title/body
- Assigns priority based on keywords
- Adds appropriate component labels

**Keywords:**
- `bug`, `fix`, `error`, `crash` → `type: bug`
- `feature`, `add`, `request` → `type: feature`
- `docs`, `documentation` → `type: documentation`
- `translation`, `i18n` → `type: translation`
- `urgent`, `critical`, `blocking` → `priority: high`

### 2. Stale Issue Management

**Schedule:** Daily at midnight UTC

**Actions:**
- Marks issues as `status: stale` after 30 days of inactivity
- Closes stale issues after 7 additional days
- Ignores items with `priority: high` or `status: in-progress`

### 3. Sprint Management (`.github/workflows/sprint-management.yml`)

**Schedule:** Weekly on Mondays at 9 AM UTC

**Features:**
- Automatically creates new sprint milestones
- Generates sprint review reports
- Rolls over incomplete items
- Tracks completion metrics

**Manual Triggers:**
```bash
# Create new sprint
gh workflow run sprint-management.yml -f action=create

# Close current sprint
gh workflow run sprint-management.yml -f action=close

# Generate sprint report
gh workflow run sprint-management.yml -f action=review
```

### 4. CHANGELOG Integration (`.github/workflows/changelog-integration.yml`)

**Triggers:**
- Push to CHANGELOG.md
- Pull request affecting CHANGELOG
- Manual dispatch

**Features:**
- Creates/updates CHANGELOG tracking issue
- Posts comments on each CHANGELOG update
- Validates CHANGELOG format
- Checks translation sync status
- Generates release notes from CHANGELOG
- Creates draft releases automatically

**Manual Triggers:**
```bash
# Validate CHANGELOG format
gh workflow run changelog-integration.yml -f action=validate

# Generate release notes
gh workflow run changelog-integration.yml -f action=create-release-notes

# Sync with project board
gh workflow run changelog-integration.yml -f action=sync
```

**CHANGELOG Tracking Issue:**
A persistent tracking issue is maintained to:
- Monitor all CHANGELOG updates
- Track version progress
- Coordinate translation updates
- Link related PRs and issues

## 📅 Sprint Planning

### Sprint Structure

- **Duration:** 2 weeks (14 days)
- **Start:** Monday 9:00 AM UTC
- **End:** Sunday 11:59 PM UTC
- **Naming:** `Sprint N` (where N is the sprint number)

### Sprint Process

1. **Planning (Friday before sprint)**
   - Review backlog
   - Assign items to sprint
   - Set priorities
   - Estimate effort

2. **Execution (During sprint)**
   - Daily standups (optional)
   - Update issue status
   - Move items across board columns
   - Update progress in real-time

3. **Review (Last Friday)**
   - Review completed work
   - Demo features
   - Document learnings

4. **Retrospective (Last Friday)**
   - What went well?
   - What could improve?
   - Action items for next sprint

## 🎯 Issue Templates

We provide several templates for different work types:

### 1. 🐛 Bug Report (`bug_report.yml`)
- Structured bug reporting
- Environment capture
- Reproduction steps
- Auto-labels as `type: bug`

### 2. ✨ Feature Request (`feature_request.yml`)
- Feature description
- Use cases
- Acceptance criteria
- Auto-labels as `type: feature`

### 3. 📋 Task (`task.yml` - NEW!)
- General to-do items
- Priority selection
- Category classification
- Checklist support
- Time estimation

### 4. 🎯 Epic (`epic.yml` - NEW!)
- Large initiative tracking
- Related issues list
- Progress monitoring
- Stakeholder assignment

### 5. 📝 CHANGELOG Update (`changelog_update.yml` - NEW!)
- Document significant changes
- Track version updates
- Coordinate translations
- Release note preparation

### 6. ❓ Question (`question.md`)
- Support requests
- General inquiries

## 📈 Metrics & Reporting

### Sprint Metrics

Tracked automatically via workflow:

- **Velocity:** Issues completed per sprint
- **Completion Rate:** % of sprint items finished
- **Bug Ratio:** Bugs vs features ratio
- **Cycle Time:** Average time from start to completion

### Project Health

View in Project Insights:

- **Burndown Chart:** Work remaining over time
- **Cumulative Flow:** Items in each status over time
- **Issue Distribution:** By type, priority, component

## 🎨 Custom Fields

The project board uses these custom fields:

| Field | Type | Purpose |
|-------|------|---------|
| **Priority** | Single select | Critical/High/Medium/Low |
| **Size** | Single select | T-shirt sizing (XS/S/M/L/XL) |
| **Sprint** | Iteration | Sprint assignment |
| **Effort** | Number | Story points or hours |
| **Component** | Single select | Which part of project |
| **Started** | Date | When work began |
| **Completed** | Date | When work finished |

## 🔗 Integration Points

### With Issues
- Every issue can be added to the project
- Status updates sync both ways
- Labels automatically sync

### With Pull Requests
- PRs show linked issues
- Review status visible on board
- Draft PRs appear in "Todo"
- Ready PRs move to "In Review"

### With Milestones
- Sprints map to milestones
- Due dates drive roadmap view
- Completion tracked automatically

### With Releases
- Features linked to release milestones
- Track what's shipping when
- Generate changelogs

## 🚀 Best Practices

### Creating Issues

1. **Use templates** - Always use appropriate template
2. **Clear titles** - Start with action verb
3. **Good descriptions** - Include context and acceptance criteria
4. **Appropriate labels** - Let auto-labeling help, but review
5. **Right sizing** - Break epics into manageable tasks

### Managing Work

1. **Update status** - Keep board current
2. **Add updates** - Comment on progress
3. **Link related** - Connect issues/PRs
4. **Review regularly** - Check stale items weekly
5. **Close completed** - Don't leave done items open

### Sprint Planning

1. **Capacity planning** - Don't overcommit
2. **Mix of work** - Balance bugs, features, tech debt
3. **Clear priorities** - Know what's most important
4. **Buffer time** - Leave room for unexpected work
5. **Regular reviews** - Adapt plan as needed

## 🛠️ Maintenance

### Weekly Tasks

- [ ] Review stale issues
- [ ] Update sprint status
- [ ] Check blocked items
- [ ] Verify board accuracy

### Monthly Tasks

- [ ] Archive old completed items
- [ ] Review label usage
- [ ] Analyze metrics
- [ ] Update documentation

### Quarterly Tasks

- [ ] Process retrospective
- [ ] Adjust workflows
- [ ] Review label taxonomy
- [ ] Plan roadmap

## 📞 Getting Help

### For Workflow Issues

1. Check workflow runs: Actions tab → project-automation
2. Review logs for errors
3. Open issue with `type: meta` and `component: ci`

### For Board Access

Contact repository maintainers to be added to the project.

### Questions

Open a [Question issue](../../issues/new?template=question.md) or start a [Discussion](../../discussions).

## 📝 Changelog

- **2024-05-03** - Initial GitHub Projects workflow setup
- Added automated labeling
- Created sprint management
- Added task and epic templates
- Configured stale issue management
