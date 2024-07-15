
module "dokku_app" {
  source   = "./_linked_modules/modules/dokku_app"
  app_name = var.mavu_dokku_app_name
  host     = var.mavu_dokku_host
  my_secrets  = var.my_secrets
}

