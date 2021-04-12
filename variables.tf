variable "project_id" {}
variable region {default = "europe-west1"}
variable zone {default = "europe-west1-b"}

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
  type = map(object ({
    name = string
    vm = string
    disk_type = string
    disk_size = number
    num_instances_worker = number
    num_instances_master = number
  }))
}