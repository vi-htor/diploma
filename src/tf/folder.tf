resource "yandex_resourcemanager_folder" "managed_folder" {
  name = "${terraform.workspace}"
  description = "Managed by Terraform"
}