provider "google" {
  project = "primal-gear-436812-t0" 
  region = "us-central1"
}

resource "google_computance_instance" "default" {
  name = "ansible-instance"
  machine_type = "e2-medium"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-9"  # Correct image family
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
