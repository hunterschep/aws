# EC2 Purchasing Options

| Option | Best Fit |
| --- | --- |
| On-Demand | Short, unpredictable workloads |
| Reserved Instances | Steady usage with a known configuration |
| Savings Plans | Steady compute spend with more flexibility |
| Spot Instances | Fault-tolerant, interruptible workloads |
| Dedicated Hosts | Server-bound licenses or strict compliance |
| Dedicated Instances | Single-tenant hardware |
| Capacity Reservations | Guaranteed capacity in one AZ |

## 1. On-Demand Instances

- No upfront payment or long-term commitment
- Pay by the second for running instances
- Highest price, but maximum flexibility

## 2. Reserved Instances

- Billing discount for a 1- or 3-year term; not a separate instance type
- Best for steady-state workloads
- Payment options: All Upfront, Partial Upfront, or No Upfront
- Standard RI: Largest discount, less flexible
- Convertible RI: Can exchange for different instance attributes
- Regional RI: Discount flexibility, but no capacity reservation
- Zonal RI: Discount plus capacity reservation in one AZ

## 3. Savings Plans

- Commit to a consistent USD-per-hour spend for 1 or 3 years
- Compute Savings Plans: Flexible across instance family, Region, OS, tenancy, Fargate, and Lambda
- EC2 Instance Savings Plans: Tied to an instance family and Region; larger discount
- Do not reserve capacity

## 4. Spot Instances

- Use spare EC2 capacity at a large discount
- AWS can interrupt the instance when it needs the capacity
- Best for stateless, flexible, and fault-tolerant workloads
- Examples: Batch jobs, data analysis, image processing, and distributed ML training

## 5. Dedicated Hosts

- Entire physical server dedicated to one account
- Visibility and control over sockets, cores, and instance placement
- Supports some server-bound bring-your-own-license models
- Useful for compliance; available On-Demand or with a Host Reservation

## 6. Dedicated Instances

- Instances run on single-tenant hardware
- No host-level socket, core, or placement visibility
- Simpler than Dedicated Hosts, but less control

## 7. On-Demand Capacity Reservations

- Reserve capacity for a specific instance configuration in one AZ
- No term commitment and no billing discount
- Charged at the On-Demand rate whether the capacity is used or not
- Combine with an applicable RI or Savings Plan for a billing discount
