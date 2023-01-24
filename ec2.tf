
# Terraform Data Block - To Lookup Latest Ubuntu 20.04 AMI Image
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

# Terraform Resource Block - To Build EC2 instance in Public Subnet
resource "aws_instance" "ec2_ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnets["public_subnet_1"].id
  tags = {
    Name = "Terraform Ubuntu EC2 Server"
  }
}

resource "aws_instance" "ec2_amazon_linux" {
  ami           = "ami-0ceecbb0f30a902a6"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0e7c67e16a6698372"
  tags = {
    Name = "Terraform Amazon Linux EC2"
  }
}