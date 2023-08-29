


resource "azurerm_postgresql_flexible_server" "default" {
  name                   =var.database_name
  resource_group_name    = data.azurerm_resource_group.spring_apps_rg.name
  location               = data.azurerm_resource_group.spring_apps_rg.location
  version                = "13"
  delegated_subnet_id    = azurerm_subnet.default.id
  private_dns_zone_id    = azurerm_private_dns_zone.default.id
  administrator_login    = var.db_server_admin_username
  administrator_password = var.db_server_admin_password
  zone                   = "1"
  storage_mb             = 32768
  sku_name               = "GP_Standard_D2s_v3"
  backup_retention_days  = 7

  depends_on = [azurerm_private_dns_zone_virtual_network_link.default]
}

resource "azurerm_postgresql_flexible_server_database" "default" {
  name      = var.database_name
  server_id = azurerm_postgresql_flexible_server.default.id
  collation = "en_US.UTF8"
  charset   = "UTF8"
}
