variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
  type        = string
}

