resource "google_container_cluster" "primary" {
  name        = var.cluster-name
  project     = var.project-id
  description = "Demo GKE Cluster"
  location    = var.gke-location

  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "main-node-pool" {
  name       = "${var.cluster-name}-node-pool"
  project    = var.project-id
  location   = var.gke-location
  cluster    = google_container_cluster.primary.name
  node_count = var.node-count

  node_config {
    preemptible  = false
    machine_type = var.machine-type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}