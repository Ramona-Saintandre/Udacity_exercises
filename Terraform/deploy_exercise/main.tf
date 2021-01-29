// provider 

provider "aurerm" {
  features{}
}

// resource group 

resource "auzrem_linux_virtual_machine" "example" {
    //name = "myLinuxVm"
    name = "${var.prefix}-vm"
    resource_group_name = "myUdacityRG"
    //location = "US East"
    location = var.location
   //**need to add a tag 
   //image 

source_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    version = "latest"
     //**need to add a tag 
     tags = {
         "environment" = "deployment exercise"
     }
 }
}

# //virtual network
# //**need to add a tag 
#      tags = {
#          "environment" = "deployment exercise"
#      }
# //subnet
# //**need to add a tag 
#      tags = {
#          "environment" = "deployment exercise"
#      }
# //public IP
# //**need to add a tag 
#      tags = {
#          "environment" = "deployment exercise"
#      }
# //network security 
# //**need to add a tag 
#      tags = {
#          "environment" = "deployment exercise"
#      }
# //vm security
# //**need to add a tag 
#      tags = {
#          "environment" = "deployment exercise"
#      }
# //load balancer
# //**need to add a tag 
#      tags = {
#          "environment" = "deployment exercise"
#      }

