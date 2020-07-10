

variable "resource_group_name" {
  description = "Name of resource group to deploy resources in. If resource group doesn't exist please create resource group by using terraform resource group module"

}
variable "environment" {

  description = " Defines Production , Nonproduction ,UAT ,Test , POC etc"
}
variable "projectname" {
    description = "Defines project name"
  
}


variable "appserviceplanname" {
  description = " name of the App Service Plan . If Appserviceplan doesn't exist please create Appservice plan  by using terraform Appservice plan module"
}

variable "storageaccountname" {
  description = "Provide storage accout details.If it doesn't exists please create it by using Terrafform module"
}

variable "storageaccount_resourcegroup" {
  description = "Provide storage account resourceGroup details"
}

variable "appserviceplanresourcegroupname" {
  description = "Provide Appserviceplan Resource Group name"
}
variable "appservicename" {
  
}
variable "applicationinsightsname" {
}

variable "applicationinsightsresourcegroup" {
  description = "application insights resourcegroupname "
}

variable "sasurl" {
  description = "Provide SAS Url of storage account where you want your diagnostic logs to be stored"
  }

variable "applicationtype" {
  description = "Example dotnet or Java or  or PHP or Python etc"

}
variable "scmtype" {
  description = "The type of Source Control enabled for this App Service. Defaults to None. Possible values are: BitbucketGit, BitbucketHg, CodePlexGit, CodePlexHg, Dropbox, ExternalGit, ExternalHg, GitHub, LocalGit, None, OneDrive, Tfs, VSO and VSTSRM"
  
}
variable "applicationversion" {
  description = "The version of applicationtye to use in this App Service. "
 
}
variable "alwayson" {
  
}
variable "ipaddress" {
 description = "A list of IP addresses in CIDR format specifying Access Restrictions."
}


