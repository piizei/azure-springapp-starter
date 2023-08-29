output "db_database_name" {
  value = azurerm_postgresql_flexible_server.default.name
}

output "db_server_name" {
  value = azurerm_postgresql_flexible_server.default.fqdn
}




