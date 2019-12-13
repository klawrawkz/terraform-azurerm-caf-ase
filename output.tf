output "id" {
  value = lookup(azurerm_template_deployment.ase.outputs, "id")
  description = "App Service Environment Resource Id"
}

output "name" {
  value = local.ase_name
  description = "App Service Environment Name"
}