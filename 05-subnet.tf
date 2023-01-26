# resource "aws_subnet" "custom_subnet" {
#   #   vpc_id            = aws_vpc.vpc.id
#   #   cidr_block        = "10.0.250.0/24"
#   #   availability_zone = "us-west-2a"
#   vpc_id                  = aws_vpc.vpc.id
#   cidr_block              = var.custom_subnet_cidr
#   availability_zone       = var.custom_subnet_az
#   map_public_ip_on_launch = var.custom_subnet_auto_ip
#   tags = {
#     # Name      = "custom_subnet-us-west-2a"
#     Name      = "custom-subnet-${var.custom_subnet_az}"
#     Terraform = "true"
#   }
# }