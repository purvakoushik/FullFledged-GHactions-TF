resource "aws_instance" "web" {
  count         = length(var.resource_ec2)
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"

  tags = {
    Name    = var.resource_ec2[count.index]
    Owner   = "koushik.mahendra@cloudeq.com"
    Purpose = "assignment"
  }
}
