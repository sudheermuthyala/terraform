# Default Varibles
variable "Default_Varible_Type" {
  default = "HelloWorld"
}
output "sample-1_Default_Varible_Type" {
  value = var.Default_Varible_Type
}

### List Varibles
variable "List_Variable_Type" {
  ## default = ["Muthyala","sudheer","Naidu",1000,true ]  OR
  default = [
    "Muthyala",
    "sudheer",
    "Naidu",
    1000,
    true
  ]
}

output "sample-2_List_Variable_String" {
  value = var.List_Variable_Type[0]
}
output "sample-3_List_Variable_Type_String" {
  value = var.List_Variable_Type[1]
}
output "sample-4_List_Variable_Type_string" {
  value = var.List_Variable_Type[2]
}
output "sample-5_List_Variable_Type_Number" {
  value = var.List_Variable_Type[3]
}
output "sample-6_List_Variable_Type_Boolean" {
  value = var.List_Variable_Type[4]
}

## Map Varibles
variable "Map_varible_Type" {
   default = {
     "Name" = "Muthyala Sudheer Naidu"
     "cource" = "DevOps With AWS"
     "B.Tech" = "Mechanical Engineering"
     "Colege" = "SVCN"
     "City"   = "Bangalore"
   }
}

output "sample_1_Map_varible_Type_Name" {
  value = var.Map_varible_Type["Name"]
}
output "sample_2_Map_varible_Type_cource" {
  value = var.Map_varible_Type["cource"]
}
output "sample_3_Map_varible_Type_B_Tech" {
  value = var.Map_varible_Type["B.Tech"]
}
output "sample_4_Map_varible_Type_Colege" {
  value = var.Map_varible_Type["Colege"]
}
output "sample_5_Map_varible_Type_City" {
  value = var.Map_varible_Type["City"]
}


## NOTE : Terraform Supports multiple data types in sigle list or map varibles Need Not To be Same Data Type