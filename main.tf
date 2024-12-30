terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "my-terraform-states158" # Single S3 bucket for all workspaces
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
  tags        = var.tags
}
