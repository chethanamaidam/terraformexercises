provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name = "techslate-rg"
    location = "uksouth"
    tags = {
          environment = "dev"
          source = "terraform"
    }
}