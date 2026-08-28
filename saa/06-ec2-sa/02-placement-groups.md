# Placement Groups 

1. Cluster: Cluster instances into low latency group in a single AZ

- Pros: Great network speeds 
- Cons: No redundancy 
- Uses: Big data, low latency 

2. Spread: Instances spread across different underlying hardware 

- Pros: Minimal failure risk
- Cons: Limited to 7 instances per AZ per group 
- Uses: High availability, low risk 

3. Partition: Spread across many different partitions (sets of racks)

- Pros: Instances distributed across many racks 
- Cons: ? 

