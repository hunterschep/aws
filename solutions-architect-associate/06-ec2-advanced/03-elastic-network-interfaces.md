# Elastic Network Interfaces

An elastic network interface (ENI) is a virtual network card in a VPC.

## Attributes

- Primary private IPv4 and optional secondary private IPv4 addresses
- Optional public IPv4 or Elastic IP mappings
- One or more IPv6 addresses
- One or more security groups
- MAC address
- Source/destination check setting

## Behavior

- Bound to one Availability Zone
- Primary ENI cannot be detached from its instance
- Secondary ENIs can be attached, detached, and moved between instances in the same AZ
- Moving a secondary ENI can provide low-cost network failover
