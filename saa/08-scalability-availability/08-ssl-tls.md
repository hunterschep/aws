# SSL/TLS 

SSL/TLS certificate allows traffic between clients and load balancer to be encrypted in transit 
SSL = secure lockets layer 
TLS = transport security layer (Newer than SSL)

Public SSL certificates are issued by certificate authorities. Have an expiry date 

Users <-->  Load Balancer <--> EC2 instance 
     via HTTPS             HTTP 

- Load balancer uses X.509 certificate (SSL/TLS server certificate)
- You can manage certificates using ACM (AWS Certificate Manager)
- You can create/upload your own certificates alternatively 
- HTTPS listener: 
* Must specify a default certificate 
* Can add optional list of certs to support multiple domains 
* Clients can use SNI (Server Name Indication) to specify the hostname they reach 

Browser: "I want HTTPS for example.com"

       TLS handshake
            ↓

ALB: "Here's my certificate proving I'm example.com"

Browser:
- verifies certificate
- establishes encryption keys

       encrypted HTTPS
Browser <==============> ALB

                         ALB decrypts request

                         GET /products
                              |
                              | plain HTTP
                              v
                             EC2

### SNI 

1. Browser connects to ALB :443

2. Browser sends TLS ClientHello
   SNI = shop.example.com

3. ALB sees SNI
   chooses shop.example.com certificate

4. TLS handshake completes

5. Browser sends encrypted HTTP request
   Host: shop.example.com

6. ALB uses listener rules to route the request
   to the appropriate target group

