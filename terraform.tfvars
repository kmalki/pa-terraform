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
 composer = {"name" = "composer", "machine" = "n1-standard-1", "node" = 3 ,  "core-store_serialized_dags" = "True","core-min_serialized_dag_update_interval" = 30,"core-store_dag_code" = "True","scheduler-dag_dir_list_interval" = 30,"disk_size_gb" = 20,"composer_image_version" = "composer-1.14.2-airflow-1.10.14","composer_python_version" = "3"}
}

service_account_composer = {account_id = "composer", display_name = "Service Account for Composer Environment"}
service_account_dataflow = {account_id = "dataflow", display_name = "Service Account for dataflow Environment"}