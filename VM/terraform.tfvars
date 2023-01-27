# Resource group
rg_name = "rg-jenkins"
rg_location = "eastus2"
rg_tag_grp = "6"
rg_tag_diplomado = "mmichea"
# Public ip
pip_name = "public-ip"
pip_allocation_method = "Static"
# Virtual network
vnet_name = "vnet-jenkins"
vnet_address_space = [ "10.0.0.0/16" ]
# Subnet
subnet_name = "internal"
subnet_address_prefixes = [ "10.0.2.0/24" ]
# Network interface
netinter_name = "networkinterface"
netinter_ipconf_name = "internal"
netinter_ipconf_private_ip_address_allocation = "Dynamic"
# Virtual machine
vm_name = "jenkins-machine"
vm_size = "Standard_B1s"
vm_computer_name = "hostname"
vm_admin_username = "jenkinsadmin"
vm_admin_password = "Jenkins.2023"
vm_disable_password_authentication = false
vm_osdisk_caching = "ReadWrite"
vm_osdisk_storage_account_type = "Standard_LRS"
vm_sir_publisher = "Canonical"
vm_sir_offer = "UbuntuServer"
vm_sir_sku = "16.04-LTS"
vm_sir_version = "latest"