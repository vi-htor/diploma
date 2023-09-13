output "access_key_of_bucket" {
  value = "${yandex_iam_service_account_static_access_key.sa-static-key.access_key}"
  sensitive = true
}

output "secret_key_of_bucket" {
  value = "${yandex_iam_service_account_static_access_key.sa-static-key.secret_key}"
  sensitive = true
}

output "name_of_bucket" {
  value = "${yandex_storage_bucket.tf-back.bucket}"
}