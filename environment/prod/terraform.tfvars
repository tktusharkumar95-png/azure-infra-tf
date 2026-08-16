rgs = {
  rg1 = {
    name     = "azure-infra-tf"
    location = "koreacentral"
  }
}
vnet = {
  vnet1 = {
    name                = "azure-infra-vnet"
    location            = "koreacentral"
    resource_group_name = "azure-infra-tf"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}
subnet = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "azure-infra-tf"
    virtual_network_name = "azure-infra-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "azure-infra-tf"
    virtual_network_name = "azure-infra-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}