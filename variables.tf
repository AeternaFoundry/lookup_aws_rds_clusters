variable "rds_clusters_lookup" {
  description = <<EOT
Map of rds_clusters_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

