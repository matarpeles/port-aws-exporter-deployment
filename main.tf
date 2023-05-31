module "port_aws_exporter" {
  source = "github.com/port-labs/port-aws-exporter-module"

  config        = var.config  # Update with the actual path to your configuration file
  bucket_name   = var.bucket_name  # Bucket for saving the config.json.
                                   # Default: if doesn't exist, create the bucket
  secret_name   = var.secret_name  # Secret for saving the Port credentials.
                                  # Default: if doesn't exist, create the secret
  function_name = var.function_name  # The Lambda name
}