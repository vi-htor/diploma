resource "yandex_container_registry" "my-reg" {
  name = "my-registry"
  folder_id = "${var.yandex_folder_id}" 
}

resource "yandex_iam_service_account" "registry-sa" {
  name        = "registry-sa"
  description = "account for registry // managed by tf"
  folder_id = "${var.yandex_folder_id}" 
}

resource "yandex_resourcemanager_folder_iam_member" "registry-sa-role" {
  role        = "container-registry.editor"
  member      = "serviceAccount:${yandex_iam_service_account.registry-sa.id}"
  folder_id = "${var.yandex_folder_id}" 
}

resource "yandex_iam_service_account_key" "registry-sa-auth-key" {
  service_account_id = "${yandex_iam_service_account.registry-sa.id}"
  description        = "key for registry // managed by tf"
}