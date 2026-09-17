# VPC Flow Logs

IP traffic metadata for network interfaces, not packet contents

- Create at VPC, subnet, or ENI level
- Destinations: S3, CloudWatch Logs, Amazon Data Firehose
- Uses: Connectivity troubleshooting, traffic patterns, security analysis
- Query S3 logs with Athena; CloudWatch logs with Logs Insights
- Not real-time packet capture; some traffic is excluded, e.g., Amazon DNS and instance metadata

## Key Fields

- `srcaddr` / `dstaddr`: Source / destination IPs
- `srcport` / `dstport`: Source / destination ports
- `action`: `ACCEPT` or `REJECT`; not proof the application request succeeded

## Troubleshooting

- Rejected new inbound or outbound connections: Check both SG and NACL rules
- Rejected response to allowed traffic: Check NACLs; SGs are stateful
- `REJECT` does not identify the exact rule that blocked the traffic
