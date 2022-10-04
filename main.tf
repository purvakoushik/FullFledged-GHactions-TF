module "ec2_instance" {
  source       = ".//ec2"
  resource_ec2 = var.ec2_count
}

module "s3_bucket" {
  source      = ".//s3"
  resource_s3 = var.s3_count
}
