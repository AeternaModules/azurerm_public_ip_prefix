output "public_ip_prefixes_id" {
  description = "Map of id values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "public_ip_prefixes_custom_ip_prefix_id" {
  description = "Map of custom_ip_prefix_id values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.custom_ip_prefix_id if v.custom_ip_prefix_id != null && length(v.custom_ip_prefix_id) > 0 }
}
output "public_ip_prefixes_ip_prefix" {
  description = "Map of ip_prefix values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.ip_prefix if v.ip_prefix != null && length(v.ip_prefix) > 0 }
}
output "public_ip_prefixes_ip_version" {
  description = "Map of ip_version values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.ip_version if v.ip_version != null && length(v.ip_version) > 0 }
}
output "public_ip_prefixes_location" {
  description = "Map of location values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.location if v.location != null && length(v.location) > 0 }
}
output "public_ip_prefixes_name" {
  description = "Map of name values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "public_ip_prefixes_prefix_length" {
  description = "Map of prefix_length values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.prefix_length if v.prefix_length != null }
}
output "public_ip_prefixes_resource_group_name" {
  description = "Map of resource_group_name values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "public_ip_prefixes_sku" {
  description = "Map of sku values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "public_ip_prefixes_sku_tier" {
  description = "Map of sku_tier values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.sku_tier if v.sku_tier != null && length(v.sku_tier) > 0 }
}
output "public_ip_prefixes_tags" {
  description = "Map of tags values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "public_ip_prefixes_zones" {
  description = "Map of zones values across all public_ip_prefixes, keyed the same as var.public_ip_prefixes"
  value       = { for k, v in azurerm_public_ip_prefix.public_ip_prefixes : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

