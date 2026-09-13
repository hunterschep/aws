# Encryption Basics

## In Transit

- TLS encrypts traffic between endpoints, e.g., HTTPS
- Certificate validation authenticates the server and helps prevent man-in-the-middle attacks
- SSL is obsolete; use TLS

## Server-Side Encryption at Rest

- Server encrypts data before storage and decrypts it for authorized reads
- Storage remains encrypted; TLS separately protects data during transfer
- Service needs access to the encryption keys

## Client-Side Encryption

- Client encrypts before upload and decrypts after download
- Storage service only sees ciphertext; client controls decryption
- Envelope encryption: Encrypt data with a data key, then encrypt that key with a KMS key
