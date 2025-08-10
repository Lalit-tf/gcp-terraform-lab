# Define the Google Cloud provider
provider "google" {
  project = "gcp-tf-git"
  region  = "us-central1"
}

# Create a GCS bucket for Terraform state
resource "google_storage_bucket" "terraform_state" {
  name     = "remote backend"  # Ensure this is globally unique
  location = "US"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

# Now, we’ll reference this bucket for remote state storage
terraform {
  backend "gcs" {
    bucket = "remote backend"  #  references the created bucket
    prefix = "terraform/state"  # This creates a folder structure inside the bucket
  }
}
