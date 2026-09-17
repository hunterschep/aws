# Egress-Only Internet Gateway

Outbound-only internet connectivity for IPv6

- Allows resources to initiate connections; blocks unsolicited connections from the internet
- Stateful: Response traffic automatically allowed
- Subnet route: `::/0 -> Egress-only IGW`
- No address translation; not a NAT gateway
- Regular IGW allows inbound and outbound IPv6, subject to SGs / NACLs

## IPv6 to IPv4 Destinations

- Use DNS64 + NAT gateway's NAT64 to reach IPv4-only services
- DNS64 synthesizes an IPv6 address; NAT64 translates the packets to IPv4
- Route `64:ff9b::/96 -> NAT gateway`; egress-only IGW alone cannot reach IPv4-only services
