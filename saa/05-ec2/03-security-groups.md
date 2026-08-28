# Security Groups 

Fundamental network security on AWS 

* ONLY contain ALLOW rules 
* Can reference by IP or by security group 
* Can be attached to multiple instances 
* Locked to region / VPCs 
* Maintain a security group for SSH access 


Ports: 
- 22: Secure shell SSH 
- 21: FTP (file transfer) / SFTP (secure)
- 80: HTTP 
- 443: HTTPS 
- 3389: RDP remote desktop 

## SSH 

Remote secure shell over TCP to connect directly to an AWS instance 