/*
resource "google_filestore_instance" "instance" {
  project = var.project_id
  name = var.firestore.name
  zone = var.zone
  tier = var.firestore.tier

  file_shares {
    capacity_gb = var.firestore.file_share.capacity
    name        = var.firestore.file_share.name
  }

  networks {
    network = var.firestore.network.network
    modes   = var.firestore.network.modes
  }
}*/
