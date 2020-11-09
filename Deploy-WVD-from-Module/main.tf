# Get AzureRM Terraforn Provider
provider "azurerm" {
  version = "2.31.1" #Required for WVD
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "vffwvdtfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    resource_group_name  = "VFF-USE-RG-WVD-REMOTE"
  }
}

module "WVD-as-a-Module" {
  source                         = "../Modules/WVD-as-a-Module"
  rgname                         = "VFF-USE-RG-WVD-REMOTE"
  region                         = "West US 2"
  pooledhpname                   = "VFF-WUS-TFRM-Pooled"
  pooledhpfriendlyname           = "VFF Pooled Host Pool"
  pooledhpdescription            = "VFF Pooled Host Pool"
  pooledhpremoteappname          = "VFF-WUS-TFRM-Pooled-RA"
  pooledhpremoteappfriendlyname  = "VFF Pooled Host Pool Remote Apps"
  ooledhpremoteappdescription    = "VFF Pooled Host Pool Remote Apps"
  pooledhpdesktopappname         = "VFF-WUS-TFRM-Pooled-DT"
  pooledhpdesktopappfriendlyname = "VFF Pooled Host Pool Remote Apps"
  pooledhpdesktopappdescription  = "VFF Pooled Host Pool Remote Apps"
  workspace                      = "VFF-Terraform-Workspace"
  workspacefriendlyname          = "VFF-Terraform-Workspace"
  workspacedesc                  = "VFF-Terraform-Workspace"
  pooledhpmaxsessions            = 50
}