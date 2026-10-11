data "aws_rds_clusters" "rds_clusters_lookup" {
  for_each = var.rds_clusters_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

