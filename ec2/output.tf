output "ec2_instance_id" {
  value = [for i in aws_instance.web : i.id]
}
