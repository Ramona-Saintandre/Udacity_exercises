Here, we create a Terraform configuration. To deploy our configuration, we run the following commands:

**terraform plan -out <filename>**

**terraform apply**  

In order to complete the tutorial, you'll need to reference the [Terraform documentation](https://www.terraform.io/docs/providers/azurerm/index.html),   
and especially for the Public IP section, you'll want the documentation on [Public IP](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip).  



## Deploy a Linux Server in Azure

Using the template at https://github.com/terraform-providers/terraform-provider-azurerm/tree/master/examples/virtual-machines/linux/basic-password,   
change main.tf and vars.tf so that we deploy the same infrastructure that we deployed in the Azure portal.  

**Task List**

1. Reduce the network size to contain 256 ip addresses, so the one subnet spans the entire IP space
2. Use a standard D2s v3 size virtual machine 
3. Change the virtual machine image to be the latest Ubuntu Server 18.04 LTS 
4. Modify the username and password to be user configurable in the main.tf
5. Add a public IP address to the configuration 
6. Run `terraform init` to get started 
7. Run `terraform plan` to apply your plan and deploy your infrastructure 
8. Run `terraform apply` to apply your plan and deploy your infrastructure 
9. Run `terraform show` to see your new infrastructure 
10. Using the Azure CLI or the portal - go check out your new VM and resource group, is there anything different?
11. Run `terraform destroy` to take down your infrastructure 
12. Run `terraform show` to verifiy that everything has been destroyed 
 
## Errors 


Original Error: Cannnot register providers: Microsoft.Blueprint, Microsoft.HealthcareApis. Errors were: Cannot register provider Microsoft.Blueprint with Azure Resource Manager: resources.ProvidersClient#Register: Failure sending request: StatusCode=409 -- Original Error: autorest/azure: Service returned an error. Status=<nil> Code="ReadOnlyDisabledSubscription" Message="The subscription 'a98803dd-38f0-4e7a-a901-bd988cda925e' is disabled and therefore marked as read only. You cannot perform any write actions on this subscription until it is re-enabled.".
Cannot register provider Microsoft.HealthcareApis with Azure Resource Manager: resources.ProvidersClient#Register: Failure sending request: StatusCode=409 -- Original Error: autorest/azure: Service returned an error. Status=<nil> Code="ReadOnlyDisabledSubscription" Message="The subscription 'a98803dd-38f0-4e7a-a901-bd988cda925e' is disabled and therefore marked as read only. You cannot perform any write actions on this subscription until it is re-enabled.".

  on main.tf line 6, in provider "azurerm":
   6: provider "azurerm" {

Need to figure out how to put in spefic subscription 
[azure role assignments](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment)












