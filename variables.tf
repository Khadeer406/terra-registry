variable "bucket_name" {
  description = "my-s3-new-backend-bucket-prod"
  type        = string
  default     = "my-s3-new-backend-bucket-prod"  
  
}

variable "versioning_status" {
  description = "The versioning status of the S3 bucket (Enabled or Suspended)."
  type        = string
  default     = "Enabled"
  
}