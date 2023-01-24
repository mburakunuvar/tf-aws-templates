# Configure the AWS Provider
provider "aws" {
  shared_config_files      = ["/Users/buraku/.aws/config"]
  shared_credentials_files = ["/Users/buraku/.aws/credentials"]
  profile                  = "default"
}