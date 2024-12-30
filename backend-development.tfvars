bucket         = "my-terraform-states-development"
key            = "terraform/development/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-locks"
encrypt        = true
