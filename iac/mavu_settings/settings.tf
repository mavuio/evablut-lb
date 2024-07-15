locals {
  module_dokku_app = {
    storage = {
      "evablut-ex-data" = {
        mount_path = "/app/priv/data"
      }
    }
    domains = [
      "${var.app_name}.${var.host}",
    ]

    config = {

    }

  }

}


