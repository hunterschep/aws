# Systems Manager Parameter Store

Managed storage for configuration values and simple secrets

- Types: String, StringList, SecureString
- SecureString uses KMS encryption; IAM controls access
- Hierarchical names, e.g., `/app/prod/db-url`; version history supported
- Standard: Up to 4 KB, 10,000 parameters per account / Region, no parameter storage charge
- Advanced: Up to 8 KB, 100,000 parameters per account / Region, charges apply
- Advanced policies: Expiration and notifications for expiration / unchanged values
- No built-in automatic credential rotation; use Secrets Manager when rotation is required
