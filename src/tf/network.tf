# Network
resource "yandex_vpc_network" "default" {
  name           = "net"
  folder_id      = "${yandex_resourcemanager_folder.managed_folder.id}"
  
  depends_on = [
    yandex_resourcemanager_folder.managed_folder
  ]
}

resource "yandex_vpc_subnet" "zone_1" {
  name           = "zone_1"
  folder_id      = "${yandex_resourcemanager_folder.managed_folder.id}"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.101.0/24"]

  depends_on = [
    yandex_vpc_network.default
  ]
}

resource "yandex_vpc_subnet" "zone_2" {
  name           = "zone_2"
  folder_id      = "${yandex_resourcemanager_folder.managed_folder.id}"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.102.0/24"]
  
  depends_on = [
    yandex_vpc_network.default
  ]
}

resource "yandex_vpc_subnet" "zone_3" {
  name           = "zone_3"
  folder_id      = "${yandex_resourcemanager_folder.managed_folder.id}"
  zone           = "ru-central1-c"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.103.0/24"]

  depends_on = [
    yandex_vpc_network.default
  ]
}
