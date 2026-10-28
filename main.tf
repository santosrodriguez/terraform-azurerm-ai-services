resource "azurerm_ai_services" "example" {
  name                = "aif-${var.solution_name}-${var.ai-location}-${var.environment}-01"
  location            = var.ai-location
  resource_group_name = var.resource_group_name
  sku_name            = "S0"
  public_network_access = var.public_network_access
  identity {
    type = "SystemAssigned"
  }
}
