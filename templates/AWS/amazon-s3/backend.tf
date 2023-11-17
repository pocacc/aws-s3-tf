terraform {
  backend "s3" {
    bucket = "ic-github-tf-states"
    key    = ${{ values.backend }}
    region = ${{ values.region }}
  }
}
