bucket         = "my-terraform-states-staging"
key            = "terraform/staging/terraform.tfstate"
region         = "ap-south-1"
dynamodb_table = "terraform-locks"
encrypt        = true
