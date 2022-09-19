data "terraform_rmeote_state" "networks" {
  backend = "remote"
  config = {
    organization = "burkey"
    workspaces = {
      name = var.tfc_networks_workspace_name
    }
  }
}
module "web" {
  depends_on = [
    module.networks
  ]
  source            = "github.com/terraform-vsphere-modules/terraform-vsphere-virtual-machine"
  count             = var.web_machine_count
  datacenter        = "Datacenter"
  cluster           = "Cluster"
  primary_datastore = "vsanDatastore"
  networks = {
    "${data.terraform_remote_state.networks.outputs.public_networks[count.index]}" : "dhcp"
  }
  template = "go-tfc-agent-small"

  hostname = "web-${count.index}"
  memory   = 4096

}
