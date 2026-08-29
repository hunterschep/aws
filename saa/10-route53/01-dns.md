# Domain Name System (DNS)

Translates human-readable hostnames into IP addresses.

## Terms

- Domain registrar: registers domains and configures name server delegation
- DNS service: hosts records and answers DNS queries
- Zone file: collection of DNS records for a domain
- Name server: authoritative server for a DNS zone
- Recursive resolver: finds and caches answers for clients
- Root name servers: top of the DNS hierarchy
- Top-level domain (TLD): .com, .org, .gov
- Second-level domain (SLD): example in example.com
- Zone apex: the root name of a hosted zone, such as example.com
- Record types: A, AAAA, CNAME, NS

## DNS Lookup

1. Browser and operating system check their caches.
2. Client asks a recursive DNS resolver.
3. Resolver asks a root server, which refers it to the TLD servers.
4. TLD server refers it to the domain's authoritative name servers.
5. Authoritative server returns the requested record.
6. Resolver caches the answer for the record's TTL.

- DNS returns an endpoint; it does not proxy application traffic
- Domain registration and DNS hosting can use different providers
