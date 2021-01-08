
## Azure provider information 
provider "azurerm" {
  features{}
}


# Resource group information 

resource "Udacity_Devops_vm" "lesson4" {
    name = "{var.prefix}-vm"
    resource_group_name = azurerm_resource_group.example.name
    location = var.location
    
    source_image_reference {
      //for project this will be the packer template 
      publisher = "Canonical"
      offer = "UbuntuServer"
      sku = "18.04-LTS"
      version = "latest"  
    }
}

## ***Don't forget to add tags*** 
# Virtual Network 
# subnet
#public IP 
# network security 
# VM Seucurity Rules
# load balancer
# network interface 
# linux VM machine 


