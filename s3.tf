terraform {
  backend "s3" {
    bucket = "sanjeevcloud"
    key    = "mycloud/terraform.tfstate"
    region = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}

resource "aws_s3_bucket" "simple_bucket" {
  bucket = "sanjeevcloud"
  acl    = "private"

  tags = {
    Name = "myBucketTagName"
  }
}