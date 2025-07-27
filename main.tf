provider "google" {
  project = "gcp-tf-git"
  region  = "us-central1"

}


resource "google_storage_bucket" "test_bucket" {
  name     = "lalit-terraform-test-bucket"
  location = "US"
}
