# EC2 Purchasing Options 

1. On-demand: short workload, predictable pricing, pay by second 

2. Reserved instances: For long workloads 
- Convertible reserved instances: Flexible to be upgraded / downgraded

3. Savings plans: Commmitment to an amount of usage 

4. Spot instances: Short workloads, cheap, an lose at any time 

5. Dedicated hosts: Book an ENTIRE physical server, control instance placement 

6. Dedicated instances: No other customers will share hardware 

7. Capacity reservations: Reserve capacity in specific AZ for any duration 

--- 

## 1. On Demand 

* Pay for what OS you use 
* Highest cost, no upfront payment 
* No commitment 

## 2. Reserved Instances 

* Large discount vs. on demand 
* Reserve specific attributes 
* 1 or 3 year period 
* Good for steady state usage applications 
* Can buy or sell in marketplace 

##### 2a. Convertible 
* Can change the instance type, family, OS, scope, and tenancy 

## 3. Savings Plans 

* Discount on long-term usage 
* Commit to a certain type of usage. Ex: $10/hr for 1 or 3 years 
* Locked into a specific instance family & AWS region. Ex: t3 in us-west-2 
* Flexible across instance size and OS 

## 4. Spot Instances 
* Can get a discount of up to 90% vs. On-demand 
* You can lose the instance at any point 
* Great for loosely coupled workloads: 
- batch processing 
- ML training 

## 5. Dedicated Hosts 
* Physical server with EC2 instance capacity fully dedicated to your use 
* Good for compliance requirements 
* On demand or reserved 
* Most expensive 

Dedicated physical host
┌────────────────────────────┐
│                            │
│   Your EC2 #1              │
│   Your EC2 #2              │
│   Your EC2 #3              │
│                            │
│   Physical sockets/cores   │
│   belong to your host      │
│                            │
└────────────────────────────┘


# 6. Dedicated instances 
* Instances run on hardware dedicated to you 

Physical AWS server
├── Your EC2 VM
├── Your EC2 VM
└── Your EC2 VM

# 7. Capacity reservations 
* Reserve on demand instances in an AZ for any duration 

---

