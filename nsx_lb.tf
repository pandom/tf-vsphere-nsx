module "lb" {
  source  = "app.terraform.io/burkey/lb/nsxt"
  version = "1.0.0"
  nsx_group_path = nsxt_policy_group.nocode.path
}