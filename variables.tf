variable "bucket" {
  type = string
  default = "ic-s3-deploy"
}

variable "acl" {
  type = string
  default = "private"
}

variable "force_destroy" {
  type = bool
  default = false
}
