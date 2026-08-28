# Gateway Load Balancer

Deploys, scales, and manages fleets of third-party virtual network appliances.

- Examples: Firewalls, intrusion detection/prevention, and deep packet inspection
- Operates at Layer 3 and listens for IP packets on all ports
- Combines a transparent network gateway with load balancing
- Uses GENEVE on port `6081`
- Maintains flow stickiness to one appliance
- Gateway Load Balancer endpoints provide private connectivity across VPCs

```text
Traffic -> GWLB endpoint -> GWLB -> appliance -> GWLB -> destination
```

Route tables steer traffic through the GWLB endpoint.
