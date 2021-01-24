provider "aurerm" {
  features{}
}

[...]
resource "auzrem_linux_virtual_machine" "example" {
    name - "myLinuxVm"
    resource_group_name = "myUdacityRG"
    location = "US East"
    [...]
source_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    version = "latest"
 }
}

