# terraformexercises
Terraform Introduction: 

Website: https://www.terraform.io
Forums: HashiCorp Discuss
Documentation: https://www.terraform.io/docs/


Terraform

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

The key features of Terraform are:

Infrastructure as Code: Infrastructure is described using a high-level configuration syntax. This allows a blueprint of your datacenter to be versioned and treated as you would any other code. Additionally, infrastructure can be shared and re-used.

Execution Plans: Terraform has a "planning" step where it generates an execution plan. The execution plan shows what Terraform will do when you call apply. This lets you avoid any surprises when Terraform manipulates infrastructure.

Resource Graph: Terraform builds a graph of all your resources, and parallelizes the creation and modification of any non-dependent resources. Because of this, Terraform builds infrastructure as efficiently as possible, and operators get insight into dependencies in their infrastructure.

Change Automation: Complex changesets can be applied to your infrastructure with minimal human interaction. With the previously mentioned execution plan and resource graph, you know exactly what Terraform will change and in what order, avoiding many possible human errors.
Description: to create the resource group by using terraform 
created git hub repository,
cloned using HTTPS, by using git clone 
then created the service principle using azure portal and the create env variables by using the ARM command 
export ARM_TENANT_ID=
export ARM_SUBSCRIPTION_ID
export ARM_CLIENT_ID=
export ARM_CLIENT_SECRET=
club the two commands by using '|'
Now create terraform scripts to create Resource group 
provider "azurerm" {
    features {}
}

resource "azurerm_resourcegroup" "resource_group" {
      name        =   "techslate-rg"
      location    =   "uksouth"
      tags        =  {
                   environment ="dev"
                   source ="terraform"
  }         
}
resource group is created 
for the terraform execution used the below commands 
terraform init
terraform validate
terraform plan
terraform apply
 created new variable file as variables.tf by using below code 
 variable "rg_name" {
    description = "name of the resource group"
    type = string 
    default = "techslate-rg"
}

variable "location" {
    description = "name of the resource group"
    type = string
    default = "uksouth"
}

variable "tags" {
    description = "Tags for the resources"
    type = map(string)
    default = {
           "environment" = "dev"
           "source" = "terraform"
           "purpose" = "testing"
    }
}
now matched the variables with main file 
provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "resource_group" {
      name        =  local. rg_name
      location    =  var.location
      tags        = var.tags
          
}
took the variables from the variable file and mapped in to the main file 
created output file to capture the couple of things and named the file name as output.tf nd given the code as below 
output "resource_group_name" {
    value = azurerm_resource_group.resource_group.name
    
}
now using local varibles is used to caluclate dynamically, creted locals.tf files
and used below command 
locals {
    prefix = "azure"
    rg_name = "${local.prefix}-${var.org_name}-${var.project_name}"
}
and followed by the terraform commands such as 
terraform init
terraform validate
terraform plan
terraform apply.




