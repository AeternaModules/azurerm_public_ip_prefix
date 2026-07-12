output "public_ip_prefixes_custom_ip_prefix_id" {
  description = "Map of custom_ip_prefix_id values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.custom_ip_prefix_id }
}
output "public_ip_prefixes_ip_prefix" {
  description = "Map of ip_prefix values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.ip_prefix }
}
output "public_ip_prefixes_ip_version" {
  description = "Map of ip_version values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.ip_version }
}
output "public_ip_prefixes_location" {
  description = "Map of location values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.location }
}
output "public_ip_prefixes_name" {
  description = "Map of name values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.name }
}
output "public_ip_prefixes_prefix_length" {
  description = "Map of prefix_length values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.prefix_length }
}
output "public_ip_prefixes_resource_group_name" {
  description = "Map of resource_group_name values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.resource_group_name }
}
output "public_ip_prefixes_sku" {
  description = "Map of sku values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.sku }
}
output "public_ip_prefixes_sku_tier" {
  description = "Map of sku_tier values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.sku_tier }
}
output "public_ip_prefixes_tags" {
  description = "Map of tags values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.tags }
}
output "public_ip_prefixes_zones" {
  description = "Map of zones values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.zones }
}

