module "load_balancer" {
	source = "../terraform-nsx-lb"

	nsx_group_path = nsxt_policy_group.web
}