resource "nsxt_policy_group" "web" {
  display_name = "web"
  description  = "Terraform provisioned Group"

  criteria {
    external_id_expression {
      member_type  = "VirtualMachine"
      external_ids = module.web.*.virtual_machine_id
    }
  }
}