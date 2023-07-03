/*provider "aws" {
 access_key = "AKIAQ3EHOOXIWER2NVMP"
  secret_key = "nFP63kMFVSn/FTsB6aOWSRCdqLBP8cg0AAwBUyN9"
 region = "us-west-2"  # Update with your desired region
}

terraform{
   backend "azurerm" {
  resource_group_name = "statefiles_storage"
  storage_account_name = "statefilestporageevg"
  container_name  = "evgbatchstatefile"
  key = "multicloud_statefile"
 }*/


provider "azurerm" {
  subscription_id = "1aa9e9b7-cb63-4f44-9677-d38184590405"
  features {}
}