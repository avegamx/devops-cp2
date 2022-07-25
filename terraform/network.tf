# Se crea la Red que usarán todas las vpc

resource "azurerm_virtual_network" "myNet" {
  name                = "kubernetesnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  tags = {
    environment = "CP2"
  }
}

# Subred que usarán las vpc

resource "azurerm_subnet" "mySubnet" {
  name                 = "terraformsubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.myNet.name
  address_prefixes     = ["10.0.1.0/24"]

}

# Interfaz de red para la vpc1

resource "azurerm_network_interface" "myNic1" {
  name                = "vmnic1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "myipconfiguration1"
    subnet_id                     = azurerm_subnet.mySubnet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.1.10"
    public_ip_address_id          = azurerm_public_ip.myPublicIp1.id
  }

  tags = {
    environment = "CP2"
  }

}

# IP pública para la vpc1

resource "azurerm_public_ip" "myPublicIp1" {
  name                = "vmip1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  sku                 = "Basic"

  tags = {
    environment = "CP2"
  }

}

# Interfaz de red para la vpc2

resource "azurerm_network_interface" "myNic2" {
  name                = "vmnic2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "myipconfiguration2"
    subnet_id                     = azurerm_subnet.mySubnet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.1.11"
    public_ip_address_id          = azurerm_public_ip.myPublicIp2.id
  }

  tags = {
    environment = "CP2"
  }

}

# Ip pública para la vpc2

resource "azurerm_public_ip" "myPublicIp2" {
  name                = "vmip2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  sku                 = "Basic"

  tags = {
    environment = "CP2"
  }

}

# Interfaz de red para la vpc3

resource "azurerm_network_interface" "myNic3" {
  name                = "vmnic3"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "myipconfiguration3"
    subnet_id                     = azurerm_subnet.mySubnet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.1.12"
    public_ip_address_id          = azurerm_public_ip.myPublicIp3.id
  }

  tags = {
    environment = "CP2"
  }

}

# Ip pública para la vpc3

resource "azurerm_public_ip" "myPublicIp3" {
  name                = "vmip3"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  sku                 = "Basic"

  tags = {
    environment = "CP2"
  }

}

