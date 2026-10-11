output "rds_clusters_lookup_id" {
  description = "Map of id values across all rds_clusters_lookup, keyed the same as var.rds_clusters_lookup"
  value       = { for k, v in data.aws_rds_clusters.rds_clusters_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rds_clusters_lookup_cluster_arns" {
  description = "Map of cluster_arns values across all rds_clusters_lookup, keyed the same as var.rds_clusters_lookup"
  value       = { for k, v in data.aws_rds_clusters.rds_clusters_lookup : k => v.cluster_arns if v.cluster_arns != null && length(v.cluster_arns) > 0 }
}
output "rds_clusters_lookup_cluster_identifiers" {
  description = "Map of cluster_identifiers values across all rds_clusters_lookup, keyed the same as var.rds_clusters_lookup"
  value       = { for k, v in data.aws_rds_clusters.rds_clusters_lookup : k => v.cluster_identifiers if v.cluster_identifiers != null && length(v.cluster_identifiers) > 0 }
}
output "rds_clusters_lookup_filter" {
  description = "Map of filter values across all rds_clusters_lookup, keyed the same as var.rds_clusters_lookup"
  value       = { for k, v in data.aws_rds_clusters.rds_clusters_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "rds_clusters_lookup_region" {
  description = "Map of region values across all rds_clusters_lookup, keyed the same as var.rds_clusters_lookup"
  value       = { for k, v in data.aws_rds_clusters.rds_clusters_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

