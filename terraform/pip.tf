resource "azurerm_public_ip" "af-vm-pip" {
  name                = "af-vm-pip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}
