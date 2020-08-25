terraform {
  required_version = ">= 0.12"
}
variable "namespace" {
  type = string
}
variable "env" {
  type = string
}


variable "bucket" {}
variable "region" {}
variable "bucket_region" {}
variable "key" {}
terraform {
  backend "s3" {
    bucket = var.bucket
    key = var.key # hard coding since this is a less disposable
    region = var.region
  }
}


provider "aws" {
  region = var.region
}

module "codepipeline-docker" {
  source = "./main"
  env = var.env
  namespace = var.namespace
  
}