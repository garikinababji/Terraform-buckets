terraform {
  backend "gcs" {
    bucket  = "terraform-state-prod-492715"
    prefix  = "gcs/prod"
  }
}