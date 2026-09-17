# CIDR and IPv4

Classless Inter-Domain Routing: Represents an IP address range

- Prefix `/n`: Number of fixed network bits; remaining `32 - n` bits can change
- Address count: `2^(32 - n)`; larger prefix = smaller range

| Prefix | Subnet Mask | Addresses |
| --- | --- | --- |
| `/0` | `0.0.0.0` | All IPv4 addresses |
| `/8` | `255.0.0.0` | 16,777,216 |
| `/16` | `255.255.0.0` | 65,536 |
| `/24` | `255.255.255.0` | 256 |
| `/32` | `255.255.255.255` | 1 |

## Private IPv4 Ranges

- `10.0.0.0/8`
- `172.16.0.0/12`
- `192.168.0.0/16`
- Not routable over the public internet
- AWS default VPC: `172.31.0.0/16`, within the private `172.16.0.0/12` range
