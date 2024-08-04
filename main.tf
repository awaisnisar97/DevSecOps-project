provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "devsecops-tf" {
  bucket = "devsecops-tf"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "devsecops-tf"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}