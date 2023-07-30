terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}


provider "newrelic" {
  account_id = 4039835
  api_key    = "*****************"
  region     = "US"
}
