variable "region" {
  type        = string
  description = "AWS region."
}

variable "logs_path" {
  type        = string
  description = "Path of the logs in CloudWatch."
}

variable "retention_in_days" {
  type        = number
  description = <<EOT
Specifies the number of days you want to retain log events in the specified log group.
Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0.
If you select 0, the events in the log group are always retained and never expire.
Default to 30 days.
EOT
}
