# AWS KMS (Key Management Service)

Managed encryption keys, backed by hardware security modules (HSMs)

- Integrates with AWS services and IAM; API activity auditable through CloudTrail
- Symmetric AES-256: Same key for encryption / decryption; key material not downloadable
- Asymmetric: Public / private key pairs, e.g., RSA or ECC; public key downloadable, private key stays in KMS
- Key type / usage determines supported operations, e.g., encryption or signing
- Envelope encryption: Data keys encrypt bulk data; KMS protects the data keys

## Key Ownership

- AWS owned: Managed internally by AWS services; not visible in your account
- AWS managed: In your account, e.g., `aws/ebs`; AWS controls policy and rotation
- Customer managed: You control policy, lifecycle, and supported rotation options
- AWS managed keys cannot be shared across accounts; use customer-managed keys

## Rotation

- AWS managed keys: Automatic yearly rotation
- Eligible customer-managed symmetric keys: Optional automatic / on-demand rotation
- Asymmetric keys: Rotate manually by creating a replacement key
- Rotation preserves old key material for decryption; does not re-encrypt existing data

## Access Control

- Every KMS key has a key policy
- Default policy enables account-level IAM delegation, not access for everyone
- Key administrators and key users can have different permissions
- Cross-account access: Owner's key policy plus caller's IAM policy
- Encrypted EBS snapshot -> copy to destination Region with a destination key -> restore volume

## Multi-Region Keys

- Related regional keys share key ID and key material; different regional ARNs
- Not one global key: Policies and grants managed independently in each Region
- Useful for client-side encryption / decryption in multiple Regions
- Example: Encrypt selected DynamoDB attributes client-side before storing them
