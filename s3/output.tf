output "s3_bucket_id" {
  value = [for i in aws_s3_bucket.website : i.id]
}
