output "kms_key_versions_lookup_id" {
  description = "Map of id values across all kms_key_versions_lookup, keyed the same as var.kms_key_versions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_kms_key_versions.kms_key_versions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_key_versions_lookup_filter" {
  description = "Map of filter values across all kms_key_versions_lookup, keyed the same as var.kms_key_versions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_kms_key_versions.kms_key_versions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "kms_key_versions_lookup_key_id" {
  description = "Map of key_id values across all kms_key_versions_lookup, keyed the same as var.kms_key_versions_lookup except keys with no key_id are omitted"
  value       = { for k, v in data.oci_kms_key_versions.kms_key_versions_lookup : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_key_versions_lookup_key_versions" {
  description = "Map of key_versions values across all kms_key_versions_lookup, keyed the same as var.kms_key_versions_lookup except keys with no key_versions are omitted"
  value       = { for k, v in data.oci_kms_key_versions.kms_key_versions_lookup : k => v.key_versions if v.key_versions != null && length(v.key_versions) > 0 }
}
output "kms_key_versions_lookup_management_endpoint" {
  description = "Map of management_endpoint values across all kms_key_versions_lookup, keyed the same as var.kms_key_versions_lookup except keys with no management_endpoint are omitted"
  value       = { for k, v in data.oci_kms_key_versions.kms_key_versions_lookup : k => v.management_endpoint if v.management_endpoint != null && length(v.management_endpoint) > 0 }
}

