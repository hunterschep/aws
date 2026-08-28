# Elastic File System 

- Managed NFS (Network file system) that can be mounted on EC2 instances 
- Multi AZ 
- Highly available, scalab,e and expensive 
- Uses NFSv4.1 protocol 
- Uses security to group to control access to EFS 
- Only compatible with Linux based AMI 
- POSIX file system 
- Scales automatically 

Use cases: Content management, web serving, data sharing, Wordpress 

### Performance and Storage Classes 
* 1000s of concurrent NFS clients, 10 GB+/s of throughput 
* Grow to petabyte scale system 

#### Performance 
1. General purpose: Default latency sensitive 
2. Max I/O: Higher latency, throughput, highly parallel 
3. Throughput Mode: 
- Bursting: Bursty throughput 
- Provisioned: Set your throughput 
- Elastic: Automatically scale throughput 

#### Storage Classes 
1. Storage Tiers: Move file after N days 
i. Standard tier: Frequent access 
ii. Infrequent access: lower storage cost, higher retrieval time 
