variable "prefix" {
  default = "tfvmex"
}

variable "network_names" {
    default = ["network-1", "network-2", "network-3"]
}

locals {
    network_security_rules = {
        name = "block_dns"
        priority = 1
        direction = in
        access = false
        protocol = udp
        source_port_range = 53
        destinition_port_range = 53
    }
}