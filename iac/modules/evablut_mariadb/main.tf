terraform {
  required_providers {
    dokku = {
      source  = "aliksend/dokku"
      version = "1.0.14"
    }
  }
}

variable "host" {
  type = string
}

variable "app_name" {
  type = string
}

variable "mariadb_name" {
  type    = string
  default = null
}

provider "dokku" {
  ssh_host = var.host

  ssh_user = "dokku"
  ssh_port = 22
  ssh_cert = "~/.ssh/id_ed25519"
}


# resource "dokku_letsencrypt" "main_app-letsencrypt" {
#   app_name = var.mavu_dokku_app_name
#   email    = "manfred@mavu.io"
# }

# resource "dokku_mariadb" "main_app-mariadb" {
#   service_name = var.mariadb_name
# }

resource "dokku_mariadb_link" "main_app-mariadb-link" {
  app_name     = var.app_name
  service_name = var.mariadb_name
}


