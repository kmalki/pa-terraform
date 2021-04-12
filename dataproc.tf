# ------- Buckets ------- #
# -- dataproc configuration --


resource "google_dataproc_cluster" "project_dataproc" {
  for_each = var.dataproc
  name = each.value.name
  region = var.region

 cluster_config {
    master_config {
      num_instances = each.value.num_instances_master
      machine_type  = each.value.vm
      disk_config {
        boot_disk_type = each.value.disk_type
        boot_disk_size_gb = each.value.disk_size
      }
    }

    worker_config {
      num_instances = each.value.num_instances_worker
      machine_type = each.value.vm
      disk_config {
        boot_disk_type = each.value.disk_type
        boot_disk_size_gb = each.value.disk_size
      }
    }
  }
}