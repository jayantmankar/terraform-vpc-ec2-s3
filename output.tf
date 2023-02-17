output "private_instance_ip_addr" {
  value = aws_instance.myec2[*].private_ip
}
output "public_instance_ip_addr" {
  value = aws_instance.myec2[*].public_ip
}
