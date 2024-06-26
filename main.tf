/*
resource "google_storage_bucket" "raw" {
  project = var.project
  name = "${var.data-project}-raw2"
  force_destroy = false
  uniform_bucket_level_access = true
  location = var.region
  labels = local.labels

}
*/

resource "google_service_account" "default" {
  account_id   = "user33"
  display_name = "user33"
}

resource "google_compute_instance" "myvm1" {
  name         = "jhadi-instance-01"
  machine_type = "e2-micro"
  zone         = "us-central1-c"

  tags = ["finance", "dept"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "accounting"
      }
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "NVME"
  # }

  network_interface {
    network = "vpc1-lk"
    subnetwork = "central1-subnet"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    dept = "finance"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "user33@learningsokay.site"
    scopes = ["cloud-platform"]
  }
}