data "aws_caller_identity" "current" {}

module "app_prod_logs_label" {
  source  = "cloudposse/label/null"
  version = "v0.25.0"

  namespace  = "app"
  stage      = "prod"
  name       = "logs"
  attributes = ["private"]
  delimiter  = "-"

  tags = {
    "BusinessUnit" = "XYZ",
  }
}

module "app_prod_logs_key" {
  source                  = "Infrastrukturait/kms-key/aws"
  version                 = "0.1.0"
  description             = "This key is used to logs"
  deletion_window_in_days = 10
  enable_key_rotation     = false
  policy = templatefile("${path.module}/templates/kms_key_policy.tftpl", {
    policy_id  = "encryption-${var.logs_path}",
    account_id = data.aws_caller_identity.current.account_id,
    region     = var.region
  })

  tags = module.app_prod_logs_label.tags
}

module "app_prod_logs" {
  source = "../../"

  logs_path         = var.logs_path
  retention_in_days = var.retention_in_days
  kms_key_id        = module.app_prod_logs_key.key_arn

  tags = module.app_prod_logs_label.tags
}
