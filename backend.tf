terraform {
  backend "s3" {
    bucket = "ic-github-tf-states"
    key    = var.backend
    region = var.region
  }
}
