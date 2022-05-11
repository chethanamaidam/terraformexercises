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

variable "org_name" {
    description = "organisation Name."
    type     =  string
    default    = "techslate"
}

variable "project_name" {
    description = "oraganisation Name."
    type        = string
    default     = "batch1"
}