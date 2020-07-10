
data "azurerm_resource_group" "test" {
  name = "${var.resource_group_name}"
}
data "azurerm_storage_account" "test" {
  name                = "${var.storageaccountname}"
  resource_group_name = "${var.storageaccount_resourcegroup}"
}
data "azurerm_app_service_plan" "test1" {
    name = "${var.appserviceplanname}"
    resource_group_name = "${var.appserviceplanresourcegroupname}"
}

resource "azurerm_app_service" "test" {
  count = "${var.applicationtype != "dotnet" ? 0 :1}"
  name                = "${var.appservicename}"
  location            = "${data.azurerm_resource_group.test.location}"
  resource_group_name = "${data.azurerm_resource_group.test.name}"
  app_service_plan_id = "${data.azurerm_app_service_plan.test1.id}"
  https_only =true
  client_affinity_enabled = false
  site_config {
    dotnet_framework_version = "${var.applicationversion}"
    scm_type                 = "${var.scmtype}"
    ftps_state = "FtpsOnly"
    min_tls_version = 1.2
    always_on = "${var.alwayson}"
      ip_restriction {
        ip_address = "${var.ipaddress}"
    }
  }

  logs {
          application_logs {
              azure_blob_storage {
                   level             = "Verbose"
                   retention_in_days = 35
                   sas_url           = "${var.sasurl}"
                }
            }

           http_logs {
               file_system {
                   retention_in_days = 35
                   retention_in_mb   = 100
                }
            }
        }
        tags = {
    environment = "${var.environment}"
    projectname = "${var.projectname}"
  }

  }
  resource "azurerm_app_service" "test1" {
  count = "${var.applicationtype != "python" ? 0:1}"
  name                = "${var.appservicename}"
  location            = "${data.azurerm_resource_group.test.location}"
  resource_group_name = "${data.azurerm_resource_group.test.name}"
  app_service_plan_id = "${data.azurerm_app_service_plan.test1.id}"
  https_only =true
  client_affinity_enabled = false
  site_config {
   python_version= "${var.applicationversion}"
    scm_type                 = "${var.scmtype}"
    ftps_state = "Disabled"
    min_tls_version = 1.2
     ip_restriction {
        ip_address = "${var.ipaddress}"
    }
  }

  logs {
          application_logs {
              azure_blob_storage {
                   level             = "Verbose"
                   retention_in_days = 35
                   sas_url           = "${var.sasurl}"
                }
            }

           http_logs {
               file_system {
                   retention_in_days = 35
                   retention_in_mb   = 100
                }
            }
        }
        tags = {
    environment = "${var.environment}"
    projectname = "${var.projectname}"
  }

  }
  resource "azurerm_app_service" "test2" {
  count = "${var.applicationtype != "php" ? 0:1}"
  name                = "${var.appservicename}"
  location            = "${data.azurerm_resource_group.test.location}"
  resource_group_name = "${data.azurerm_resource_group.test.name}"
  app_service_plan_id = "${data.azurerm_app_service_plan.test1.id}"
  https_only =true
  client_affinity_enabled = false
  site_config {
   python_version= "${var.applicationversion}"
    scm_type                 = "${var.scmtype}"
    ftps_state = "FtpsOnly"
    min_tls_version = 1.2
    ip_restriction {
        ip_address = "${var.ipaddress}"
    }
  }

  logs {
          application_logs {
              azure_blob_storage {
                   level             = "Verbose"
                   retention_in_days = 35
                   sas_url           = "${var.sasurl}"
                }
            }

           http_logs {
               file_system {
                   retention_in_days = 35
                   retention_in_mb   = 100
                }
            }
        }
        tags = {
    environment = "${var.environment}"
    projectname = "${var.projectname}"
  }

  }
