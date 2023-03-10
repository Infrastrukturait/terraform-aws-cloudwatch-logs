output "logs_path" {
  description = "Path of the logs in CloudWatch"
  value       = var.logs_path
}

output "log_group_name" {
  description = "The name of the log group."
  value       = aws_cloudwatch_log_group.this.name
}

output "log_group_retention_in_days" {
  description = "Specifies the number of days log events are retained"
  value       = aws_cloudwatch_log_group.this.retention_in_days
}

output "log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = aws_cloudwatch_log_group.this.arn
}

output "log_stream_name" {
  description = "The name of the log stream."
  value       = aws_cloudwatch_log_stream.this.name
}

output "log_stream_log_group_name" {
  description = "The name of the log group under which the log stream was created"
  value       = aws_cloudwatch_log_stream.this.log_group_name
}

output "log_stream_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log stream."
  value       = aws_cloudwatch_log_stream.this.arn
}
