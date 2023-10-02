resource "azurerm_resource_group" "storage" {
    name     = "storage"
    location = "Central US"
}

resource "azurerm_container_registry" "acr" {
    name = "sindel-acr"
    resource_group_name = azurerm_resource_group.storage.name
    location = azurerm_resource_group.storage.location
    sku = "Basic"
    tags = { Environment = "Test", Owner = "Adrian Balfour", Application = "Shared Infrastructure" }
}