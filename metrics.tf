resource "google_monitoring_alert_policy" "alert_policy" {
  display_name = "${var.display_name}"
  combiner     = "OR"
  #notification_channels = ["${var.notification_id}"]
  notification_channels = ["${google_monitoring_notification_channel.notification_channel.id}"]

  conditions {
    display_name = "test condition"
    condition_threshold {
      filter     = "${var.filter}"
      duration   = "${var.duration}"
      comparison = "COMPARISON_GT"
      aggregations {
        alignment_period   = "${var.alignment_period}"
        per_series_aligner = "ALIGN_RATE"
      }
    }
  }

  user_labels = {
    foo = "bar"
  }
}