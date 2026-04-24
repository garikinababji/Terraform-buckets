module "gcs" {
  source = "../../modules/gcs"

  bucket_name    = var.bucket_name
  location       = var.location
  storage_class  = var.storage_class
  versioning     = var.versioning
  lifecycle_days = var.lifecycle_days
  folders        = var.folders
  env            = "prod"
}