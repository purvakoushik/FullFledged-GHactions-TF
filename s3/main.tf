resource "aws_s3_bucket" "website" {
  count  = length(var.resource_s3)
  bucket = var.resource_s3[count.index]

  tags = {
    owner   = "koushik.mahendra@cloudeq.com"
    purpose = "assignment"
  }
}