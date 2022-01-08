## Variable - Data Types
/*
Strinng Data-Type
Number Data-Types
Boolean Data Type
*/
## Strinng Data-Type
## string Data should Be Quoted in Double Qoutes,
variable "sample_1_Strinng_Data_Type" {
  default = "HelloWorld"
}

output "sample-1" {
  value = var.sample_1_Strinng_Data_Type
}
## Number Data-Types
## Number & Booleans Data-Types Need Not to Be Quoted
variable "sample_2_Number_Data_Type" {
  default = 1000
}
output "sample-2" {
  value = var.sample_2_Number_Data_Type
}

## Boolean Data Type
## Number & Booleans Data-Types Need Not to Be Quoted
variable "sample_3_Boolean_Data_Type" {
  default = true
}
output "Is_DevOps_Is_Leading_the_Market" {
  value = var.sample_3_Boolean_Data_Type
}



## Terraform Only supports Only DoubleQuotes Not a Single Quotes
