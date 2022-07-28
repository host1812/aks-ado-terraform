resource "azurerm_public_ip" "af-vm-pip" {
  name                = "af-vm-pip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}

resource "azurerm_public_ip" "af-aks-ingress-pip" {
  name                = "af-aks-ingress-pip"
  resource_group_name = azurerm_kubernetes_cluster.aks.node_resource_group
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}
