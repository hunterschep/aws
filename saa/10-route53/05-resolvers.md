# Route 53 Resolver and Hybrid DNS

The VPC Resolver recursively answers DNS queries for:

- VPC-specific hostnames
- Private hosted zones
- Public DNS names

- Available by default at the VPC base address plus two
- Called Route 53 VPC Resolver in current AWS documentation
- Hybrid DNS requires network connectivity, usually VPN or Direct Connect

## Outbound Endpoint: AWS -> On-Premises

1. A VPC resource queries an on-premises domain.
2. A forwarding rule matches the domain.
3. An outbound endpoint forwards the query to on-premises DNS.
4. The answer returns through the same path.

VPC resource -> outbound endpoint -> on-premises DNS

## Inbound Endpoint: On-Premises -> AWS

1. An on-premises client queries an AWS private domain.
2. On-premises DNS forwards the query to an inbound endpoint.
3. The VPC Resolver answers from the private hosted zone.

On-premises DNS -> inbound endpoint -> VPC Resolver

## Exam Notes

- Inbound and outbound describe the direction of the DNS query
- Security groups must allow required TCP and UDP port 53 traffic
- Resolver rules can be shared across accounts using AWS RAM
- DNS resolution does not carry application traffic
