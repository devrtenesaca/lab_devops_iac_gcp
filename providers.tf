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
  project = var.project_name
  region  = var.region
  #credentials = file("../opensip-prod-7e56dd74c247.json")

}


terraform {
  backend "gcs" {
    bucket = "gactions-gcp-lab" # Debe ser un bucket que ya exista
    prefix = "terraform/state"
    #credentials = "../opensip-prod-7e56dd74c247.json"
  }
}
