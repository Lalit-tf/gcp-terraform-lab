provider "google" {
  project = "gcp-terraform-lab"
  region  = "us-central1"
}

resource "google_storage_bucket" "test_bucket" {
  name     = "lalit-terraform-test-bucket"
  location = "US"
}
