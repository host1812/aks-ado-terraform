resource "azurerm_linux_virtual_machine" "af-vm" {
  name                = "af-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_F2"
  admin_username      = "host1812"

  network_interface_ids = [
    azurerm_network_interface.af-nic.id,
  ]

  custom_data = base64encode(templatefile("./scripts/dev-vm-cloud-init.yaml"))

  admin_ssh_key {
    username   = "host1812"
    public_key = file("~/.ssh/host1812_terraform_vms.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}
