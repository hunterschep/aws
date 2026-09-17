# SQS with Auto Scaling

Producer -> SQS -> EC2 Auto Scaling group -> downstream service

- SQS buffers spikes and protects downstream systems from overload
- Consumers poll, process, then delete messages
- Scale on `ApproximateNumberOfMessagesVisible` or backlog per instance
- Scale out to drain the queue faster; scale in when the backlog falls
- Common use case: buffer writes before a database
- Consumers must tolerate retries and duplicate messages
