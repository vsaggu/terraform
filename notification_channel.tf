resource "google_monitoring_notification_channel" "notification_channel" {
  #count = "${length(var.notification_id)}"
  display_name = "${var.email_id}"
  type         = "email"
  labels = {
    email_address = "${var.email_id}"
  }
}