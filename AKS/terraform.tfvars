rg_name = "diplo-mmichea-g6"
rg_location = "eastus2"
rg_group = 6
vnet_name = "mmichea-g6-vnet"
vnet_address_space = ["12.0.0.0/16"]
subnet_name = "internal"
subnet_address_prefixes = ["12.0.0.0/20"]
acr_name = "mmicheaAcr"
acr_sku = "Basic"
acr_admin_enabled = true
aks_name = "aks-mmichea-g6"
aks_dns_prefix = "aks1"
aks_kubernetes_version = "1.24.6"
aks_rbac_enabled = true
aks_np_name = "default"
aks_np_node_count = 1
aks_np_enabler_auto_scaling = true
aks_np_max_count = 1
aks_np_min_count = 1
aks_np_vm_size = "Standard_D2_v2"
aks_np_max_pod_count = 80
aks_sp_client_id = "d8d738bc-ff51-44e2-a579-4ea49ea98792"
aks_sp_client_secret = "************"
aks_net_plugin = "azure"
aks_net_policy = "azure"
aksnp_name = "internal"
aksnp_node_count = 1
aksnp_tag_label = "adicional"
