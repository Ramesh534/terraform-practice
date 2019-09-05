variable "mysql_root_password" {
  description = "Mysql Root password"
  default = "PassWd!!"
}

variable "ghost_db_username" {
  description = "ghost databse username"
  default = "root"
}

variable "ghost_db_name" {
  description = "ghost blog database name"
  default = "ghost"
}

variable "mysql_network_alias" {
  description = "the network alias for mysql"
  default = "db"
}

variable "ghost_network_alias" {
  description = "the network alias for ghost"
  default = "ghost"
}

variable "ext_port" {
  description = "public port for ghost"
  default = "8080"
}