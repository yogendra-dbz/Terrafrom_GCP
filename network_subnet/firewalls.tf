#Firewall rule for first network
resource "google_compute_firewall" "my-network-firewall" {
  name    = "test-firewall"
  project = "${var.project_id}"
  network = "${google_compute_network.my-first-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80", "8080", "1000-2000"]
	
  }
  
   source_tags = ["web"]
}

#Firewall rule for second network
resource "google_compute_firewall" "my-network" {
  name    = "test-firewall"
  project = "${var.second_project_id}"
  network = "${google_compute_network.my-second-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22","80", "8080", "1000-2000"]
	}
  
  source_tags = ["web"]
}