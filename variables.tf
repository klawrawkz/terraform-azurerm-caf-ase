
variable "prefix" {
    description = "(Optional) You can use a prefix to add to the list of resource groups you want to create"
}

variable "tags" {
    description = "(Required) map of tags for the deployment"
}

variable "name" {
    description = "(Required) Name of the App Service Environment"
}

variable "kind" {
    description = "(Required) Kind of resource. Possible value are ASEV2"
}

variable "location" {
    description = "(Required) Resource Location"
}

variable "resource_group_name" {
    description = "(Required) Resource group of the ASE"
}

variable "subnet_id" {
    description = "(Required) Name of the Virtual Network for the ASE"
}

variable "properties" {
    description = "(Required) Core resource properties"
    type =  object(
        {
            vnet_subnet               = string      # Subnet within the Virtual Network assign for ASE                   
            internalLoadBalancingMode = string      # Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. - None, Web, Publishing. Possible value are 3 = Internal Load Balancer | 0 = External Load Balancer                  
        }
    )
}


variable "diagnostics_map" {
  
}

variable "log_analytics_workspace_id" {
  
}

variable "diag_object" {
  
}
