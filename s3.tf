resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "s3-tf-demo-mbu"
  tags = {
    Name    = "s3-tf-demo-mbu"
    Purpose = "Terraform Demonstration"
  }
}

resource "aws_s3_bucket_acl" "my-s3-bucket-acl" {
    bucket = aws_s3_bucket.my-s3-bucket.id
    acl = "private"
}

