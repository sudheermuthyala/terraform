## This will be using Terraform.tfvars file There we decided the "sample" varible

variable "sample" {}

/* -> Hear we are not definning any varible in this varible block
   -> But Varible is passing Through terraform.tfvars file
   -> sample = "This is a sample Variable is comming form terraform.tfvars file"
   -> If you have the terraform.tfvars file the values inside that will be loded
   -> if empty varibles are decleared it just loads the perticular values and it will start using it
*/
output "Printing_sample" {
  value = var.sample
}