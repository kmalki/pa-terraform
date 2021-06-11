variable "project_id" {}
variable region {default = "europe-west1"}
variable zone {default = "europe-west1-b"}

variable bq_region {default = "EU"}


# Cloud storage
variable "buckets" {
  type = map(object ({
    name = string
    class = string
  }))
}

variable "topic" {
  type = map(object ({
    name = string
  }))
}

variable "dataproc" {
  type = map(object({
    name = string
    vm = string
    disk_type = string
    disk_size = number
    num_instances_worker = number
    num_instances_master = number
  }))
}

variable "datasets" {
  type = map(object({
    name = string
    description = string
  }))
}

variable "composer" {
  type = map(object({
    name = string
    machine = string
  }))
}

variable "service_account_composer" {
  type = object({
   account_id = string
   display_name = string
  })
}

variable "service_account_dataflow" {
  type = object({
   account_id = string
   display_name = string
  })
}

variable "date_partition_tables" {
  type = map(object({
    name = string
    dataset = string
    schema = string
    partition_field = string
    require_partition_filter = bool
    clustering = list(string)
  }))
}