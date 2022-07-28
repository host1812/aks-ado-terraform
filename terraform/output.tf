output "vm_public_ip_address" {
  value = azurerm_public_ip.af-vm-pip.ip_address
}

output "aks_ingress_public_ip_address" {
  value = azurerm_public_ip.af-aks-ingress-pip.ip_address
}
