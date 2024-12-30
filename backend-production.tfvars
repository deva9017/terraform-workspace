bucket         = "my-terraform-states-production"
key            = "terraform/production/terraform.tfstate"
region         = "ap-south-1"
dynamodb_table = "terraform-locks"
encrypt        = true
