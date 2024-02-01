#all varables
variable "region" {
  default = "us-west2"
}

variable "zone" {
  default = "us-west2-a"
}

variable "project" {
  default = "my-terraform-project-412913"
}

variable "credentials" {
  default = "my-terraform-project-412913-a43d9c23460e.json"
}

# resources 
resource "google_compute_instance" "my_instance" {
  name                      = "terraform-instance"
  machine_type              = "e2-micro"
  zone                      = var.zone
  allow_stopping_for_update = true


  boot_disk {
    initialize_params {
      image = "ubuntu-2204-jammy-v20240126"
      # image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.terraform-vpc-subnet.self_link
    access_config {
      //Ephemeral pubilc ip
    }
  }
}


# vpc vreation
resource "google_compute_network" "terraform-vpc-network" {
  name                    = "terraform-vpc-network"
  auto_create_subnetworks = false
}

# Subnet creation
resource "google_compute_subnetwork" "terraform-vpc-subnet" {
  name          = "terraform-vpc-subnetwork"
  ip_cidr_range = "10.0.0.0/24"
  region        = var.region
  network       = google_compute_network.terraform-vpc-network.self_link


}

resource "google_compute_firewall" "example" {
  name    = "example-firewall"
  network = google_compute_network.terraform-vpc-network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
