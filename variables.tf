variable "environment" {
	type = string
	default = "development"
}

variable "nsx_server" {}
variable "vsphere_server" {}

variable "web_machine_count" {
	type = number
	default = 1
}