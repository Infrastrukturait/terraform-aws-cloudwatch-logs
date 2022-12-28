resource "aws_cloudwatch_log_group" "this" {
  name              = var.logs_path
  retention_in_days = var.retention_in_days
  kms_key_id        = var.kms_key_id
  tags              = var.tags
}

resource "aws_cloudwatch_log_stream" "this" {
  name           = var.logs_path
  log_group_name = aws_cloudwatch_log_group.this.name
}
