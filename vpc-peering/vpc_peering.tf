
data "google_compute_network" "my-first-network" {
  name = "${var.first-network}"
  project = "${var.project1-peering}"
}

data "google_compute_network" "my-second-network" {
  name = "${var.second-network}"
  project = "${var.project2-peering}"
}

resource "google_compute_network_peering" "peering1" {
  name = "peering1"
  network = "${data.google_compute_network.my-first-network.self_link}"
  peer_network = "${data.google_compute_network.my-second-network.self_link}"
  auto_create_routes = "true"
}

resource "google_compute_network_peering" "peering2" {
  name = "peering2"
  network = "${data.google_compute_network.my-second-network.self_link}"
  peer_network = "${data.google_compute_network.my-first-network.self_link}"
  auto_create_routes = "true"
}

