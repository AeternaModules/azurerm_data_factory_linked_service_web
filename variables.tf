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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_linked_service_web's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: authentication_type
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: url
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: username
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: password
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: integration_runtime_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

