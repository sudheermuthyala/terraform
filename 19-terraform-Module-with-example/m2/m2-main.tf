resource "aws_instance" "web" {
  ami           = "ami-0760b951ddb0c20c9"
  instance_type = "t2.small"
  vpc_security_group_ids = [ var.SG ]
  tags = {
    Name = "HelloWorld"
  }
}

variable "SG" {
  
}