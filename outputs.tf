output "data_factory_linked_service_webs" {
  description = "All data_factory_linked_service_web resources"
  value       = azurerm_data_factory_linked_service_web.data_factory_linked_service_webs
  sensitive   = true
}
output "data_factory_linked_service_webs_additional_properties" {
  description = "List of additional_properties values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.additional_properties]
}
output "data_factory_linked_service_webs_annotations" {
  description = "List of annotations values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.annotations]
}
output "data_factory_linked_service_webs_authentication_type" {
  description = "List of authentication_type values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.authentication_type]
}
output "data_factory_linked_service_webs_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.data_factory_id]
}
output "data_factory_linked_service_webs_description" {
  description = "List of description values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.description]
}
output "data_factory_linked_service_webs_integration_runtime_name" {
  description = "List of integration_runtime_name values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.integration_runtime_name]
}
output "data_factory_linked_service_webs_name" {
  description = "List of name values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.name]
}
output "data_factory_linked_service_webs_parameters" {
  description = "List of parameters values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.parameters]
}
output "data_factory_linked_service_webs_password" {
  description = "List of password values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.password]
  sensitive   = true
}
output "data_factory_linked_service_webs_url" {
  description = "List of url values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.url]
}
output "data_factory_linked_service_webs_username" {
  description = "List of username values across all data_factory_linked_service_webs"
  value       = [for k, v in azurerm_data_factory_linked_service_web.data_factory_linked_service_webs : v.username]
}

