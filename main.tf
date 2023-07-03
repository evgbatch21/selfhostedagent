

provider "azurerm" {
  subscription_id = "1aa9e9b7-cb63-4f44-9677-d38184590405"
  features {}
}



# azure resource=>resource_group
resource "azurerm_resource_group" "ResourceGroup" {
  name = var.rg
  location = var.loc
}

# azure resource => storage_account
resource "azurerm_storage_account" "usecase2" {
  name                     = "storageactestone"
  resource_group_name      = azurerm_resource_group.ResourceGroup.name
  location                 = azurerm_resource_group.ResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

