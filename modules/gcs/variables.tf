variable "bucket_name" {}
variable "location" {}
variable "storage_class" {}
variable "versioning" {}
variable "lifecycle_days" {}
variable "env" {}

variable "folders" {
  type = list(string)
}