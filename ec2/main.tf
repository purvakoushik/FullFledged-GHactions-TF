resource "aws_instance" "web" {
  for_each      = var.resource_ec2
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"

  tags = {
    name    = each.value
    owner   = "koushik.mahendra@cloudeq.com"
    purpose = "assignment"
  }
}
