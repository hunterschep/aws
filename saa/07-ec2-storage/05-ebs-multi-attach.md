# EBS Multi-Attach

- Attaches one `io1` or `io2` volume to multiple EC2 instances
- All instances and the volume must be in the same Availability Zone
- Each instance has full read and write access
- Application must coordinate concurrent writes
- Use a cluster-aware application or clustered file system
- Useful for clustered applications that require shared block storage
