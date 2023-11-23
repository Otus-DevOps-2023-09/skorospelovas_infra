#terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#      version = "~>0.35"
#     }
#  }
  required_version = ">= 0.13"
}
resource "yandex_compute_instance" "db" {
  name = "reddit-db"
  labels = {
    tags = "reddit-db"
  }

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 5
  }
  scheduling_policy {
    preemptible = "true"
  }
#  connection {
#    type    = "ssh"
#    host    = self.network_interface.0.nat_ip_address
#    user    = "ubuntu"
#    private_key = file("~/.ssh/id_rsa")
#  }

  boot_disk {
    initialize_params {
      image_id = "fd8v9bp7estnfa0gu7bj"
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }
#  provisioner "remote-exec" {
#    script = "${path.module}/deploy.sh"
#  }
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
