data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.data_factory_linked_service_webs : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_data_factory_linked_service_web" "data_factory_linked_service_webs" {
  for_each = var.data_factory_linked_service_webs

  authentication_type      = each.value.authentication_type
  data_factory_id          = each.value.data_factory_id
  name                     = each.value.name
  url                      = each.value.url
  additional_properties    = each.value.additional_properties
  annotations              = each.value.annotations
  description              = each.value.description
  integration_runtime_name = each.value.integration_runtime_name
  parameters               = each.value.parameters
  password                 = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  username                 = each.value.username
}

