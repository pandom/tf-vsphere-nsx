module networks {
  source  = "github.com/grantorchard/terraform-nsx-quickstart-module"

	environment = var.environment
  private_subnets = [
    "10.0.3.0/28",
    "10.0.3.16/28",
    "10.0.3.32/28"
  ]
  public_subnets = [
    "10.0.3.48/28",
    "10.0.3.64/28",
    "10.0.3.80/28"
  ]

}

module web {
	depends_on = [
		module.networks
	]
	source = "github.com/terraform-vsphere-modules/terraform-vsphere-virtual-machine"
	count = var.web_machine_count
	datacenter        = "Datacenter"
  cluster           = "Cluster"
  primary_datastore = "vsanDatastore"
  networks = {
    #"${module.networks.public_networks[count.index]}" : "dhcp"
    "${data.terraform_remote_state.networks.outputs.public_networks[count.index]}" : "dhcp"
  }
  # This will clone an existing packer template registered in vCenter
  template = "go-tfc-agent-small"
  
	hostname = "web-${count.index}"
	memory = 4096

}
