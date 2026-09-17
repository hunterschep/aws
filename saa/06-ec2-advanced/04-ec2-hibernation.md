# EC2 Hibernation

- Stop: RAM is lost; EBS volumes persist; instance store data is lost
- Terminate: Root EBS volume is deleted by default; other EBS volumes follow their `DeleteOnTermination` setting
- Hibernate: RAM contents are saved to the encrypted EBS root volume

## Hibernate Requirements and Behavior

- Must be enabled at launch
- Requires a supported AMI and instance type
- Root volume must be encrypted and large enough for RAM
- Resume is faster because the operating system and applications remain in memory
- Instance usage is not billed while hibernated, but EBS storage is still billed
