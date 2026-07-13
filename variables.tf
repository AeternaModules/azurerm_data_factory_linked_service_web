variable "data_factory_linked_service_webs" {
  description = <<EOT
Map of data_factory_linked_service_webs, attributes below
Required:
    - authentication_type
    - data_factory_id
    - name
    - url
Optional:
    - additional_properties
    - annotations
    - description
    - integration_runtime_name
    - parameters
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
    - username
EOT

  type = map(object({
    authentication_type            = string
    data_factory_id                = string
    name                           = string
    url                            = string
    additional_properties          = optional(map(string))
    annotations                    = optional(list(string))
    description                    = optional(string)
    integration_runtime_name       = optional(string)
    parameters                     = optional(map(string))
    password                       = optional(string)
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    username                       = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_webs : (
        length(v.authentication_type) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_webs : (
        length(v.url) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_webs : (
        v.username == null || (length(v.username) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_webs : (
        v.password == null || (length(v.password) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_webs : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_webs : (
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

