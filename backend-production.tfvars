bucket         = "my-terraform-states-production"
key            = "terraform/production/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-locks"
encrypt        = true
