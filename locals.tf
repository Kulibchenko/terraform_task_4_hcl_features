locals {
    network_security_rules = {
        name = "block_dns"
        priority = 1
        direction = "in"
        access = "Deny"
        protocol = "udp"
        source_port_range = 53
        destination_port_range = 53
    }
}
