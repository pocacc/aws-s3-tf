variable "bucket" {
  type = string
}

variable "project" {
  type = string
}

variable "email" {
  type = string
}

variable "environment" {
  type = string
}

variable "backend" {
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
