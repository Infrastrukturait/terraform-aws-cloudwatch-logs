variable "kms_key_id" {
  type        = string
  default     = null
  description = <<EOT
The ARN of the KMS Key to use when encrypting log data.
Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group.
All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested."
EOT
}

variable "retention_in_days" {
  type        = number
  default     = 30
  description = <<EOT
Specifies the number of days you want to retain log events in the specified log group.
Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0.
If you select 0, the events in the log group are always retained and never expire.
Default to 30 days.
EOT
}

variable "logs_path" {
  type        = string
  description = "Path of the logs in CloudWatch."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Resource tags."
}
