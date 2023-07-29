terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}


provider "newrelic" {
  account_id = 4039835
  api_key    = "NRAK-8TUPQ94T66XMO2NEKZIFV5R1Y1C"
  region     = "US"
}
