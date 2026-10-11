data "oci_kms_key_versions" "kms_key_versions_lookup" {
  for_each = var.kms_key_versions_lookup

  key_id              = each.value.key_id
  management_endpoint = each.value.management_endpoint

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

