resource "aws_s3_bucket" "my_bucket" {
  bucket = var.my_bucket_name
}

resource "aws_s3_bucket" "my_bucket1" {
  bucket = "my-xaviersavio-1899"
}