module "port_aws_exporter" {
  source = "github.com/port-labs/port-aws-exporter-module"

  config        = "config.json"  # Update with the actual path to your configuration file
  bucket_name   = "port-aws-exporter"  # Bucket for saving the config.json.
                                       # Default: if doesn't exist, create the bucket
  secret_name   = "port-credentials"  # Secret for saving the Port credentials.
                                      # Default: if doesn't exist, create the secret
  function_name = "my-port-exporter-function"  # The Lambda name
  iam_permissions     = "path/to/iam/roles/file"  # Optional - Path to a file containing the permissions to set for the Lambda.
                                                  # Default - creating a role with permissions to use
                                                  # CloudControl / CloudFormation API for all resources
}