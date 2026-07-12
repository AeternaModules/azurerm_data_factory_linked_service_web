output "data_factory_linked_service_webs_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.additional_properties }
}
output "data_factory_linked_service_webs_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.annotations }
}
output "data_factory_linked_service_webs_authentication_type" {
  description = "Map of authentication_type values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.authentication_type }
}
output "data_factory_linked_service_webs_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.data_factory_id }
}
output "data_factory_linked_service_webs_description" {
  description = "Map of description values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.description }
}
output "data_factory_linked_service_webs_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.integration_runtime_name }
}
output "data_factory_linked_service_webs_name" {
  description = "Map of name values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.name }
}
output "data_factory_linked_service_webs_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.parameters }
}
output "data_factory_linked_service_webs_password" {
  description = "Map of password values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.password }
  sensitive   = true
}
output "data_factory_linked_service_webs_url" {
  description = "Map of url values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.url }
}
output "data_factory_linked_service_webs_username" {
  description = "Map of username values across all data_factory_linked_service_webs, keyed the same as var.data_factory_linked_service_webs"
  value       = { for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : k => v.username }
}

