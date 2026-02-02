# GitHub DevOps Flox Environment

GitHub CLI and developer tools for workflow automation.

## Features

- **GitHub CLI** (`gh`) - GitHub repository management
- **act** - GitHub Actions local runner
- **lazygit** - Terminal UI for Git
- **delta** - Improved git diff
- **git-lfs** - Large file support

## Usage

```bash
flox activate

# Authenticate with GitHub
gh auth login

# Create PR
gh pr create --title "Fix bug" --body "Description"

# Run GitHub Actions locally
act

# Git operations
lazygit
git diff | delta --navigate
```

## Credential Management

GitHub token stored in `~/.config/flox/github-devops/session` or via `GH_TOKEN` environment variable.

## Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `GIT_PAGER` | `delta --navigate` | Git pager |
| `GIT_EDITOR` | `vim` | Git editor |
