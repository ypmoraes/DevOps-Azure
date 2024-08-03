resource "azurerm_mssql_server" "db-sql-ym" {
  name                          = "db-sql-ym"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = azurerm_resource_group.rg.location
  version                       = "12.0"
  administrator_login           = ""
  administrator_login_password  = ""
}

resource "azurerm_mssql_database" "database-01-ym" {
  name                = "database_name_01"
  server_id           = azurerm_mssql_server.db-sql-ym.id
  collation           = "SQL_Latin1_General_CP1_CI_AS"
}