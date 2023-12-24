terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.10.0"
    }
  }
} 

provider "google" {
  region      = var.region
  zone        = var.zone
  project     = var.project
  #credentials = var.credentials
}

module "gcs_buckets" {
  source     = "terraform-google-modules/cloud-storage/google"
  project_id = var.project
  names      = ["terraform-learn-bucket08", "terraform-learn-bucket09","terraform-learn-bucket10","terraform-learn-bucket12"]
  prefix     = "my-unique-prefix"
  
  encryption {
    default_kms_key_name = google_kms_crypto_key.terraform_state_bucket.id
  depends_on = [
    google_project_iam_member.default
  ]
  }
  
  force_destroy = false
  location      = "USNORTHAMERICA-NORTHEAST1"
  storage_class = "STANDARD"
  
  versioning {
    enabled = true
  }
}