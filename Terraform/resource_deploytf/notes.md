## Errors 


Original Error: Cannnot register providers: Microsoft.Blueprint, Microsoft.HealthcareApis. Errors were: Cannot register provider Microsoft.Blueprint with Azure Resource Manager: resources.ProvidersClient#Register: Failure sending request: StatusCode=409 -- Original Error: autorest/azure: Service returned an error. Status=<nil> Code="ReadOnlyDisabledSubscription" Message="The subscription 'a98803dd-38f0-4e7a-a901-bd988cda925e' is disabled and therefore marked as read only. You cannot perform any write actions on this subscription until it is re-enabled.".
Cannot register provider Microsoft.HealthcareApis with Azure Resource Manager: resources.ProvidersClient#Register: Failure sending request: StatusCode=409 -- Original Error: autorest/azure: Service returned an error. Status=<nil> Code="ReadOnlyDisabledSubscription" Message="The subscription 'a98803dd-38f0-4e7a-a901-bd988cda925e' is disabled and therefore marked as read only. You cannot perform any write actions on this subscription until it is re-enabled.".

  on main.tf line 6, in provider "azurerm":
   6: provider "azurerm" {

Need to figure out how to put in spefic subscription 
[azure role assignments](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment)  
[Azure Provider: Authenticating using a Service Principal with a Client Secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)  