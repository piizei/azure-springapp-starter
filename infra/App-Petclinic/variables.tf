variable "subscription_id" {
  type    = string
  default = ""
}
variable "resource_group" {
  type    = string
  default = "rg-springlza-SPOKE"
}

variable "vnet_spoke_name" {
  type    = string
  default = "vnet-springlza-cswed-SPOKE"
}

variable "spring_cloud_service" {
  type = string
}
variable "spring_cloud_resource_group_name" {
  type    = string
  default = "rg-springlza-APPS"
}

variable "private_zones_resource_group_name" {
  type    = string
  default = "rg-springlza-PRIVATEZONES"
}

variable "key_vault_rg" {
  type    = string
  default = "rg-springlza-SHARED"
}
variable "api_gateway" {
  type    = string
  default = "api-gateway"
}
variable "admin_server" {
  type    = string
  default = "admin-server"
}
variable "customers_service" {
  type    = string
  default = "customers-service"
}
variable "visits_service" {
  type    = string
  default = "visits-service"
}
variable "vets_service" {
  type    = string
  default = "vets-service"
}

variable "db_server_admin_username" {
  type    = string
  default = "sqladmin"
}

variable "db_server_admin_password" {
  type = string
}

variable "database_name" {
  type    = string
  default = "petclinic"
}

variable "db_CIDR" {
  type    = string
  default = "10.1.6.0/24"

}
