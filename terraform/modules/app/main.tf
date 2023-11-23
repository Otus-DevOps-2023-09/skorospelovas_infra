#terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#      version = "~>0.35"
#    }
#  }
#  required_version = ">= 0.13"
#}
resource "yandex_compute_instance" "app" {
  name = "reddit-app"

  labels = {
    tags = "reddit-app"
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
#  type    = "ssh"
#  host    = self.network_interface.0.nat_ip_address
#  user    = "ubuntu"
#  private_key = file("~/.ssh/id_rsa")
#}
#provisioner file {
#  content     = templatefile("${path.module}/puma.service", { user = var.ssh_user, db_url = var.db_url})
#  destination = "/tmp/puma.service"
#}

#provisioner "remote-exec" {
#  script = "${path.module}/deploy.sh"
#}

  boot_disk {
    initialize_params {
      image_id = "fd8qju5jfpg5gsq0bfu4"
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
