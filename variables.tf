variable "environment" {
  type    = string
  default = "development"
}

variable "nsx_server" {}
variable "vsphere_server" {}

variable "web_machine_count" {
  type    = number
  default = 1
}

variable "tfc_networks_workspace_name" {
  default     = "tf-vsphere-nsx-quickstart-nocode"
  description = "name of nocode workspace"
}