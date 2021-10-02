provider "google" {
  credentials = file("./centering-aegis-327602-dce0d4a083a2.json")
}

resource "google_container_cluster" "dev_cluster" {
  name          = var.name
  project       = var.project
  description   = "Demo  GKE Cluster"
  location      = var.location

  
  
  enable_legacy_abac        = true
  remove_default_node_pool  = true
  initial_node_count        = var.initial_node_count

  master_auth {
      username = ""
      password = ""

     client_certificate_config {
      issue_client_certificate = false
     } 
   }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "${var.name}-node-pool"
  project    = var.project
  location   = var.location
  cluster    = google_container_cluster.dev_cluster.name
  node_count = var.initial_node_count

  node_config {
    preemptible  = true
    machine_type = var.machine_type
    
     metadata = {
      disable-legacy-endpoints = "true"
     }
     
      oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]


   }
}