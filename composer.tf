resource "google_composer_environment" "composer" {
  for_each = var.composer
  name   = each.value.name
  region = var.region
  config {
    node_count = 4

    node_config {
      zone         = var.zone
      machine_type = each.value.machine
      service_account = google_service_account.services_account_composer.name
    }
  }
}

resource "google_service_account" "services_account_composer" {
  account_id   = var.service_account_composer.account_id
  display_name = var.service_account_composer.display_name
}