resource "google_monitoring_alert_policy" "alert_policy" {
  count = "${var.alert_enable ? 1: 0 }"
  display_name = "${var.alert_name}"
  combiner     = "OR"
  notification_channels = ["${google_monitoring_notification_channel.notification_channel.*.id}"]
  enabled = "true"

  conditions {
    display_name = "${var.alert_name}"
    condition_threshold {
      filter     = "${var.filter}"
      threshold_value = "${var.threshold_value}"
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