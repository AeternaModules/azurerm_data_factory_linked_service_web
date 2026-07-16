output "data_factory_linked_service_webs_id" {
  description = "Map of id values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_linked_service_webs_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_linked_service_webs_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_linked_service_webs_authentication_type" {
  description = "Map of authentication_type values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "data_factory_linked_service_webs_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_linked_service_webs_description" {
  description = "Map of description values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_linked_service_webs_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.integration_runtime_name if v.integration_runtime_name != null && length(v.integration_runtime_name) > 0 }
}
output "data_factory_linked_service_webs_name" {
  description = "Map of name values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_linked_service_webs_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_linked_service_webs_password" {
  description = "Map of password values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_webs_url" {
  description = "Map of url values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.url if v.url != null && length(v.url) > 0 }
}
output "data_factory_linked_service_webs_username" {
  description = "Map of username values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.username if v.username != null && length(v.username) > 0 }
}

