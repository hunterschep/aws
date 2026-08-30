# AWS Transfer Family

Fully managed file-transfer endpoints backed by Amazon S3 or Amazon EFS.

## Protocols

- SFTP: encrypted over SSH
- FTPS: FTP encrypted with TLS
- FTP: unencrypted; use only through an internal VPC-hosted endpoint
- AS2: secure business-to-business document exchange

## Features

- Public or VPC-hosted endpoints, depending on protocol
- Service-managed, Microsoft AD, or custom identity provider
- IAM controls S3 access; POSIX permissions control EFS access
- Logical directories can restrict each user to an assigned path
- No transfer-server infrastructure to manage
- Charges include enabled server endpoints and transferred data
