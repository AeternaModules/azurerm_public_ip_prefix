variable "public_ip_prefixs" {
  description = <<EOT
Map of public_ip_prefixs, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - custom_ip_prefix_id
    - ip_version
    - prefix_length
    - sku
    - sku_tier
    - tags
    - zones
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    custom_ip_prefix_id = optional(string)
    ip_version          = optional(string, "IPv4")
    prefix_length       = optional(number, 28)
    sku                 = optional(string, "Standard")
    sku_tier            = optional(string, "Regional")
    tags                = optional(map(string))
    zones               = optional(set(string))
  }))
}

