variable "yandex_cloud_id" {
  default = "b1gubqof1kpelp4hkejl"
}

variable "yandex_folder_id" {
  default = "b1g3gk4nqnjo204vnv4u"
}

variable "cidrs" {
  type = list(string)
  default = ["192.168.100.0/24", "192.168.101.0/24"]
}

variable "zones" {
  type = list(string)  
  default = ["ru-central1-a", "ru-central1-b"]
}

variable "ubunt" {
  default = "fd87tirk5i8vitv9uuo1"
}

variable "vm" {
  type = list(string)
  default = ["yardiot.ru", "db01.yardiot.ru", "db02.yardiot.ru", "app.yardiot.ru", "gitlab.yardiot.ru", "runner.yardiot.ru", "monitoring.yardiot.ru"]
}

