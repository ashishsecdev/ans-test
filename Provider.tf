terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.39.0"
    }
  }
}
provider "google" {
  credentials = file("Key_Json.json")
  project = "XXX"
  region = "XXX"
  zone = "XXX"
} //1
//Move to particular "directory" and then do "terraform init -upgrade"