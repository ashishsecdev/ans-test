resource "google_compute_instance" "master" {
  name = "ansible-master"
  machine_type = var.master_instance
  tags = [
    "ansible",
    "master"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata_startup_script = file("${path.module}/m_test.sh")
}

resource "google_compute_instance" "node1" {
  name = "ansible-node1"
  machine_type = var.node_instance
  tags = [
    "ansible",
    "node-1"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }

}

resource "google_compute_instance" "node2" {
  name = "ansible-node2"
  machine_type = var.node_instance
  tags = [
    "ansible",
    "node-2"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }

}