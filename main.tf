terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "playground-s-11-4854d70f"
  region  = "us-central1"
  zone    = "us-central1-a"
  access_token = var.google_access_token
}

resource "google_compute_instance" "my_vm" {
  name         = "my-aadvik-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }
}