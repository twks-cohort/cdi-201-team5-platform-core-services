{
    "org_name": "team5",
    "cluster_name": "prod-us-east-2",
    "team_name": "team5",
    "stack_url": "https://team5201stack.grafana.net",
    "stack_management_token": "{{ op://cohorts/team5-201-svc-grafana/team5201stack_management_sa_key }}",
    "grafana_cloud_api_key": "{{ op://cohorts/team5-201-svc-grafana/admin-api-key }}",
    "prometheus_endpoint": "{{ op://cohorts/team5-201-platform-vcluster/prometheus_endpoint }}",
    "prometheus_password": "{{ op://cohorts/team5-201-platform-vcluster/prometheus_password }}",
    "node_exporter_port": "9105",
    "metrics_server_version": "v0.6.3",
    "prometheus_version": "v2.42.0",
    "grafana_agent_version": "v0.33.1",
    "alert_channel": "prod"
}
