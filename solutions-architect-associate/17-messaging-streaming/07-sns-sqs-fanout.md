# SNS and SQS Fanout

Publisher -> SNS topic -> independent SQS queue per consumer

- Publish once; every subscribed queue receives its own copy
- Each consumer keeps its own backlog and retry schedule
- Add or remove consumers without changing the publisher
- SQS adds persistence, delayed processing, retries, and DLQs
- Queue resource policy must allow the SNS topic to call `sqs:SendMessage`
- Restrict the policy with the topic ARN
- Subscription filters prevent unwanted messages from reaching a queue
- For strict ordering, use an SNS FIFO topic with SQS FIFO queues
