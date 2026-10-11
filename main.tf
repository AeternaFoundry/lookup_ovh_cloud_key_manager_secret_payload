data "ovh_cloud_key_manager_secret_payload" "cloud_key_manager_secret_payload_lookup" {
  for_each = var.cloud_key_manager_secret_payload_lookup

  secret_id    = each.value.secret_id
  service_name = each.value.service_name
}

