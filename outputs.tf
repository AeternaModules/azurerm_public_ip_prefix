output "public_ip_prefixes" {
  description = "All public_ip_prefix resources"
  value       = azurerm_public_ip_prefix.public_ip_prefixes
}
output "public_ip_prefixes_custom_ip_prefix_id" {
  description = "List of custom_ip_prefix_id values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.custom_ip_prefix_id]
}
output "public_ip_prefixes_ip_prefix" {
  description = "List of ip_prefix values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.ip_prefix]
}
output "public_ip_prefixes_ip_version" {
  description = "List of ip_version values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.ip_version]
}
output "public_ip_prefixes_location" {
  description = "List of location values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.location]
}
output "public_ip_prefixes_name" {
  description = "List of name values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.name]
}
output "public_ip_prefixes_prefix_length" {
  description = "List of prefix_length values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.prefix_length]
}
output "public_ip_prefixes_resource_group_name" {
  description = "List of resource_group_name values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.resource_group_name]
}
output "public_ip_prefixes_sku" {
  description = "List of sku values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.sku]
}
output "public_ip_prefixes_sku_tier" {
  description = "List of sku_tier values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.sku_tier]
}
output "public_ip_prefixes_tags" {
  description = "List of tags values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.tags]
}
output "public_ip_prefixes_zones" {
  description = "List of zones values across all public_ip_prefixes"
  value       = [for k, v in azurerm_public_ip_prefix.public_ip_prefixes : v.zones]
}

