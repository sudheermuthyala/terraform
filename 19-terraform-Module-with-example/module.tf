module "my_aws_security_group" {
  source = "./m1"
  
}

module "my_aws_instance" {
  source = "./m2"
  SG = module.my_aws_security_group.sg_output
  
}
provider "aws" {
  region = "us-east-1"
}