resource "azurerm_resource_group" "rg-jenkins" {
  name = var.rg_name
  location = var.rg_location
  tags = {
    "grupo" = var.rg_tag_grp
    "diplomado" = var.rg_tag_diplomado
  }
}

resource "azurerm_public_ip" "pip-jenkins" {
  name = var.pip_name
  resource_group_name = azurerm_resource_group.rg-jenkins.name
  location = azurerm_resource_group.rg-jenkins.location
  allocation_method = var.pip_allocation_method
}

resource "azurerm_virtual_network" "vnet-jenkins" {
    name = var.vnet_name
    address_space = var.vnet_address_space
    location = azurerm_resource_group.rg-jenkins.location
    resource_group_name = azurerm_resource_group.rg-jenkins.name  
}

resource "azurerm_subnet" "subnet-jenkins" {
    name = var.subnet_name
    resource_group_name = azurerm_resource_group.rg-jenkins.name
    virtual_network_name = azurerm_virtual_network.vnet-jenkins.name
    address_prefixes = var.subnet_address_prefixes
}

resource "azurerm_network_interface" "netinter-jenkins" {
    name = var.netinter_name
    location = azurerm_resource_group.rg-jenkins.location
    resource_group_name = azurerm_resource_group.rg-jenkins.name
    ip_configuration {
      name = var.netinter_ipconf_name
      subnet_id = azurerm_subnet.subnet-jenkins.id
      private_ip_address_allocation = var.netinter_ipconf_private_ip_address_allocation
      public_ip_address_id = azurerm_public_ip.pip-jenkins.id
    }  
}

resource "azurerm_linux_virtual_machine" "vm-jenkins" {
    name = var.vm_name
    resource_group_name = azurerm_resource_group.rg-jenkins.name
    location = azurerm_resource_group.rg-jenkins.location
    size = var.vm_size
    network_interface_ids = [ azurerm_network_interface.netinter-jenkins.id ]
    os_disk {
      caching = var.vm_osdisk_caching
      storage_account_type = var.vm_osdisk_storage_account_type
    }
    source_image_reference {
      publisher = var.vm_sir_publisher
      offer = var.vm_sir_offer
      sku = var.vm_sir_sku
      version = var.vm_sir_version
    }
    computer_name = var.vm_computer_name
    admin_username = var.vm_admin_username
    admin_password = var.vm_admin_password
    disable_password_authentication = var.vm_disable_password_authentication
}