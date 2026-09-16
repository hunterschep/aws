# Direct Connect (DX)

Private network connection from on-premises to AWS through a Direct Connect location

- Bypasses the public internet; more predictable bandwidth / latency
- Not encrypted by default; use IPsec VPN for end-to-end encryption
- MACsec available on supported connections for link-level encryption
- Resilience: Redundant connections at separate DX locations; VPN can provide backup

## Virtual Interfaces (VIFs)

- Private VIF: VPC private IPs via a VGW, or a DX gateway connecting multiple VGWs
- Transit VIF: DX gateway -> Transit Gateway -> multiple VPCs
- Public VIF: AWS public service endpoints, e.g., S3; not general internet access
- DX gateway can connect to VPCs across accounts / Regions; it does not enable VPC-to-VPC routing

## Connection Types

- Dedicated: Customer-dedicated port at 1, 10, 100, or 400 Gbps; multiple VIFs supported
- Hosted: Ordered through a DX partner; selected speeds from 50 Mbps to 25 Gbps
- Hosted connection: One VIF; bandwidth options / changes depend on the partner
