terraform {
  backend "gcs" {
    bucket  = "terraform-state-dev-492715"
    prefix  = "gcs/dev"
  }
}