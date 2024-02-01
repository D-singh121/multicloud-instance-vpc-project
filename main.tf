provider "aws" {
  region = "us-east-1"
}



provider "google" {
  project     = var.project
  credentials = file(var.credentials)

  region = var.region
  zone   = var.zone
}

provider "azurerm" {
  features {

  }
}





