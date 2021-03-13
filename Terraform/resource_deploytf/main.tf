//resource_deploy with Terraform
//https://classroom.udacity.com/nanodegrees/nd082/parts/07bea1bd-9a45-4e1e-b79d-4a17b32e9faf/modules/7ddc5964-272c-4ffe-8353-a52f51a090cb/lessons/a1bde9e8-95f4-4686-8022-c5ed0395a23d/concepts/12d4affb-564f-431f-aaca-0017678f8de7

//[Create an Azure Virtual Machine with Terraform](https://www.codeproject.com/Articles/5260755/Create-an-Azure-Virtual-Machine-with-Terraform)

provider "azurerm" {
  features {}
}

//resource group
resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-resources"
  location = var.location
#    tags = {
#       "environment" = "lesson 4 terraform_deploy"
#   }
}

//Public IP address 

# resource "azurerm_public_ip" "main" {
#   name = "acceptanceTestPublicIp1"
# resource_group_name  = azurerm_resource_group.main.name
# virtual_network_name = azurerm_virtual_network.main.name
# allocation_method   = "Static"

# #   tags = {
# #     environment = "lesson 4 terraform_deploy"
# #   }
# }

resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

#   tags = {
#       "environment" = "lesson 4 terraform_deploy"
#   }
}

//subnet
resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
  
}


//network interface 
resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
     //tags = {
      //"environment" = "lesson 4 terraform_deploy"
  //}
  }
}


//virtual machine 
resource "azurerm_linux_virtual_machine" "main" {
  name                            = "${var.prefix}-vm"
  resource_group_name             = azurerm_resource_group.main.name
  location                        = azurerm_resource_group.main.location
  size                            = "Standard_B1s"
  admin_username                  = "adminuser"
  admin_password                  = "P@ssw0rd1234!"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
}