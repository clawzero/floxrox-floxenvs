# Azure DevOps Flox Environment

Comprehensive Azure cloud and DevOps tools with secure credential management.

## Features

- **Azure CLI** (`az`) - Azure cloud management
- **Azure Functions** - Function apps development
- **Terraform** - Infrastructure as Code
- **Terragrunt** - Terraform wrapper
- **Kubernetes** (`kubectl`, `helm`, `k9s`) - Container orchestration

## Usage

```bash
flox activate

# Authenticate with Azure
az-login

# List resources
az account list --output table

# Deploy infrastructure
terraform init
terragrunt plan

# Manage Kubernetes
kubectl get pods
k9s
```

## Credential Management

Credentials are stored securely in `~/.config/flox/azure-devops/session` or can be passed via environment variables:

- `AZURE_SUBSCRIPTION_ID`
- `AZURE_TENANT_ID`
- `AZURE_CLIENT_ID`
- `AZURE_ACCESS_TOKEN`

## Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `AZURE_TF_RESOURCE_GROUP` | `flox` | Default resource group |
| `AZURE_TF_LOCATION` | `eastus` | Default Azure region |
| `AZURE_VM_SIZE` | `Standard_B2s` | Default VM size |
