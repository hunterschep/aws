# Security Groups and NACLs

| Feature | Security Group (SG) | Network ACL (NACL) |
| --- | --- | --- |
| Scope | Network interface / associated resource | Subnet boundary |
| Rules | Allow only | Allow and deny |
| Evaluation | All rules considered | Lowest rule number first; first match wins |
| State | Stateful: Return traffic automatically allowed | Stateless: Check both directions |
| Targets | IP ranges, SG references, prefix lists | IP ranges |

- Traffic must pass both SG and NACL rules
- New SG: No inbound rules; allows all outbound by default
- Default NACL: Allows all inbound / outbound traffic
- Custom NACL: Denies all until rules are added; unmatched traffic always denied
- Each subnet has one NACL; a NACL can serve multiple subnets

## Ephemeral Ports

- Client connects from a temporary source port to a server's fixed port, e.g., HTTPS `443`
- Server replies to that client source port
- NACL rules must allow the return traffic's ephemeral ports in the opposite direction
- Port range depends on the client OS / service; `1024-65535` covers common ranges
