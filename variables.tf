variable "public_ip_prefixes" {
  description = <<EOT
Map of public_ip_prefixes, attributes below
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
    ip_version          = optional(string)
    prefix_length       = optional(number)
    sku                 = optional(string)
    sku_tier            = optional(string)
    tags                = optional(map(string))
    zones               = optional(set(string))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_public_ip_prefix's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: custom_ip_prefix_id
  #   source:    [from customipprefixes.ValidateCustomIPPrefixID] !ok
  # path: custom_ip_prefix_id
  #   source:    [from customipprefixes.ValidateCustomIPPrefixID] err != nil
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku_tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: prefix_length
  #   condition: value >= 0 && value <= 127
  #   message:   must be between 0 and 127
  # path: ip_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: zones[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

