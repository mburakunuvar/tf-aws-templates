locals {
  team        = "api_mgmt_dev"
  application = "corp_api"
  server_name = "ec2-${var.environment}-api-${var.custom_subnet_az}"
}

