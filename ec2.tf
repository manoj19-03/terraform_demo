resource "aws_instance" "my_ec2" {
  ami           = "ami-0c0fd09cfe77b59dc"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2-demo"
  }
}