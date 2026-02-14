provider "aws" {
    region = var.region
  
}

resource "aws_s3_bucket" "mybucket" {
    bucket = var.name
  
}

resource "aws_s3_bucket_acl" "mybucket_acl" {
    bucket = aws_s3_bucket.mybucket.bucket
    acl = var.acl
  
}