provider "google" {
  credentials = "${file(var.credentials)}"
  project     = var.project_id
  region      = var.region
}

provider "google-beta" {
  credentials = "${file(var.credentials)}"
  project     = var.project_id
  region      = var.region
}

provider "helm" {
  kubernetes {
    host                   = google_container_cluster.this.endpoint
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(google_container_cluster.this.master_auth.0.cluster_ca_certificate)
  }
}
