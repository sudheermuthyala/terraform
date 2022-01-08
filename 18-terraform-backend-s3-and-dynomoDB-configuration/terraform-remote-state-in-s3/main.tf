terraform {
  backend "s3" {
    bucket = "terraformsud"
    key    = "rk/terraform.tfstate"
    region = "us-east-1"
  }
}

output "name" {
    value = "SudheerNaidu"
}
## In this we ar doing using the trraform remote state S3. The state state file is creating in the s3 bucket 