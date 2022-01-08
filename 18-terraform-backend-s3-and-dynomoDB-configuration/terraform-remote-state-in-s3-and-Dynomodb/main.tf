terraform {
  backend "s3" {
    bucket = "terraformsud"
    key    = "rk/dynomodb/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraformdheeropsdev"
  }
}


output "name" {
    value = "SudheerNaidu"
}




## In this we ar doing using the trraform remote state S3. The state state file is creating in the s3 bucket 
## And we are locking the state file 
## dynamodb_table - (Optional) Name of DynamoDB Table to use for state locking and consistency. The table must have a partition key named LockID with type of String. If not configured, state locking will be disabled.