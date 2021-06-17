# ------- Buckets ------- #
# -- PubSub configuration --

resource "google_pubsub_topic" "project_topic" {
  project = var.project_id
  name = "${var.project_id}-${var.firestore_topic.name}"
}
