resource "aws_instance" "web" {
  ami           = "ami-0760b951ddb0c20c9"
  instance_type = "t2.small"
  count = 4
  tags = {
    Name = "HelloWorld-${count.index+1}"
  }
}

provider "aws" {
  region = "us-east-1"
}

output "public_ip" {
  value = aws_instance.web.*.public_ip
}