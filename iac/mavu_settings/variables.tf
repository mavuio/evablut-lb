

#dummy placeholders for module local vars
variable "app_name" {
  type = string
}

variable "host" {
  type = string
}

variable "mavu_dokku_pg_name" {
  type = string
}

variable "my_secrets" {
  description = "my secrets"
  type        = map
  sensitive   = true
}

