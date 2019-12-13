resource "azurerm_template_deployment" "ase" {

  name                = var.name
  resource_group_name = var.resource_group_name

  template_body       = file(local.arm_filename)

  parameters = {
    "aseName"                   = local.ase_name
    "aseResourceGroupName"      = var.resource_group_name
    "location"                  = var.location
    "kind"                      = var.kind
    "subnet_id"                 = var.subnet_id
    "internalLoadBalancingMode" = var.properties.internalLoadBalancingMode
    "subnet"                    = var.properties.vnet_subnet
  }

  deployment_mode = "Incremental"

}