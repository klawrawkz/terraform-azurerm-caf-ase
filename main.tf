
locals {
  module_tag          = {
    "module" = basename(abspath(path.module))
  }
  tags                = merge(var.tags, local.module_tag)
  ase_name          = "${var.prefix}${var.name}"
  arm_filename      = "${path.module}/arm_ase_isolated.json"
}