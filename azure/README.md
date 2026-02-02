# Azure DevOps Flox Environment

Comprehensive Azure cloud and DevOps tools.

## Packages

- Azure CLI (`az`)
- Azure Functions Core Tools
- Terraform & Terragrunt
- Kubernetes tools (`kubectl`, `helm`, `k9s`)

## Usage

```bash
flox activate

# Azure
az login
az account show

# Terraform
terraform init
terragrunt plan

# Kubernetes
kubectl get pods
k9s
```

## Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `AZURE_TF_RESOURCE_GROUP` | `flox` | Default resource group |
| `AZURE_TF_LOCATION` | `eastus` | Default Azure region |
