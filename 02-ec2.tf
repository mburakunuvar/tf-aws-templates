

# # Terraform Resource Block - To Build EC2 instance in Public Subnet
# resource "aws_instance" "ec2_ubuntu" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t3.micro"
#   subnet_id     = aws_subnet.public_subnets["public_subnet_1"].id
#   tags = {
#     Name = "Terraform Ubuntu EC2 Server"
#   }
# }

# resource "aws_instance" "ec2_amazon_linux" {
#   ami           = "ami-0ceecbb0f30a902a6"
#   instance_type = "t3.micro"
#   subnet_id     = "subnet-0e7c67e16a6698372"
#   tags = {
#     # Name = "Terraform Amazon Linux EC2"
#     Name  = local.server_name
#     Owner = local.team
#     App   = local.application
#   }
# }