terraform {
  required_providers {
    nsxt = {
      source = "vmware/nsxt"
      version = "~>3.2"
    }
	}
}

provider "nsxt" {
	host = var.nsx_server
}