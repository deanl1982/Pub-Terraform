variable "rgname" {
  description = "Resource Group Name"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "pooledhpname" {
  description = "Pooled Host Pool Name"
  type        = string
}

variable "pooledhpmaxsessions" {
  description = "Max sessions per pooled host"
  type        = number
}

variable "pooledhpfriendlyname" {
  description = "Pooled Host Pool Friendly Name"
  type        = string
}

variable "pooledhpdescription" {
  description = "Pooled Host Pool Description"
  type        = string
}

variable "pooledhpremoteappname" {
  description = "Pooled Host Pool RemoteApp App Group Name"
  type        = string
}

variable "pooledhpremoteappfriendlyname" {
  description = "Pooled Host Pool RemoteApp App Group Friendly Name"
  type        = string
}

variable "pooledhpremoteappdescription" {
  description = "Pooled Host Pool RemoteApp App Group Description"
  type        = string
}

variable "pooledhpdesktopappname" {
  description = "Pooled Host Pool Desktop App Group Friendly Name"
  type        = string
}

variable "pooledhpdesktopappfriendlyname" {
  description = "Pooled Host Pool Desktop App Group Friendly Name"
  type        = string
}

variable "pooledhpdesktopappdescription" {
  description = "Pooled Host Pool Desktop App Group Description"
  type        = string
}

variable "workspace" {
  description = "WVD Workspace Name"
  type        = string
}

variable "workspacefriendlyname" {
  description = "WVD Workspace Friendly Name"
  type        = string
}

variable "workspacedesc" {
  description = "WVD Workspace Description"
  type        = string
}