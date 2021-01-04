provider "azurerm" {
  features{}
}


resource "Udacity_Devops_vm" "lesson4" {
    name = "UdacityLesson4"
    resource_group_name = "monaRG"
    location = "US East"
    
    source_image_reference {
      //for project this will be the packer template 
      publisher = "Canonical"
      offer = "UbuntuServer"
      sku = "18.04-LTS"
      version = "latest"  
    }
}