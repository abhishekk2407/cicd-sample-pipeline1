terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.44.1"
    }
  }
  backend "gcs" {
    bucket = "lz_1527902_tfstate_files"
    prefix = "backend/windows-jenkins/tfstate/"
  }
}

provider "google" {
  credentials = "key.json"
}