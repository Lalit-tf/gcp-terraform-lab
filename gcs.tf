# gcs.tf

# GCS Bucket for Remote State
resource "google_storage_bucket" "terraform_state" {
  name     = "Remote Backend"  # Replace with a unique bucket name
  location = "US"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true  # Prevent accidental deletion
  }
}
