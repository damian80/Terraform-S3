provider "aws" {
  region = "eu-west-2"  # London region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-damian-140225"  # Replace with a unique bucket name
}
