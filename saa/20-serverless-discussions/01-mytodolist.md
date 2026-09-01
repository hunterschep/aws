# MyTodoList Architecture

## Requirements

- HTTPS REST API and serverless backend
- Managed authentication
- Each user can access only their own data and S3 prefix

## Architecture

Mobile client -> Cognito user pool -> API Gateway -> Lambda -> DynamoDB

- User pool authenticates users and issues JWTs
- API Gateway authorizer validates the token
- Lambda derives the user ID from verified token claims, not request input
- DynamoDB partition key isolates each user's to-do items

## Direct S3 Access

User pool token -> Cognito identity pool -> temporary AWS credentials -> S3

- IAM role restricts each user to their own S3 prefix
- Identity pool needed only when the client calls AWS services directly

## High Read Throughput

- Add DAX for repeated, eventually consistent DynamoDB reads
- Keep Lambda stateless so every layer can scale independently
