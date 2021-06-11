resource "google_composer_environment" "composer" {
  for_each = var.composer
  name   = each.name
  region = var.region
  config {
    node_count = 4

    node_config {
      zone         = var.zone
      machine_type = each.machine_type

      service_account = google_service_account.composer_account.name
    }
  }
}

resource "google_service_account" "composer_account" {
  for_each = var.service_account_composer  
  account_id   = each.account_id
  display_name = each.display_name
}