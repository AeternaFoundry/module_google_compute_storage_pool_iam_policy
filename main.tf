resource "google_compute_storage_pool_iam_policy" "compute_storage_pool_iam_policies" {
  for_each = var.compute_storage_pool_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  project     = each.value.project
  zone        = each.value.zone
}

