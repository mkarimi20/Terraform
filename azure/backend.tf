terraform {
  backend "azurerm" {
    resource_group_name   = "example"
    storage_account_name  = "terraform1karimi"
    container_name        = "tfstate"
    key                   = "prod_terraform.tfstate"
    access_key            = ""
  }
}