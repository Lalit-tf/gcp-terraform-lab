# main.tf

provider "google" {
  project = "gcp-tf-git"  # Replace with your actual project ID
  region  = "us-central1"      # Replace with your preferred region
}

terraform {
  backend "gcs" {
    bucket = "terraform-state-lalit-2025"  # Ensure this is the same bucket as the one created
    prefix = "terraform/state"
  }
}
