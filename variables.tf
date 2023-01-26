variable "aws_region" {
  type    = string
  default = "us-west-2"
}
variable "vpc_name" {
  type    = string
  default = "Terraform-Demo-VPC"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "private_subnets" {
  default = {
    "private_subnet_1" = 0
    "private_subnet_2" = 1
    "private_subnet_3" = 2
  }
}
variable "public_subnets" {
  default = {
    "public_subnet_1" = 0
    "public_subnet_2" = 1
    "public_subnet_3" = 2
  }
}

variable "custom_subnet_cidr" {
  description = "CIDR Block for Custom Subnet"
  type        = string
  default     = "10.0.250.0/24"

}

variable "custom_subnet_az" {
  description = "AZ for Custom Subnet"
  type        = string
  default     = "us-west-2a"

}
variable "custom_subnet_auto_ip" {
  description = "Auto IP Assignment for Custom Subnet"
  type        = bool
  default     = true

}

variable "environment" {
  description = "AZ for Custom Subnet"
  type        = string
  default     = "dev"

}