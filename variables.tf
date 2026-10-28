variable "resource_group_name" {
    description = "The resource group name."
    type        = string
}

variable "ai-location" {
    description = "The Azure location where the AI Foundry will be created."
    type        = string
    default     = "eastus2"
}

variable "solution_name" {
    description = "Name of the solution/project"
    type        = string
}

variable "environment" {
    description = "Environment"
    type        = string
}

variable "public_network_access" {
    description = "Enable or Disable Public Network Access to the AI Services resource. Possible values are 'Enabled' or 'Disabled'."
    type        = string
    default     = "Disabled"
}
