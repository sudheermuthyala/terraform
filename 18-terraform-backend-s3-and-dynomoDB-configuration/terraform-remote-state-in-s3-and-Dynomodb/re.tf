resource "null_resource" "sleep"{
   provisioner "local-exec" {
   command = "sleep 60"
    }
}