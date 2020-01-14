module "diagnostics" {
    source  = "aztfmod/caf-diagnostics/azurerm"
    version = "1.0.0"

    name                              = "${local.ase_name}-diag"
    resource_id                       = lookup(azurerm_template_deployment.ase.outputs, "id")
    diag_object                       = var.diag_object
    diagnostics_map                   = var.diagnostics_map
    log_analytics_workspace_id        = var.log_analytics_workspace_id
}