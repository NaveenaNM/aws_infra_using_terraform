resource "aws_instance" "this" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "MyInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.this.public_ip
}

