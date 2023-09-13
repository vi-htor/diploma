output "internal_ip_address_master-01" {
  value = "${yandex_compute_instance.master-01.network_interface.0.ip_address}"
}
output "external_ip_address_master-01" {
  value = "${yandex_compute_instance.master-01.network_interface.0.nat_ip_address}"
}

# output "internal_ip_address_master-02" {
#   value = "${yandex_compute_instance.master-02.network_interface.0.ip_address}"
# }
# output "external_ip_address_master-02" {
#   value = "${yandex_compute_instance.master-02.network_interface.0.nat_ip_address}"
# }

# output "internal_ip_address_master-03" {
#   value = "${yandex_compute_instance.master-03.network_interface.0.ip_address}"
# }
# output "external_ip_address_master-03" {
#   value = "${yandex_compute_instance.master-03.network_interface.0.nat_ip_address}"
# }

output "internal_ip_address_worker-01" {
  value = "${yandex_compute_instance.worker-01.network_interface.0.ip_address}"
}
output "external_ip_address_worker-01" {
  value = "${yandex_compute_instance.worker-01.network_interface.0.nat_ip_address}"
}

output "internal_ip_address_worker-02" {
  value = "${yandex_compute_instance.worker-02.network_interface.0.ip_address}"
}
output "external_ip_address_worker-02" {
  value = "${yandex_compute_instance.worker-02.network_interface.0.nat_ip_address}"
}

# output "internal_ip_address_worker-03" {
#   value = "${yandex_compute_instance.worker-03.network_interface.0.ip_address}"
# }
# output "external_ip_address_worker-03" {
#   value = "${yandex_compute_instance.worker-03.network_interface.0.nat_ip_address}"
# }
