resource "google_service_account" "service_account_composer" {
  project = var.project_id
  account_id   = var.service_account_composer.account_id
  display_name = var.service_account_composer.display_name
}

resource "google_project_iam_member" "composer_access" {
    project = var.project_id
    role   = "roles/editor"
    member = "serviceAccount:${google_service_account.service_account_composer.email}"
}

resource "google_composer_environment" "composer" {
  depends_on = [google_project_iam_member.composer_access]
  for_each = var.composer
  name   = each.value.name
  region = var.region
  project = var.project_id
  config {
    node_count = each.value.node

    node_config {
      zone         = var.zone
      machine_type = each.value.machine
      service_account = google_service_account.service_account_composer.email
      disk_size_gb = each.value.disk_size_gb
    }

    software_config {
        image_version = each.value.composer_image_version
        python_version = each.value.composer_python_version

        airflow_config_overrides = {
          core-store_serialized_dags = each.value.core-store_serialized_dags
          core-min_serialized_dag_update_interval = each.value.core-min_serialized_dag_update_interval
          core-store_dag_code = each.value.core-store_dag_code
          scheduler-dag_dir_list_interval = each.value.scheduler-dag_dir_list_interval
          }
    }
  }
}

