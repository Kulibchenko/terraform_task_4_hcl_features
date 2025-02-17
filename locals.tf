locals {
  network_security_rules = [
    {
      name                   = "block_dns"
      priority               = 100
      direction              = "Inbound"
      access                 = "Deny"
      protocol               = "Udp"
      source_port_range      = 53
      destination_port_range = 53
    }
  ]

   vm_tags = {
    for i in range(var.counts_of_VM):
      "${var.prefix}-vm-${i}" => {
        Name = "${var.prefix}-vm-${i}"
        Environment = "${var.prefix}-vm-${i}".tags
      }
  }
}

