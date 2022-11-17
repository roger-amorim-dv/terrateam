terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-east-1"
}

resource "aws_s3_bucket" "my_s3" {
  bucket = "my-s3-validated"
}

resource "aws_s3_bucket" "my_s3_new" {
  bucket = "my-s3-validated-new"
}