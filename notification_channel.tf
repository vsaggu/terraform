resource "google_monitoring_notification_channel" "notification_channel" {
  display_name = "${var.display_name}"
  type         = "email"
  labels = {
    email_address = "${var.email_id}"
  }
}