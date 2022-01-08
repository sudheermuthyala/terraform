resource "aws_instance" "web" {
  
  ami           = "ami-0760b951ddb0c20c9" 
  instance_type = "t2.small"
  count = var.create_resource ? 1 : 0
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
  tags = {
    Name = "HelloWorld-${count.index+1}"
  }

provisioner "remote-exec" {
  connection {
    host = self.public_ip
    user = "root"
    password = "DevOps321"
  }
  inline = [
    "yum install nginx -y",
    "systemctl start nginx",
    "systemctl enable nginx"
  ]
}

}

provider "aws" {
  region = "us-east-1"
}

output "public_ip" {
  value = aws_instance.web.*.public_ip
}

output "public_dns" {
  value = aws_instance.web.*.public_dns
}

# ## IF  false this will donot lauch any instance 
# variable "create_resource" {
#   default = false
# }

## IF  true this will lauch one instance 
variable "create_resource" {
  default = true
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

