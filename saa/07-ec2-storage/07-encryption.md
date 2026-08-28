# EBS Encryption

EBS encryption uses AES-256 data encryption and AWS KMS keys.

An encrypted EBS volume encrypts:

- Data at rest
- Data between the volume and EC2 instance
- Snapshots created from the volume
- Volumes created from those snapshots

## Encrypt an Existing Unencrypted Volume

1. Create a snapshot of the volume
2. Copy the snapshot with encryption enabled
3. Create a new volume from the encrypted snapshot
4. Replace the original volume

Encryption is not added to an existing volume in place. Use a customer managed KMS key when encrypted snapshots or AMIs must be shared across accounts.
