# GitHub Developer Flox Environment

GitHub CLI and developer tools for workflow automation.

## Packages

- `gh` - GitHub CLI
- `act` - GitHub Actions local runner
- `lazygit` - Terminal UI for Git
- `delta` - Improved git diff
- `git` & `git-lfs`

## Usage

```bash
flox activate

# GitHub CLI
gh auth login
gh pr list
gh run watch

# Local Actions
act

# Git
lazygit
git diff | delta
```
