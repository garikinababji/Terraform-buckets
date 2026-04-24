env = "prod"
project_id      = "dev-env-492715"
region          = "asia-south1"
bucket_name     = "clt-prod-492715-tf-raw"
location        = "ASIA-SOUTH1"
storage_class   = "STANDARD"
versioning      = true
lifecycle_days  = 730

folders = [
  "raw/customer/",
  "raw/orders/",
  "processed/customer/",
  "processed/orders/",
  "analytics/",
  "audit/"
]