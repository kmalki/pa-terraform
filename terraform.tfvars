project_id = "projetannuel-309416"

buckets = {
  "test" = {name = "test-bucket", class = "STANDARD"}
}

topic = {
  "dataproc" = {name = "topic-dataproc"}
  "firestore" = {name = "topic-firestore"}
}


dataproc = {
  "dataproc" = {name = "dataproc" ,"vm" = "e2-standard-2", "disk_type" = "pd-standard", "disk_size" = 30, "num_instances_worker" = 2 , "num_instances_master" = 1}
}