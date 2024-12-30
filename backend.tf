terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "my-terraform-states-${terraform.workspace}"
    key            = "terraform/${terraform.workspace}/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
  tags        = var.tags
}
