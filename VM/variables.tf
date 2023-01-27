# Resource group
variable "rg_name" {}
variable "rg_location" {}
variable "rg_tag_grp" {}
variable "rg_tag_diplomado" {}
# Public ip
variable "pip_name" {}
variable "pip_allocation_method" {}
# Virtual network
variable "vnet_name" {}
variable "vnet_address_space" {}
# Subnet
variable "subnet_name" {}
variable "subnet_address_prefixes" {}
# Network interface
variable "netinter_name" {}
variable "netinter_ipconf_name" {}
variable "netinter_ipconf_private_ip_address_allocation" {}
# Virtual machine
variable "vm_name" {}
variable "vm_size" {}
variable "vm_computer_name" {}
variable "vm_admin_username" {}
variable "vm_admin_password" {}
variable "vm_disable_password_authentication" {}
variable "vm_osdisk_caching" {}
variable "vm_osdisk_storage_account_type" {}
variable "vm_sir_publisher" {}
variable "vm_sir_offer" {}
variable "vm_sir_sku" {}
variable "vm_sir_version" {}