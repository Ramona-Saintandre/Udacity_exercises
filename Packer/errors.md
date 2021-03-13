## ERRORS

 ==> azure-arm: Running builder ...
Build 'azure-arm' errored after 6 milliseconds 999 microseconds: error fetching subscriptionID from VM metadata service for Managed Identity authentication: Get "http://169.254.169.254/metadata/instance/compute?api-version=2017-08-01&format=json": dial tcp 169.254.169.254:80: connectex: A socket operation was attempted to an unreachable network.


[How to use managed identities for Azure resources on an Azure VM to acquire an access token](How to use managed identities for Azure resources on an Azure VM to acquire an access token)  

==> azure-arm: Resource group has been deleted.
Build 'azure-arm' errored after 49 seconds 434 milliseconds: resources.DeploymentsClient#CreateOrUpdate: Failure sending request: StatusCode=400 -- Original Error: Code="InvalidTemplateDeployment" Message="The template deployment 'pkrdpxmdgecx19e' is 
not valid according to the validation procedure. The tracking id is 'baaf368a-f3b2-401b-864b-67c20e330a56'. See inner errors for details." Details=[{"code":"InvalidParameter","message":"The following list of images referenced from the deployment template are not found: Publisher: Canonical, Offer: UbuntuServer, Sku: 14.04-LTS, Version: latest. Please refer to https://docs.microsoft.com/en-us/azure/virtual-machines/windows/cli-ps-findimage for instructions on finding available images.","target":"imageReference"}]

==> Wait completed after 49 seconds 435 milliseconds

==> Some builds didn't complete successfully and had errors:
--> azure-arm: resources.DeploymentsClient#CreateOrUpdate: Failure sending request: StatusCode=400 -- Original Error: Code="InvalidTemplateDeployment" Message="The template deployment 'pkrdpxmdgecx19e' is not valid according to the validation procedure. The tracking id is 'baaf368a-f3b2-401b-864b-67c20e330a56'. See inner errors for details." Details=[{"code":"InvalidParameter","message":"The following list of images referenced from the deployment template are not found: Publisher: Canonical, Offer: UbuntuServer, Sku: 14.04-LTS, Version: latest. Please refer to https://docs.microsoft.com/en-us/azure/virtual-machines/windows/cli-ps-findimage for instructions on finding available images.","target":"imageReference"}]

==> Builds finished but no artifacts were created.