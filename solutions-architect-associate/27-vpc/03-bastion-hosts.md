# Bastion Hosts

SSH access to EC2 instances in private subnets

`User -> Public bastion host -> Private EC2 instance`

- Bastion: EC2 instance in a public subnet with a public IPv4 / Elastic IP
- Bastion SG: Allow inbound SSH (`22`) only from trusted client IPs
- Private instance SG: Allow SSH from the bastion's SG
- Alternative: Systems Manager Session Manager, no inbound SSH or bastion required
- Session Manager needs IAM permissions, SSM Agent, and connectivity to SSM endpoints
