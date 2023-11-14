terraform {
  backend "s3" {
    bucket = "ic-github-tf-states"
    key    = "backstage/aws/${{ values.environment }}/${{ values.bucket }}"
    region = ${{ values.region }}
  }
}
