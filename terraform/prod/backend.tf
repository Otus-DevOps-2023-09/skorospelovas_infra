terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    region                      = "ru-central1"
    bucket                      = "tf2-state"
    key                         = "prod-state"
    access_key                  = ""
    secret_key                  = ""
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
