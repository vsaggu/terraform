variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-b"
}

variable "display_name" {
  description = ""
  default = ""
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

variable "email_id" {
  description = ""
  default = ""
}

variable "alert_enable" {
  description = ""
  default = "0"
}

####################
# LOGS BASED METRICS
variable "logmetric_name" {
  description = ""
  default = ""
}
variable "logmetric_filter" {
  description = ""
  default = ""
}
variable "logmetric_metrickind" {
  description = ""
  default = "DELTA"
}
variable "logmetric_valuetype" {
  description = ""
  default = "INT64"
}
variable "logmetric_enable" {
  description = ""
  default = "0"
}