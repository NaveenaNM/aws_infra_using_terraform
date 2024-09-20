variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "my-terraform-bucket"
}

