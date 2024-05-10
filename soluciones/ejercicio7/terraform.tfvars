existent_resource_group_name    = "rg1dnazareno-lab01"
vnet_name                       = "vnetdnazarenotfexercise01"
vnet_address_space              = ["10.0.0.0/16"]
location                        = "West Europe"
sn_name                         = "subred_"
subnets = {
  subnet1 = {
      "key"              = "subnet_1"
      "address_prefixes" = ["10.0.1.0/24"]
    }
  subnet2 = {
      "key"              = "subnet_2"
      "address_prefixes" = ["10.0.2.0/24"]
    }
  subnet3 = {
      "key"              = "subnet_3"
      "address_prefixes" = ["10.0.3.0/24"]
    }
}
