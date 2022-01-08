## Terraform provisioners 
- Terraform provisioners are used to execute certain tasks after resource creation,
- For Exampele, Connect to instance and perform some commands,copy some files to the instance that got created.
- Resource Attributes can be used inside provisioner and those should be reffered as `self.<attribute>`
- provisioner by default are `create-time-provisioners` and we can also specify `destroy-time-provisioners`
- we cane make multiple provisioners and provisioners type also in the same resource.
- [Example provisioners code](https://dev.azure.com/sudheerlikeu/D54/_git/terraform?path=/23-terraform-provisioners-example/main.tf)
![](2022-01-04-12-32-35.png)



