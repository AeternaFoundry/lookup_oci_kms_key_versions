variable "kms_key_versions_lookup" {
  description = <<EOT
Map of kms_key_versions_lookup, attributes below
Required:
    - key_id
    - management_endpoint
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    key_id              = string
    management_endpoint = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

