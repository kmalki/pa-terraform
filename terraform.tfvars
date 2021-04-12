project_id = "projetannuel-309416"

buckets = {
  "test" = {name = "test-bucket", class = "STANDARD"}
}

topic = {
  "dataproc" = {name = "topic-dataproc"}
  "firestore" = {name = "topic-firestore"}
}


dataproc = {
  "dataproc" = {name = "dataproc" ,"vm" = "f1-micro", "disk_type" = "pd-standard", "disk_size" = 10, "num_instances_worker" = 2 , "num_instances_master" = 1}
}