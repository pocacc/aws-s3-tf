#module "aws_s3" {
#  source = "github.com/pocacc/aws-modules-demo/aws_s3_module/"
#  
#  bucket        = var.bucket
#  acl           = var.acl
#  force_destroy = var.force_destroy
#
#  tags = {
#    Name        = var.bucket
#    Environment = "Production"
#    E-mail      = var.email
#  }
#}


resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket
  force_destroy = var.force_destroy
  default_tags {
    tags = {
      Environment     = "Deployment"
      Project         =  var.bucket
      E-mail          =  var.email
      Name            =  var.bucket
    }
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
