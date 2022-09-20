resource "nsxt_policy_group" "nodecode" {
  display_name = "nocode"
  description  = "Terraform provisioned Group"

  criteria {
    external_id_expression {
      member_type  = "VirtualMachine"
      external_ids = module.web.*.virtual_machine_id
    }
  }
}