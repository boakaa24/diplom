terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "stage-diplom"
    region     = "ru-central1"
    key        = "diplom.tfstate"
    access_key = "YCAJElJlxE7zuqeEXkWDg4Njw"
    secret_key = "YCOhlbPw7ChSgL92W9Q5jBxCo8BkHnONi7GpdYaz"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = "AQAAAAAAJhQOAATuwXLgirewZ0G_tHlIENSdJLU"
  cloud_id  = var.yandex_cloud_id
  folder_id = var.yandex_folder_id
  zone      = "ru-central1-a"
}

