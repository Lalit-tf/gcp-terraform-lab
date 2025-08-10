# main.tf

# Google Cloud Provider Configuration
provider "google" {
  project = "gcp-tf-git"  # Replace with your actual project ID
  region  = "us-central1"      # Replace with your preferred region
}

# Create a GCS bucket for the remote state
resource "google_storage_bucket" "terraform_state" {
  name     = "remote-backend"  # Replace with a unique bucket name
  location = "US"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true  # Prevent accidental deletion
  }
}
