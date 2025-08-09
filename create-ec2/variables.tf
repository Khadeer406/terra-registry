variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = ""
}

variable "pem_key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = ""
}

variable "insatance_name" {
  description = "The name tag for the instance"
  type        = string
  default     = "test_ec2_modules"
  
}