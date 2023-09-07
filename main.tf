module "aws_s3" {
  source = "github.com/pocacc/aws-modules/aws_s3_bucket"
  
  bucket = var.bucket
}
