output "logs_path" {
  description = "Path of the logs in CloudWatch"
  value       = module.app_prod_logs.logs_path
}

output "log_group_name" {
  description = "The name of the log group."
  value       = module.app_prod_logs.log_group_name
}

output "log_group_retention_in_days" {
  description = "Specifies the number of days log events are retained"
  value       = module.app_prod_logs.log_group_retention_in_days
}

output "log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = module.app_prod_logs.log_group_arn
}

output "log_stream_name" {
  description = "The name of the log stream."
  value       = module.app_prod_logs.log_stream_name
}

output "log_stream_log_group_name" {
  description = "The name of the log group under which the log stream was created"
  value       = module.app_prod_logs.log_stream_log_group_name
}

output "log_stream_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log stream."
  value       = module.app_prod_logs.log_stream_arn
}
