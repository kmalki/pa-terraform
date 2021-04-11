project_id = "projetannuel-309416"

buckets = {
  "test" = {name = "test-bucket", class = "STANDARD"}
}

firestore = {
  name = "firestore-main",
  tier = "STANDARD",
  file_share = {name = "share-main", capacity = 1024},
  network = {network = "default", modes = ["MODE_IPV4"]}
}