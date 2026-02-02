# GitHub Developer Environment

CLI tools for GitHub workflows and automation.

## Included

- `gh` - GitHub CLI
- `act` - GitHub Actions local runner
- `lazygit` - Terminal UI for git
- `delta` - Improved git diff
- `pygithub` - Python GitHub API library

## Usage

```bash
flox activate

# Authenticate
gh auth login

# Run actions locally
act

# Create PR
gh pr create --title "Fix bug" --body "Description"
```
