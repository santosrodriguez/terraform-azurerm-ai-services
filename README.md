# Azure AI Services Terraform Module

## Introduction
Terraform module to deploy an Azure AI Services (Cognitive Services) account with a standard naming convention and system-assigned managed identity.

## Usage

```hcl
module "ai_services" {
	source                = "caresource.pe.jfrog.io/shared-tfmodules-internal__ai/aiservices/azurerm"
	version               = "1.0.1"

	resource_group_name   = "rg-project-eastus2-dev-01"
	ai-location           = "eastus2"
	solution_name         = "project"
	environment           = "dev"
	public_network_access = "Disabled" 
}
```

This will create an AI Services resource with a name in the format:

`aif-<solution_name>-<ai-location>-<environment>-01`

## Inputs

| Name                  | Type   | Description                                                                 | Default     |
|-----------------------|--------|-----------------------------------------------------------------------------|-------------|
| resource_group_name   | string | Name of the existing resource group where AI Services will be deployed.    | n/a         |
| ai-location           | string | Azure region where AI Services will be created.                            | "eastus2"  |
| solution_name         | string | Name of the solution or project used in the resource name.                 | n/a         |
| environment           | string | Environment identifier (e.g. dev, int, prd).                               | n/a         |
| public_network_access | string | Enable or disable public network access ("Enabled" or "Disabled").        | "Disabled" |

## Outputs

| Name            | Description                     |
|-----------------|---------------------------------|
| ai_services_name | Name of the AI Services resource |

## Features

- Creates a single Azure AI Services (Cognitive Services) account.
- Enforces a standardized naming convention across environments.
- Configures a system-assigned managed identity.

## Requirements

- Terraform >= 1.4.0
- AzureRM provider >= 3.0
