# Security Groups

Virtual firewalls attached to network interfaces.

- Contain only `Allow` rules
- Stateful: Response traffic is allowed automatically
- Control inbound and outbound traffic
- Can reference CIDR ranges, IP addresses, or other security groups
- One security group can protect many resources
- One network interface can use multiple security groups
- Scoped to a VPC and Region
- Rule changes apply immediately

By default, a new security group denies all inbound traffic and allows all outbound traffic.

## Common Ports

- `21`: FTP control
- `22`: SSH and SFTP
- `80`: HTTP
- `443`: HTTPS
- `3389`: RDP

Restrict SSH and RDP to trusted IP ranges. A connection timeout usually indicates a security group or network-path issue; connection refused usually indicates an application issue.
