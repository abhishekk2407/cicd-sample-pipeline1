terraform {
    
    backend "gcs" {
    bucket = "lz_1527902_jenkins_pipeline_tfstate_1"
    prefix = "terraform/tfstate"
    /* credentials = "key.json" */
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }

}

provider "google" {
  /* credentials = "key.json" */
  project = var.project_id
}