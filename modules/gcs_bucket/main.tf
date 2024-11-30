resource "google_storage_bucket" "gcs_bucket" {
  name          = var.gcs_bucket_name
  location      = var.gcs_bucket_location
  storage_class = var.gcs_bucket_storage_class

  labels = var.gcs_bucket_labels
}