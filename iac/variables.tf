variable "mavu_dokku_host" {
  type = string
}

variable "mavu_dokku_app_name" {
  type = string
}

variable "mavu_dokku_pg_name" {
  type = string
  default = null
}


variable "my_secrets" {
  type = map
  default = {}
}

