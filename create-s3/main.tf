terraform {
  backend "s3" {
    bucket = "my-s3-new-backend-bucket-prod"
    key    = "prod/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

resource "aws_s3_bucket" "backend_s3" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "enable_versioning" {
  bucket = aws_s3_bucket.backend_s3.id
  versioning_configuration {
    status = var.versioning_status
  }
  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "enable_sse" {
  bucket = aws_s3_bucket.backend_s3.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
  
}