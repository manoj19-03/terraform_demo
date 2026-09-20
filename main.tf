terraform {
  backend "s3" {
    bucket       = "demo-tf.state"
    key          = "terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "terraform-ec2-sg"
  description = "Allow SSH access to EC2"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [
    aws_security_group.ec2_sg.name
  ]

  tags = {
    Name = var.instance_name
  }
}