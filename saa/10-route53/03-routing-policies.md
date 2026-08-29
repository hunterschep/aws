# Route 53 Routing Policies

DNS policies control which answer Route 53 returns. Route 53 does not proxy traffic.

1. **Simple**
   - One resource for a given function
   - Multiple values can be returned; the client chooses a target

2. **Weighted**
   - Splits responses according to each record's weight
   - Weights are relative and do not need to total 100

3. **Latency-based**
   - Routes to the AWS Region with the best measured latency for the client

4. **Failover**
   - Active-passive routing using primary and secondary records
   - Requires health evaluation of the primary

5. **Geolocation**
   - Routes by the client's geographic location
   - Create a default record for unmatched locations

6. **IP-based**
   - Routes by the client's source CIDR range

7. **Geoproximity**
   - Routes based on client and resource locations
   - Bias expands or shrinks a resource's geographic traffic area

8. **Multivalue Answer**
   - Returns up to eight healthy records selected at random
   - Provides client-side distribution, not a replacement for a load balancer
