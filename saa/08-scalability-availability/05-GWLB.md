# Gateway Load Balancer 

Deploy, scale, and manage a fleet of 3rd party network cirtual appliances in AWS 

Examples: Firewalls, intrusion, detection, packet inspection 

Operates at Layer 3 - IP packets 

GENEVE protocol port 6081 

Packet
  ↓
GWLB endpoint
  ↓
GWLB
  ↓
security appliance inspects it
  ↓
GWLB path
  ↓
original destination