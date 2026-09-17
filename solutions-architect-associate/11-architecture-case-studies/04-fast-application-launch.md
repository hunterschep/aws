# Instantiating Applications Quickly

## EC2

- Golden AMI: OS, dependencies, and application already installed
- User data: dynamic bootstrapping; runs only on first launch by default
- User data adds boot time, so combine it with a golden AMI when useful

## RDS

- Restore a snapshot into a new DB instance or cluster

## EBS

- Create a new volume from a snapshot
- Snapshot blocks load lazily on first access
- Fast Snapshot Restore removes first-access latency in selected AZs
