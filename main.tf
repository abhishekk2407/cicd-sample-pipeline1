terraform {
    
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }

  backend "gcs" {
    bucket = "lz_1527902_jenkins_pipeline_tfstate"
    prefix = "terraform/tfstate/"
    credentials = "C:/ProgramData/Jenkins/keys/key.json"
  }

}

provider "google" {
  credentials = "C:/ProgramData/Jenkins/keys/key.json"
  project = var.project_id
}