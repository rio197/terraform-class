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
  #names      = [terraform-learn-bucket04",terraform-learn-bucket06","terraform-learn-bucket08", "terraform-learn-bucket09","terraform-learn-bucket10","terraform-learn-bucket12"] 
  names      = ["terraform-learn-bucket08", "terraform-learn-bucket09","terraform-learn-bucket10","terraform-learn-bucket12"]
 
  location      = "NORTHAMERICA-NORTHEAST1"
  storage_class = "STANDARD"

}