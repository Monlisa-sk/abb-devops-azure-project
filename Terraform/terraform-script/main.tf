
data "azurerm_resource_group" "aks-rg" {
  name = var.resource_group_name
}

resource "azurerm_kubernetes_cluster" "aks" {

  name                = var.cluster_name
  kubernetes_version  = var.kubernetes_version
  location            = data.azurerm_resource_group.aks-rg.location
  resource_group_name = data.azurerm_resource_group.aks-rg.name
  dns_prefix          = var.cluster_name

  default_node_pool {
    name                = "system"
    vm_size             = "Standard_D2s_v3"
    type                = "VirtualMachineScaleSets"
    node_count          =  var.system_node_count
  }

  identity {

    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "kubenet" 
  }

  oms_agent {
  log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
}
}

resource "azurerm_log_analytics_workspace" "law" {
  name                = var.law_name
  location            = data.azurerm_resource_group.aks-rg.location
  resource_group_name = data.azurerm_resource_group.aks-rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

