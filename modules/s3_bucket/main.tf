resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"

  tags = var.tags
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
