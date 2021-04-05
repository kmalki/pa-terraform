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