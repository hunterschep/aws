# Site-to-Site VPN

Encrypted IPsec tunnels between an on-premises network and AWS, usually over the public internet

- Two VPN tunnels per connection; configure both for availability
- Virtual private gateway (VGW): AWS-side VPN endpoint attached to one VPC
- Transit Gateway (TGW): Alternative AWS-side endpoint for connecting multiple VPCs
- Customer gateway (CGW): AWS resource describing the customer-side device
- Customer gateway device: Physical router / firewall or software VPN appliance on-premises
- For a public VPN: Use the device's public IP, or the NAT device's public IP if behind NAT
- VGW routing: Enable propagation in relevant VPC route tables, or add static routes
- Configure on-premises routes and allow traffic through SGs / NACLs

## AWS VPN CloudHub

- Low-cost hub-and-spoke connectivity between multiple customer networks
- Multiple BGP VPN connections to the same VGW; AWS routes traffic between the sites
- Encrypted VPNs over the internet, not dedicated private circuits
