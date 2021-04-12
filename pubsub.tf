# ------- Buckets ------- #
# -- Buckets configuration --

resource "google_pubsub_topic" "topic-dataproc" {
  for_each = var.topicd
  project = var.project_id
  name = "${var.project_id}-${each.value.name}"
}

resource "google_pubsub_topic" "topic-firestore" {
  for_each = var.topicf
  project = var.project_id
  name = "${var.project_id}-${each.value.name}"
}