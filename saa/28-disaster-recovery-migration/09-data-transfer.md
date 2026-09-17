# Transferring Large Amounts of Data to AWS

Choose based on data volume, bandwidth, deadline, and whether transfers recur

- DataSync: Managed online transfer / synchronization between on-premises storage and S3, EFS, or FSx
- Direct Connect: Dedicated network connectivity for ongoing transfers; provisioning takes time, and it does not copy data itself
- Site-to-Site VPN: Encrypted connectivity over the internet; throughput depends on the connection
- S3 Transfer Acceleration: Speed up long-distance transfers through AWS edge locations
- S3 multipart upload: Upload parts in parallel and retry failed parts without restarting the whole object
- Snowball Edge: Course example for offline bulk transfer when network transfer is impractical; [no longer available to new customers](https://docs.aws.amazon.com/snowball/latest/developer-guide/snowball-edge-availability-change.html)
- Estimate transfer time: Data size in bits / usable bits per second, plus setup or shipping time
