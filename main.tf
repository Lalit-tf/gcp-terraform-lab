# main.tf

provider "google" {
  project = "gcp-tf-git"  # Replace with your actual project ID
  region  = "us-central1"      # Replace with your preferred region
}

# GCS Bucket for remote state
#resource "google_storage_bucket" "terraform_state" {
  #name     = "terraform-state-lalit-2025"  # Replace with your unique bucket name
  #location = "US"

  #versioning {
    #enabled = true
  #}

  #lifecycle {
   # prevent_destroy = true  # Prevent accidental deletion
  #}
#}

terraform {
  backend "gcs" {
    bucket = "terraform-state-lalit-2025"  # Same bucket created above
    prefix = "terraform/state"
  }
}
