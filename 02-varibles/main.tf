# Hear we are defining the varible using "Varible Block with default value"

variable "varible_name" {
  default = "Digibank"
}

# Hear we are printhing the varible vale Using the "outputs block"
output "Printing_varible_name" {
  value = var.varible_name
}


## Hear we are not defining any default value. This leeds to prompt the varible on CLI
variable "varible_with_out_default_value" {}

output "with_out_defaule_varible_value" {
  value = var.varible_with_out_default_value
}

## varibles without any combination can accessed as var.varible_name,
## But combination With some String We need to use ${var.varible_name} along with Double Quotes
## In Terraform single Quotes is not allowed
## Example
variable "varible_with_string" {
  default = "DIG-Bank"
}

output "Print_bank_Name" {
  value = "${var.varible_with_string}-What i am using"
}