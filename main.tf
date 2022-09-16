module networks {
  source  = "github.com/grantorchard/terraform-nsx-quickstart-module"

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
	environment = var.environment
}
