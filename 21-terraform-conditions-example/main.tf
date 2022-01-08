resource "aws_instance" "web" {
  
  ami           = "ami-0760b951ddb0c20c9"
  instance_type = "t2.small"
  count = var.create_resource ? 1 : 0
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

# ## IF  false this will donot lauch any instance 
# variable "create_resource" {
#   default = false
# }

## IF  true this will lauch one instance 
variable "create_resource" {
  default = true
}