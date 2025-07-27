provider "google" {
  project = "gcp-tf-git"
  region  = "us-central1"
  # Enable ADC through GitHub Actions WIF
  credentials = null
}


resource "google_storage_bucket" "test_bucket" {
  name     = "lalit-terraform-test-bucket"
  location = "US"
}
