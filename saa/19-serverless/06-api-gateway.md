# Amazon API Gateway

Managed front door for Lambda, HTTP services, AWS services, and private integrations

## API Types

- REST API: feature-rich; caching, usage plans, API keys, request validation
- HTTP API: lower-cost, simpler HTTP proxy; built-in JWT authorization
- WebSocket API: persistent, two-way client communication

## REST Endpoint Types

- Edge-optimized: requests enter through CloudFront edge locations
- Regional: clients call an endpoint in one Region
- Private: accessible from a VPC through an interface endpoint

HTTP and WebSocket APIs use Regional endpoints

## Features

- Deployments are exposed through stages such as `dev` and `prod`
- Throttling and quotas protect backends
- REST API caching reduces backend calls; caching is not available for HTTP APIs
- Request/response transformations and CORS support
- Custom domains, TLS certificates, CloudWatch logs/metrics, and X-Ray tracing

## Authorization

- IAM authorization with SigV4
- Cognito user pool or JWT authorizer
- Lambda authorizer for custom logic
- Resource policies for source/account restrictions
- API keys identify and meter clients; they are not authentication
