# Network Protection

- NACL: Stateless subnet filter; allow / deny IP ranges and ports
- Security group: Stateful ENI / resource filter; allow rules only
- AWS WAF: Layer 7 HTTP(S) protection, e.g., SQL injection / cross-site scripting rules
- AWS Shield: DDoS protection; Standard included, Advanced adds paid protection / support
- Firewall Manager: Centrally manage supported security policies across AWS Organizations accounts

## AWS Network Firewall

- Managed VPC network protection at layers 3-7
- Stateless packet filtering and stateful inspection; intrusion prevention and domain filtering
- Route traffic through firewall endpoints; does not automatically inspect all VPC traffic
- Can inspect internet, VPC-to-VPC, and on-premises traffic when routed through it
- Encrypted payload inspection requires supported TLS inspection configuration and certificates
- Firewall Manager can apply Network Firewall policies across accounts
