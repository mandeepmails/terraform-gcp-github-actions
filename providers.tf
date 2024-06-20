provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "gh-actions-tf-21jun2024"
    prefix = "terraform/state"
  }
}
