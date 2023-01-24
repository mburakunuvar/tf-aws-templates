resource "random_id" "random-bucket-name" {
  byte_length = 6
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "s3-tf-${random_id.random-bucket-name.hex}"
  tags = {
    Name    = "s3-tf-mbu"
    Purpose = "Terraform Demonstration"
  }
}

resource "aws_s3_bucket_acl" "my-s3-bucket-acl" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  acl    = "private"
}

