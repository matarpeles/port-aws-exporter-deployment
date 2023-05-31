module "port_aws_exporter" {
  source = "github.com/port-labs/port-aws-exporter-module"

  config        = var.config  # Update with the actual path to your configuration file
  bucket_name   = var.bucket_name  # Bucket for saving the config.json.
                                   # Default: if doesn't exist, create the bucket
  secret_name   = var.secret_name  # Secret for saving the Port credentials.
                                  # Default: if doesn't exist, create the secret
  function_name = var.function_name  # The Lambda name
  iam_permissions = var.iam_permissions  # Optional - Path to a file containing the permissions to set for the Lambda.
                                              # Default - creating a role with permissions to use
                                              # CloudControl / CloudFormation API for all resources
  create_bucket = var.create_bucket # Optional - flag to determine whether to create a bucket for the configuration file

}