module "app_prod_logs" {
  source = "../../"

  logs_path         = var.logs_path
  retention_in_days = var.retention_in_days
}
