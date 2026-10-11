output "cloud_key_manager_secret_payload_lookup_payload" {
  description = "Map of payload values across all cloud_key_manager_secret_payload_lookup, keyed the same as var.cloud_key_manager_secret_payload_lookup except keys with no payload are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secret_payload.cloud_key_manager_secret_payload_lookup : k => v.payload if v.payload != null && length(v.payload) > 0 }
  sensitive   = true
}
output "cloud_key_manager_secret_payload_lookup_secret_id" {
  description = "Map of secret_id values across all cloud_key_manager_secret_payload_lookup, keyed the same as var.cloud_key_manager_secret_payload_lookup except keys with no secret_id are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secret_payload.cloud_key_manager_secret_payload_lookup : k => v.secret_id if v.secret_id != null && length(v.secret_id) > 0 }
}
output "cloud_key_manager_secret_payload_lookup_service_name" {
  description = "Map of service_name values across all cloud_key_manager_secret_payload_lookup, keyed the same as var.cloud_key_manager_secret_payload_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_key_manager_secret_payload.cloud_key_manager_secret_payload_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

