output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.ec2_sg.id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.my_ec2.id
}

output "instance_public_ip" {
  description = "EC2 public IP"
  value       = aws_instance.my_ec2.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to EC2"
  value       = "ssh -i ~/Downloads/jala.pem.pem ubuntu@${aws_instance.my_ec2.public_ip}"
}