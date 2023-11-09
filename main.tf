resource "aws_s3_bucket" "bucket" {
  bucket = "ic-s3-deploy-asdf-affa"
  force_destroy = var.force_destroy
  tags = {
    Name        = "ic-s3-deploy"
    Project     = "ic-idp"
    Environment = "Development"
    E-mail      = "test-email"
  }
}

