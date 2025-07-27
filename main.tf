provider "google" {
  project = "gcp-tf-git"
  region  = "us-central1"
  #use WIF instead of ADC as per configured in Action Secret
}


resource "google_storage_bucket" "test_bucket" {
  name     = "lalit-terraform-test-bucket"
  location = "US"
}
