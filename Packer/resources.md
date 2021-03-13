## Tutorials on using Packer and Azure 

**[How to use Packer to build a Windows Server Image for Azure](https://gmusumeci.medium.com/how-to-use-packer-to-build-a-windows-server-image-for-azure-52b1e14be2f2)**  followup resource 
**[How to use Packer to create Linux virtual machine images in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/build-image-with-packer)**    
[Building a Golden Image Pipeline with HashiCorp Packer and Azure DevOps](https://www.hashicorp.com/resources/building-a-golden-image-pipeline-with-hashicorp-packer-and-azure-devops)

[Automating infrastructure deployments in the Cloud with Terraform and Azure Pipelines](https://azuredevopslabs.com/labs/vstsextend/terraform/)  - lab  

[Securing Infrastructure In Application Pipelines](https://www.hashicorp.com/resources/securing-infrastructure-in-application-pipelines)  

**Notes**

[Packer Privioners](https://www.packer.io/docs/provisioners)

[Packer Template](https://video.udacity-data.com/topher/2020/September/5f68e6f4_demo/demo.json)

Need to figure out how to put in spefic subscription 
[azure role assignments](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment)  
[Azure Provider: Authenticating using a Service Principal with a Client Secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)  
[Assignning policies using the CLI](https://azurecitadel.com/automation/policy/cli/)  

[Azure Image Builder - Create and Deploy an Image Template](https://www.youtube.com/watch?v=vN62cL5_fV4)  
[https://www.youtube.com/watch?v=vN62cL5_fV4](https://techcommunity.microsoft.com/t5/fasttrack-for-azure/simple-azure-marketplace-virtual-machine-offer-creating-vm/ba-p/2058093)  

[Packer Provisioners](https://www.packer.io/docs/provisioners)  
[Shell Provisioner](https://www.packer.io/docs/provisioners/shell)  
 
 [Udacity Packer Template](https://video.udacity-data.com/topher/2020/September/5f68e6f4_demo/demo.json)  

 ## Udacity knowledge center help 

 [Packer deploy is failing](https://knowledge.udacity.com/questions/375046)  
 [How to define env variables with Packer](https://knowledge.udacity.com/questions/358489)  

 ## Create Azure credentials  
Packer authenticates with Azure using a service principal. An Azure service principal is a security identity that you can use with apps, services, and automation tools like Packer. You control and define the permissions as to what operations the service principal can perform in Azure.

Create a service principal with az ad sp create-for-rbac and output the credentials that Packer needs:

Azure CLI

Copy
az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"