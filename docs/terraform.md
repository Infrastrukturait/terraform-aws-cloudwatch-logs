<!-- BEGIN_TF_DOCS -->
## Documentation


### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.48.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_stream.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN of the KMS Key to use when encrypting log data.<br>Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group.<br>All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested." | `string` | `null` | no |
| <a name="input_logs_path"></a> [logs\_path](#input\_logs\_path) | Path of the logs in CloudWatch. | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | Specifies the number of days you want to retain log events in the specified log group.<br>Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0.<br>If you select 0, the events in the log group are always retained and never expire.<br>Default to 30 days. | `number` | `30` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags. | `map(string)` | `{}` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_group_arn"></a> [log\_group\_arn](#output\_log\_group\_arn) | The Amazon Resource Name (ARN) specifying the log group. |
| <a name="output_log_group_name"></a> [log\_group\_name](#output\_log\_group\_name) | The name of the log group. |
| <a name="output_log_group_retention_in_days"></a> [log\_group\_retention\_in\_days](#output\_log\_group\_retention\_in\_days) | Specifies the number of days log events are retained |
| <a name="output_log_stream_arn"></a> [log\_stream\_arn](#output\_log\_stream\_arn) | The Amazon Resource Name (ARN) specifying the log stream. |
| <a name="output_log_stream_log_group_name"></a> [log\_stream\_log\_group\_name](#output\_log\_stream\_log\_group\_name) | The name of the log group under which the log stream was created |
| <a name="output_log_stream_name"></a> [log\_stream\_name](#output\_log\_stream\_name) | The name of the log stream. |
| <a name="output_logs_path"></a> [logs\_path](#output\_logs\_path) | Path of the logs in CloudWatch |

### Examples

```hcl
module "app_prod_logs" {
  source = "../../"

  logs_path         = var.logs_path
  retention_in_days = var.retention_in_days
}
```

<!-- END_TF_DOCS -->
