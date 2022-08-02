terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.23.0"
      }
    }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket-1" {
  bucket = "olufolarin-s3-bucket"
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.bucket-1.id
  versioning_configuration {
    status = "Enabled"
  }
}

# creating an AWS iam user
resource "aws_iam_user" "my_iam_user" {
  name = "folarin_iam_user"
}