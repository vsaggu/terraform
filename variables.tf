variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-b"
}

variable "display_name" {
  description = ""
}

variable "filter" {
  description = ""
  default = "metric.type=\"compute.googleapis.com/instance/disk/write_bytes_count\" AND resource.type=\"gce_instance\""
}

variable "duration" {
  description = ""
  default = "60s"
}

variable "alignment_period" {
  description = ""
  default = "60s"
}

variable "notification_id" {
  description = ""
}

variable "email_id" {
  description = ""
}