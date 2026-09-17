# Spot Instances

- Use spare EC2 capacity for interruptible workloads
- Interruption behavior: Stop, hibernate, or terminate
- Usually provides a two-minute interruption warning; hibernation begins immediately
- Design workloads to be stateless, fault-tolerant, and able to resume

## Spot Requests

- One-time request: Is not resubmitted after the instance is interrupted
- Persistent request: Is resubmitted after interruption until it expires or is canceled

## Spot Fleet

- Defines target capacity and multiple launch pools
- Pools vary by instance type, Availability Zone, operating system, and tenancy
- Can maintain a mix of Spot and On-Demand Instances
- Legacy API; prefer EC2 Fleet or an Auto Scaling group for new designs

### Allocation Strategies

- `lowestPrice`: Uses the cheapest pools; greater interruption risk
- `diversified`: Spreads capacity across pools
- `capacityOptimized`: Uses pools with the most available capacity
- `priceCapacityOptimized`: Balances price and capacity; preferred for most workloads
