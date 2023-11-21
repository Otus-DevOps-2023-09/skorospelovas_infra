terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket = var.terraform_backend_s3_bucket
    region = "ru-central1"
    key = "terraform_state/state/terraform.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
