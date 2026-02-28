terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "google" {
  project     = var.project_name
  region      = var.region
  credentials = file("../opensip-prod-7e56dd74c247.json")

}
