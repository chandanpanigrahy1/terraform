resource {
  account_id = "218009773641"
  region     = "ap-south-1"
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATFQTFEZE6VKZUC7R"
  secret_key = "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"
}
resource "aws_instance" "ec2" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0119d1f6bda0698fa"
  tags = {
    Name = "HelloWorld"
    }
}