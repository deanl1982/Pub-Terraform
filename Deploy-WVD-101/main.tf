# Get AzureRM Terraforn Provider
provider "azurerm" {
  version = "2.31.1" #Required for WVD
  features {}
}

# Create Resource Group - This will host all subsequent deployed resources
resource "azurerm_resource_group" "default" {
  name     = var.rgname
  location = var.region
}

# Create "Pooled" WVD Host Pool
resource "azurerm_virtual_desktop_host_pool" "pooleddepthfirst" {
  location            = var.region
  resource_group_name = azurerm_resource_group.default.name

  name                     = var.pooledhpname
  friendly_name            = var.pooledhpfriendlyname
  description              = var.pooledhpdescription
  type                     = "Pooled"
  maximum_sessions_allowed = 25
  load_balancer_type       = "DepthFirst"
}

#Create RemoteApp Application Group
resource "azurerm_virtual_desktop_application_group" "pooledremoteapp" {
  name                = var.pooledhpremoteappname
  location            = var.region
  resource_group_name = azurerm_resource_group.default.name

  type          = "RemoteApp"
  host_pool_id  = azurerm_virtual_desktop_host_pool.pooleddepthfirst.id
  friendly_name = var.pooledhpremoteappfriendlyname
  description   = var.pooledhpremoteappdescription
}

#Create Desktop Application Group
resource "azurerm_virtual_desktop_application_group" "pooleddesktopapp" {
  name                = var.pooledhpdesktopappname
  location            = var.region
  resource_group_name = azurerm_resource_group.default.name

  type          = "Desktop"
  host_pool_id  = azurerm_virtual_desktop_host_pool.pooleddepthfirst.id
  friendly_name = var.pooledhpdesktopappfriendlyname
  description   = var.pooledhpdesktopappdescription
}

# Create Workspace
resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.workspace
  location            = var.region
  resource_group_name = azurerm_resource_group.default.name

  friendly_name = var.workspacefriendlyname
  description   = var.workspacedesc
}

# Associate RemoteApp Application Group with Workspace
resource "azurerm_virtual_desktop_workspace_application_group_association" "workspaceremoteapp" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.pooledremoteapp.id

}

# Associate Desktop Application Group with Workspace
resource "azurerm_virtual_desktop_workspace_application_group_association" "workspacedesktop" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.pooleddesktopapp.id

}