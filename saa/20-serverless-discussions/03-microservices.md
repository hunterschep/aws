# Microservices Architecture

Split an application into small services with independent deployment and scaling

- Each service owns a clear business capability and its data
- Avoid a shared database that tightly couples service releases
- Failures should be isolated instead of cascading across the application

## Synchronous Communication

Client -> API Gateway/ALB -> Lambda or ECS service

- Simple request/response when the caller needs an immediate result
- Creates runtime dependency; use timeouts, retries, and circuit breaking

## Asynchronous Communication

- SQS: buffer work and smooth traffic spikes
- SNS: fan out one event to multiple consumers
- EventBridge: route events by rules across services/accounts
- Step Functions: orchestrate a known multi-step workflow

## AWS Building Blocks

- API Gateway + Lambda for serverless services
- ALB + ECS/EKS for containerized services
- Cognito or authorizers for API authentication
- CloudWatch and X-Ray for logs, metrics, alarms, and tracing

Prefer async events when the caller does not need an immediate response
