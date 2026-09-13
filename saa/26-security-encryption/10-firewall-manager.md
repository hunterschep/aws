# AWS Firewall Manager

Central security policy management across AWS Organizations accounts

- Manage WAF web ACLs, Shield Advanced protections, security groups, Network Firewall, and DNS Firewall
- Policies apply to selected accounts / resources, including new resources within scope
- Requires AWS Organizations; AWS Config recording needed for relevant policy types
- Delegated administrator can manage organization-wide policies

## WAF vs. Shield vs. Firewall Manager

- WAF: Inspect and filter web requests
- Shield: DDoS detection / mitigation
- Firewall Manager: Centrally deploy and enforce security policies across accounts
