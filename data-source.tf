provider "grafana" {
  url           = var.stack_url
  auth          = var.stack_management_token
  cloud_api_key = var.grafana_cloud_api_key
}

resource "grafana_data_source" "prometheus" {
  type                = "prometheus"
  name                = "cohort-prometheus"
  url                 = "http://${var.prometheus_endpoint}"
  is_default          = true
  basic_auth_enabled  = true
  basic_auth_username = "admin"
  uid                 = "pe-prometheus-datasource"

  json_data_encoded = jsonencode({
    manageAlerts = false
  })
  secure_json_data_encoded = jsonencode({
    basicAuthPassword = var.prometheus_password
  })
}

resource "grafana_cloud_plugin_installation" "github_plugin" {
  stack_slug = "team5201stack"
  slug       = "grafana-github-datasource"
  version    = "1.4.6"
}

resource "grafana_data_source" "github" {
  type = "github"
  name = "cohort-github"

  json_data_encoded = jsonencode({
    repository = "twks-cohort/cdi-201-team5-platform-core-services"
  })
  secure_json_data_encoded = jsonencode({
    accessToken = var.github_access_token
  })
}
