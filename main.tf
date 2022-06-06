provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ec2" {
  ami           = "079b5e5b3971bd10d"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0119d1f6bda0698fa"
  tags = {
    Name = "HelloWorld"
    }
}