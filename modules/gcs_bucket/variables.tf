variable "gcs_bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "gcs_bucket_location" {
  description = "The location for the bucket"
  type        = string
  default     = "US"
}

variable "gcs_bucket_storage_class" {
  description = "The storage class for the bucket"
  type        = string
  default     = "STANDARD"
}

variable "gcs_bucket_labels" {
  description = "A map of labels to assign to the bucket"
  type        = map(string)
  default     = {}
}