# Safer Terraform pattern for a baseline comparison.
resource "aws_s3_bucket" "demo" {
  bucket = "sdlc-poc-private-baseline-example"
}

resource "aws_s3_bucket_public_access_block" "demo" {
  bucket                  = aws_s3_bucket.demo.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
