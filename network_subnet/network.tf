
#Creating subnet for first Network
resource "google_compute_subnetwork" "first-network-with-private-secondary-ip-ranges" {
  name          = "my-subnetwork"
  project = "${var.project_id}"
  ip_cidr_range = "10.100.10.0/24"
  region        = "${var.compute-network-region}"
  network       = "${google_compute_network.my-first-network.self_link}"
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}

#Creating subnet for Second Network
resource "google_compute_subnetwork" "second-network-with-private-secondary-ip-ranges" {
  name          = "my-subnetwork"
  project = "${var.second_project_id}"
  ip_cidr_range = "10.100.20.0/24"
  region        = "${var.compute-second-network-region}"
  network       = "${google_compute_network.my-second-network.self_link}"
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.20.0/24"
  }
}

# Creating First Network
resource "google_compute_network" "my-first-network" {
  name = "${var.compute-network}"
  project = "${var.project_id}"
  auto_create_subnetworks = "false"
}

# Creating Second Network
resource "google_compute_network" "my-second-network" {
  name = "${var.compute-second-network}"
  project = "${var.second_project_id}"
  auto_create_subnetworks = "false"
}


