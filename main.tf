module networks {
  source  = "github.com/grantorchard/terraform-nsx-quickstart-module"

	environment = var.environment
  private_subnets = ["10.0.3.0/28"]
  public_subnets = ["10.0.3.48/28"]

}

# module web {
# 	source = "github.com/grantorchard/terraform-vsphere-module-virtual-machine"
# 	count = 1
# 	datacenter        = "Datacenter"
#   cluster           = "Cluster"
#   primary_datastore = "vsanDatastore"
#   networks = {
#     "seg-general" : "dhcp"
#   }
#   template = "go-tfc-agent-small"

# 	hostname = "web-${count.index}"
# 	memory = 4096

# }
