terraform {
  required_version = ">= 0.12, < 0.13"
}
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "public-read"

  tags = {
    Name        = var.bucket_name
    Environment = var.env_name
  }
}
