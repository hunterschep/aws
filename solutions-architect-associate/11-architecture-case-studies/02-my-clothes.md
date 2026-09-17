# Stateful Web Architecture: MyClothes.com

Prompt: shopping website with user sessions and carts.

## Starting Architecture

    Route 53 -> load balancer -> Auto Scaling group

Problem: cart state stored on one EC2 instance is lost when the user changes targets.

## Architecture Evolution

1. **Sticky sessions**
   - Send a user back to the same target
   - Instance failure or scale-in can still lose session state

2. **Client-side cookies**
   - Any instance can read the state
   - Keep cookies small; sign or encrypt sensitive values

3. **Shared session store**
   - Cookie contains only a session ID
   - Store session data in ElastiCache with a TTL
   - Application servers become stateless

4. **Durable application data**
   - Store users, orders, and persistent cart data in RDS or Aurora

5. **Read scaling**
   - Add read replicas for read-heavy workloads
   - Continue sending writes to the writer

6. **High availability**
   - Load balancer and Auto Scaling group across multiple AZs
   - RDS Multi-AZ for database failover
   - ElastiCache replication group with Multi-AZ and automatic failover

## Exam Notes

- Sticky sessions do not replace a shared session store
- Read replicas improve read capacity; Multi-AZ improves availability
- Keep durable data in the database, not only in a cache
