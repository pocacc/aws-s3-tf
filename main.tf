resource "aws_s3_bucket" "bucket" {
  bucket = "ic-s3-deploy"
  force_destroy = var.force_destroy
  tags = {
    Name        = "ic-s3-deploy"
    Project     = "ic-idp"
    Environment = "Development"
    E-mail      = var.email
  }
}

resource "aws_s3_bucket_ownership_controls" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket" {
  depends_on = [aws_s3_bucket_ownership_controls.bucket]

  bucket = aws_s3_bucket.bucket.id
  acl    = var.acl
}
