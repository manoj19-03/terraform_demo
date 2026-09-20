output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.my_ec2.id
}

output "instance_public_ip" {
  description = "EC2 public IP address"
  value       = aws_instance.my_ec2.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance"
  value       = "ssh -i ~/downloads/jala.pem.pem ubuntu@${aws_instance.my_ec2.public_ip}"
}