# Amazon Machine Images

An Amazon Machine Image (AMI) is a Region-scoped template used to launch EC2 instances.

- Contains the operating system, software, configuration, and block-device mapping
- Can be AWS provided, public, from AWS Marketplace, or custom
- Custom AMIs are private by default and can be shared
- Copy an AMI to use it in another Region
- Architecture must match the instance type, such as x86_64 or Arm64

## Custom AMI Process

1. Launch an EC2 instance
2. Install and configure the required software
3. Remove credentials and other sensitive data
4. Create the AMI; EC2 reboots by default for file-system consistency
5. EBS-backed volumes produce EBS snapshots
6. Launch new instances from the AMI

Prebaked AMIs reduce boot time because installation work is already complete. Snapshot storage incurs charges.
