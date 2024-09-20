# Provider configuration
provider "aws" {
  region = var.aws_region
}

# Call VPC module
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

# Call EC2 module
module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
}

# Call S3 module
module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
}

