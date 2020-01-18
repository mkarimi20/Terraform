terraform {
  backend "azurerm" {
    resource_group_name   = "example"
    storage_account_name  = "terraform1karimi"
    container_name        = "tfstate"
    key                   = "prod_terraform.tfstate"
    subscriptions_id      = "b37fc0e7-38da-496e-a832-1f208d980079"
    tenant_id             = "46c32b48-cb6c-423d-b4c7-006b8fed7270"
  }
}