resource "yandex_compute_instance" "master-01" {
  name                      = "master-01"
  folder_id                 = "${yandex_resourcemanager_folder.managed_folder.id}" 
  zone                      = "ru-central1-a"
  hostname                  = "master-01.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.os}"
      name        = "root-master-01"
      type        = "network-ssd"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.zone_1.id}"
    nat       = true
  }

  metadata = {
    ssh-keys = "debian:${file("../../../keys/id_rsa.pub")}"
  }
  
  depends_on = [
    yandex_vpc_subnet.zone_1
  ]
}
