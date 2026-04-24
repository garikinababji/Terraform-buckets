resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class
  force_destroy = true
  uniform_bucket_level_access = true

  versioning {
    enabled = var.versioning
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.lifecycle_days
    }
  }

  labels = {
    env = var.env
  }
}

# Folder simulation
resource "google_storage_bucket_object" "folders" {
  for_each = toset(var.folders)

  name    = each.value
  bucket  = google_storage_bucket.bucket.name
  content = " "
}

