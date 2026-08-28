# SSL and TLS

- SSL: Secure Sockets Layer; legacy protocol
- TLS: Transport Layer Security; modern replacement for SSL
- An X.509 server certificate proves the server identity and enables encryption in transit
- Public certificates are signed by a certificate authority and expire

## Load Balancer Certificates

- Manage certificates with AWS Certificate Manager (ACM) or import them
- ACM-issued public certificates can renew automatically when eligibility requirements remain met
- Imported certificates must be renewed and reimported manually
- HTTPS or TLS listener requires a default certificate
- Add a certificate list to serve multiple domains
- Security policy selects supported TLS versions and cipher suites

## Server Name Indication

SNI sends the requested hostname during the TLS handshake.

1. Client sends a TLS `ClientHello` with the hostname
2. ALB or NLB selects the matching certificate
3. TLS handshake establishes encrypted traffic
4. Listener rules route the request

SNI allows multiple certificates on one listener. The load balancer can terminate TLS and send HTTP to targets, or use HTTPS again for end-to-end encryption.
