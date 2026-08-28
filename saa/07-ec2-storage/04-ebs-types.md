# Volume Types 

1. GP2/GP3 (SSD): General purpose SSD 

2. IO 1 / IO 2 Block Express (SSD): Highest performance SSD volume for mission-critical low-;atency or high throughput workloads 

3. ST 1 (HDD): Low cost HDD volume designed for frequently accessed, throughput-intensive workloads 

4. SC 1 (HDD): Lowest cost HDD volume designed for less frequently accessed workloads 

Size | Throughput | IOPS 

Only GP 2 / GP3 / IO can be used as boot volumes 

#### GP2/3 - General
- Cost effective storage 
- General purpose 

#### IO1/2 - IOPS 
- Critical business apps with sustained IOPS 
- Great for DB 
- Support EBS multi-attach 

#### ST1/SC1 - Throughput 
- Cannot be a boot volume 
- st1: Big data, data warehouses 
- sc1: Infrequent access 