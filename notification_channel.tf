resource "google_monitoring_notification_channel" "notification_channel" {
  display_name = "${var.notification_id}"
  type         = "email"
  labels = {
    email_address = "${var.notification_id}"
  }
}