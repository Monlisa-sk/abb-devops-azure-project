# Resource group 
output "resource_group_name" {
  value = data.azurerm_resource_group.aks-rg.name
}

# AKS cluster details
output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks.id
}
output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

# Log Analytics workspace
output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.law.id
}
output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.law.name
}
