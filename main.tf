provider "aws" {
  region = "ap-south-1"
}

# Configure the backend to use S3 for state storage
terraform {
  backend "s3" {
    bucket         = "my-terraform-states-158"
    key            = "terraform/${terraform.workspace}/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

# Call EC2 Instance module
module "ec2_instance" {
  source = "./modules/ec2_instance"
  instance_type = var.instance_type
  ami            = var.ami_id
  key_name       = var.key_name
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}
