# Provider
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tf-back"
    region     = "ru-central1"
    key        = "terraform/diploma.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  service_account_key_file = "../../../keys/key.json"
  cloud_id  = "${var.yandex_cloud_id}"
}
