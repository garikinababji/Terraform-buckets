


provider "google" {
  project = "babji-product-2615"
  region  = "asia-south1"
}

resource "google_storage_bucket" "raw_bucket" {
  name          = "babji-raw-data-2615"
  location      = "ASIA-SOUTH1"
  force_destroy = true

  uniform_bucket_level_access = true
}

# or you can this also

resource "google_storage_bucket" "raw_bucket" {
  name     = var.bucket_name
  location = "ASIA-SOUTH1"

  force_destroy = true

  uniform_bucket_level_access = true
}
