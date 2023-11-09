variable "bucket" {
  type = string
  default = "ic-s3-deploy"
}

variable "Project" {
  type = string
}

variable "Email" {
  type = string
}

variable "acl" {
  type = string
  default = "private"
}

variable "force_destroy" {
  type = bool
  default = false
}
