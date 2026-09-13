# AWS CloudHSM

Dedicated, single-tenant hardware security modules in your VPC

- AWS operates the hardware; you manage HSM users, keys, and cryptographic usage
- Supports symmetric / asymmetric cryptography through CloudHSM client tools and libraries
- IAM manages AWS resources; HSM users control cryptographic operations
- Multiple HSMs across AZs for high availability
- KMS also uses HSMs; the distinction is management / control, not software vs. hardware
- Exam cue: Dedicated HSMs and direct control over keys / cryptographic operations
