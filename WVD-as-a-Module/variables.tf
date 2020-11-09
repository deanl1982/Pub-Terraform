variable "rgname" {
  description = "Resource Group Name"
  default     = "VFF-USE-RG-WVD-REMOTE"
}

variable "region" {
  description = "Region"
  default     = "West US 2"
}

variable "pooledhpname" {
  description = "Pooled Host Pool Name"
  default     = "VFF-WUS-TFRM-Pooled"
}

variable "pooledhpfriendlyname" {
  description = "Pooled Host Pool Friendly Name"
  default     = "VFF Pooled Host Pool"
}

variable "pooledhpdescription" {
  description = "Pooled Host Pool Description"
  default     = "VFF Pooled Host Pool"
}

variable "pooledhpremoteappname" {
  description = "Pooled Host Pool RemoteApp App Group Name"
  default     = "VFF-WUS-TFRM-Pooled-RA"
}

variable "pooledhpremoteappfriendlyname" {
  description = "Pooled Host Pool RemoteApp App Group Friendly Name"
  default     = "VFF Pooled Host Pool Remote Apps"
}

variable "pooledhpremoteappdescription" {
  description = "Pooled Host Pool RemoteApp App Group Description"
  default     = "VFF Pooled Host Pool Remote Apps"
}

variable "pooledhpdesktopappname" {
  description = "Pooled Host Pool Desktop App Group Friendly Name"
  default     = "VFF-WUS-TFRM-Pooled-DT"
}

variable "pooledhpdesktopappfriendlyname" {
  description = "Pooled Host Pool Desktop App Group Friendly Name"
  default     = "VFF Pooled Host Pool Remote Apps"
}

variable "pooledhpdesktopappdescription" {
  description = "Pooled Host Pool Desktop App Group Description"
  default     = "VFF Pooled Host Pool Remote Apps"
}

variable "workspace" {
  description = "WVD Workspace Name"
  default     = "VFF-Terraform-Workspace"
}

variable "workspacefriendlyname" {
  description = "WVD Workspace Friendly Name"
  default     = "VFF-Terraform-Workspace"
}

variable "workspacedesc" {
  description = "WVD Workspace Description"
  default     = "VFF-Terraform-Workspace"
}