terraform {
    
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }

  backend "gcs" {
    bucket = "lz_1527902_jenkins_pipeline_tfstate"
    key    = "terraform.tfstate"
    /* credentials = "key.json" */
  }

}

provider "google" {
  /* credentials = "key.json" */
  project = var.project_id
}