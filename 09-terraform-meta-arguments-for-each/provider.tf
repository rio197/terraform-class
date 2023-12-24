terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.10.0"

    }
  }

}
provider "google" {
//  credentials = var.credentials
  region      = var.region
  zone        = var.zone
  project     = var.project
}
