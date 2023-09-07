module "aws_s3" {
  source = "github.com/pocacc/aws-modules-demo/aws_s3_module.git"
  
  bucket = var.bucket
}
