# ------- Buckets ------- #
# -- PubSub configuration --

resource "google_pubsub_topic" "project_topic" {
  for_each = var.topic
  project = var.project_id
  name = "${var.project_id}-${each.value.name}"
}
