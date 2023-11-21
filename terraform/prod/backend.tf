terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    region                      = "ru-central1"
    bucket                      = "tf2-state"
    key                         = "prod-state"
    access_key                  = "YCAJEkZMmoHeJaxMCgBIWNigH"
    secret_key                  = "YCPWW2klgey6U6vEdOmvA47oclOqEC5kQqj_YaTY"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
