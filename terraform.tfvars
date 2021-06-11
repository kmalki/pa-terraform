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

date_partition_tables = {
  move_in_out= {name = "move_in_out_fact", dataset = "bqd_flexges", schema = "move_in_out_fact.json", partition_field = "actionDate", require_partition_filter = true, clustering = []}, 
}

datasets = {
 flexges = {"name" = "bqd_flexges", description = ""}
}

composer = {
 composer = {"name" = "composer", machine_type = "f1-micro"}
}

service_account_composer = {
 service_account_composer = {"account_id" = "composer-env-account", display_name = "Test Service Account for Composer Environment"}
}