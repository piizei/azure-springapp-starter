

module "api_gateway" {
  source                    = "./modules/app_instance"
  instance_name             = var.api_gateway
  resource_group_name       = data.azurerm_spring_cloud_service.spring_cloud.resource_group_name
  spring_cloud_service_name = data.azurerm_spring_cloud_service.spring_cloud.name
  service_connection_id     = azurerm_postgresql_flexible_server_database.default.id
  is_public                 = true
}

module "admin_server" {
  source                    = "./modules/app_instance"
  instance_name             = var.admin_server
  resource_group_name       = data.azurerm_spring_cloud_service.spring_cloud.resource_group_name
  spring_cloud_service_name = data.azurerm_spring_cloud_service.spring_cloud.name
  service_connection_id     = azurerm_postgresql_flexible_server_database.default.id
  is_public                 = true
}


module "customers_service" {
  source                    = "./modules/app_instance"
  instance_name             = var.customers_service
  resource_group_name       = data.azurerm_spring_cloud_service.spring_cloud.resource_group_name
  spring_cloud_service_name = data.azurerm_spring_cloud_service.spring_cloud.name
  service_connection_id     = azurerm_postgresql_flexible_server_database.default.id
}


module "vets_service" {
  source                    = "./modules/app_instance"
  instance_name             = var.vets_service
  resource_group_name       = data.azurerm_spring_cloud_service.spring_cloud.resource_group_name
  spring_cloud_service_name = data.azurerm_spring_cloud_service.spring_cloud.name
  service_connection_id     = azurerm_postgresql_flexible_server_database.default.id
}

module "visits_service" {
  source                    = "./modules/app_instance"
  instance_name             = var.visits_service
  resource_group_name       = data.azurerm_spring_cloud_service.spring_cloud.resource_group_name
  spring_cloud_service_name = data.azurerm_spring_cloud_service.spring_cloud.name
  service_connection_id     = azurerm_postgresql_flexible_server_database.default.id
}
