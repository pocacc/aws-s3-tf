module "aws_s3" {
  #source = "git::https://github.com/pocacc/aws-modules/tree/main/aws_s3_bucket"
   source = "github.com/pocacc/aws-modules/tree/main/aws_s3_bucket"
  
  bucket = var.bucket

}
