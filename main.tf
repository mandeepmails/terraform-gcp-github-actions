resource "google_storage_bucket" "bucket1-mandy-rocks" {
  name     = "21jun2024-jhadi-bucket2"
  location = "us-central1-d"
  # force_destroy = true

  uniform_bucket_level_access = true

  # website {
  #   main_page_suffix = "index.html"
  #   not_found_page   = "404.html"
  # }
  # cors {
  #   origin          = ["http://image-store.com"]
  #   method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
  #   response_header = ["*"]
  #   max_age_seconds = 3600
  # }
}