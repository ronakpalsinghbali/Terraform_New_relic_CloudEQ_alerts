resource "newrelic_alert_policy" "my_policy" {
  name = "my_policy_with_count _loop"
}

resource "newrelic_nrql_alert_condition" "my_alert_cond" {
  count = length(var.my_loop)

  account_id                     = var.my_loop[count.index].account_id
  policy_id                      = newrelic_alert_policy.my_policy.id
  type                           = var.my_loop[count.index].type
  name                           = var.my_loop[count.index].name
  description                    = var.my_loop[count.index].description
  runbook_url                    = var.my_loop[count.index].runbook_url
  enabled                        = var.my_loop[count.index].enabled
  violation_time_limit_seconds   = var.my_loop[count.index].violation_time_limit_seconds
  fill_option                    = var.my_loop[count.index].fill_option
  fill_value                     = var.my_loop[count.index].fill_value
  aggregation_window             = var.my_loop[count.index].aggregation_window
  aggregation_method             = var.my_loop[count.index].aggregation_method
  aggregation_delay              = var.my_loop[count.index].aggregation_delay
  expiration_duration            = var.my_loop[count.index].expiration_duration
  open_violation_on_expiration   = var.my_loop[count.index].open_violation_on_expiration
  close_violations_on_expiration = var.my_loop[count.index].close_violations_on_expiration
  slide_by                       = var.my_loop[count.index].slide_by


  nrql {
    query = var.my_loop[count.index].nrql
  }

  critical {
    operator              = "above"
    threshold             = 5.5
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 3.5
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}
