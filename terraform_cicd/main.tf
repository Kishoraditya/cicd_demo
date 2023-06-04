terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.1.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  access_key = "AKIA5UH3UAQFYWJZS2PI"
  secret_key = "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"
}

resource "aws_s3_bucket" "myfirstbucket"{
    bucket = "first-terraform-awss3-cicd-demo-bucket"
    acl = "private"
    tags = {
        Name = "first-terraform-awss3-cicd-demo-bucket"
    }
    versioning {
        enabled = true
    }
}