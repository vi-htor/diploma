resource "yandex_compute_instance" "worker-02" {
  name                      = "worker-02"
  folder_id                 = "${yandex_resourcemanager_folder.managed_folder.id}"
  zone                      = "ru-central1-b"
  hostname                  = "worker-02.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.os}"
      name        = "root-worker-02"
      type        = "network-ssd"
      size        = "20"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.zone_2.id}"
    nat       = true
  }

  metadata = {
    ssh-keys = "debian:${file("../../../keys/id_rsa.pub")}"
  }

  depends_on = [
    yandex_vpc_subnet.zone_2
  ]
}
