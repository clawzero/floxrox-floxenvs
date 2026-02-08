# Azure Flox Environment

Comprehensive Azure cloud, DevOps, and Python development environment.

## Features

### Cloud Management
- **Azure CLI** (`az`) - Full Azure cloud management
- **Azure SDK for Python** - Azure-identity, azure-mgmt-* packages

### Infrastructure as Code
- **Terraform** - Infrastructure provisioning
- **Terragrunt** - Terraform wrapper for multi-environment deployments

### Kubernetes
- **kubectl** - Kubernetes CLI
- **helm** - Kubernetes package manager
- **k9s** - Terminal UI for Kubernetes

### Development
- **Python 3.12** - Latest stable Python
- **GitHub CLI** (`gh`) - GitHub repository management
- **git** with git-lfs - Version control

## Usage

```bash
flox activate

# Azure authentication
az-login
az account show

# Deploy infrastructure
terraform init
terraform plan
terragrunt plan

# Kubernetes management
kubectl get pods
k9s

# Python development
azure-venv
pip install azure-mgmt-compute

# GitHub operations
gh repo list
gh pr create --title "Fix" --body "Description"
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `AZURE_SUBSCRIPTION_ID` | Azure subscription ID |
| `AZURE_TENANT_ID` | Azure tenant ID |
| `AZURE_CLIENT_ID` | Service principal client ID |
| `AZURE_CLIENT_SECRET` | Service principal secret |
| `GH_TOKEN` | GitHub Personal Access Token |

## Aliases

| Alias | Command |
|-------|---------|
| `az-login` | `az login --service-principal ...` |
| `tf-init` | `terraform init` |
| `tf-plan` | `terraform plan` |
| `tg-plan` | `terragrunt plan` |
| `kx` | `kubectl` |
| `azure-venv` | Activate Python venv |

## Requirements

- Flox installed (flox.dev/get)
- Azure subscription with service principal
- GitHub Personal Access Token (for `gh` CLI)
