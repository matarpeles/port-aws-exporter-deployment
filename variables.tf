# Required variables

variable "config" {
  type    = string
  default = "config.json"
}

variable "bucket_name" {
  type    = string
  default = "port-aws-exporter"
}

variable "secret_name" {
  type    = string
  default = "port-credentials"
}

variable "function_name" {
  type    = string
  default = "my-port-exporter-function"
}

# Optional variables

variable "iam_permissions" {
  type    = string
  default = "path/to/iam/roles/file"
}

variable "create_bucket" {
  type        = bool
  description = "Whether to create the bucket or not"
  default     = true
}

variable "schedule_expression" {
  type        = string
  description = "The schedule expression for triggering the Lambda function"
}