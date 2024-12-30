terraform {
  required_version = ">= 1.0.0"
  backend "s3" {}
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
  tags        = var.tags
}
