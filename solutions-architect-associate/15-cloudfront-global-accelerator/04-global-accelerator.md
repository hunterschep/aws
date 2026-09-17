# AWS Global Accelerator

Improves global application availability and performance without caching content.

- Provides fixed anycast IP addresses advertised from AWS edge locations
- Sends TCP or UDP traffic onto the AWS global network near the client
- Routes to healthy regional endpoints
- Endpoints: ALB, NLB, EC2 instance, or Elastic IP address
- Endpoint groups support traffic dials and endpoint weights
- Health checks enable fast regional or endpoint failover
- Useful for static IP allowlists, gaming, VoIP, IoT, and disaster recovery

## Unicast vs. Anycast

- Unicast: one IP normally identifies one network location
- Anycast: the same IP is advertised from multiple edge locations
- Client traffic enters through a nearby healthy edge location

## Global Accelerator vs. CloudFront

### CloudFront

- HTTP and HTTPS content delivery network
- Caches static content and accelerates dynamic content
- Responses can be served directly from edge caches

### Global Accelerator

- TCP and UDP network proxy with fixed anycast IPs
- Does not cache content
- Proxies traffic to regional application endpoints over the AWS network
