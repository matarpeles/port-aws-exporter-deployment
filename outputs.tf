output "function_arn" {
  description = "Name of the port exporter function"
  value       = module.port_aws_exporter.exporter_function_name
}

output "config_bucket_name" {
  description = "Name of the S3 bucket used by the port aws exporter"
  value       = module.port_aws_exporter.exporter_bucket_name
}

output "exporter_iam_role_arn" {
  description = "ARN of the IAM role associated with the port exporter Lambda function"
  value       = module.port_aws_exporter.exporter_lambda_function_iam_role_arn
}

output "events_queue_arn" {
  description = "ARN of the events queue"
  value       = module.port_aws_exporter.events_queue_arn
}

output "credentials_secret_arn" {
  description = "ARN of the exporter secret"
  value       = module.port_aws_exporter.events_queue_arn
}

