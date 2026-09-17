# On-Premises and AWS

Tools for connecting existing environments with AWS

- Amazon Linux: Download VM images for on-premises use, e.g. [Amazon Linux 2023](https://docs.aws.amazon.com/linux/al2023/ug/outside-ec2-download.html) for VMware, KVM, or Hyper-V
- VM Import/Export: Import supported VM images as EC2 AMIs; export eligible images back to an on-premises environment
- Import / export has OS, image-format, and licensing restrictions; not every AMI can be exported
- Application Discovery Service: Inventory servers and assess application dependencies
- Application Migration Service (MGN): Rehost entire servers on EC2
- DMS: Migrate database data and replicate ongoing database changes
