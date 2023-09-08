module "aws_s3" {
  source = "github.com/pocacc/aws-modules-demo/aws_s3_module/"
  
  bucket        = var.bucket
  acl           = var.acl
  force_destroy = var.force_destroy

  tags = {
    Name        = var.bucket
    Project     = var.project
    Environment = var.environment
  }
}
