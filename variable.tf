
variable "appserviceplancount" {}
variable "resource_group" {
  description = "Name of resource group to deploy resources in. If resource group doesn't exist please create resource group by using terraform resource group module"
}
variable "appserviceplanname" {
    description = "Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
  
}
variable "kind" {
    description = "The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan).  Changing this forces a new resource to be created."
  }

variable "tier" {
    description = "Specifies the plan's pricing tier."
  
}
variable "size" {
    description ="Specifies the plan's instance size."
  
}
variable "environment" {

  description = " Defines Production , Nonproduction ,UAT ,Test , POC etc"
}
variable "projectname" {
    description = "Defines project name"
  
}



