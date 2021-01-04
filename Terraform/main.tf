provider "azurerm" {
  features{}
}


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