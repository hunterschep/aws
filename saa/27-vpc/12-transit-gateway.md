# Transit Gateway (TGW)

Regional hub for transitive routing between VPCs and on-premises networks

`VPCs / VPN / Direct Connect gateway -> TGW -> Other attached networks`

- Hub-and-spoke topology avoids a mesh of VPC peering connections
- Share across accounts using AWS Resource Access Manager (RAM)
- Peer TGWs within / across Regions; peering routes must be added manually
- TGW route tables control which attachments can communicate; can isolate groups of VPCs
- Update VPC subnet route tables as well as TGW routes
- Direct Connect attaches through a DX gateway
- ECMP can spread traffic across multiple dynamically routed VPN tunnels
- Multicast supported between VPC attachments through multicast domains
- Multicast not supported over VPN, DX, or TGW peering attachments
