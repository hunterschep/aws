# Amazon Bedrock

Managed service to use FMs through a unified API; select among supported providers / models without managing model infrastructure

- Foundation models, model customization, inference, Knowledge Bases (RAG), Agents, Guardrails, evaluations
- Model choice: modality, task quality, context / output limits, latency, language, availability / Region, customization, cost, data / compliance needs
- Check model access, supported Regions, and model-specific features; model catalog changes over time
- Customer prompts and outputs are not used by Bedrock model providers to train their base models

## Inference cost / capacity

- On-demand: pay for input + output tokens; flexible, good for variable / low volume
- Batch inference: discounted bulk processing; asynchronous, not interactive
- Provisioned Throughput: reserve model capacity for predictable high volume / throughput; committed capacity costs more when underused
- Custom model deployment can require dedicated capacity; training and inference are separate costs
- Reduce cost / latency with a smaller suitable model, shorter context and outputs, prompt caching where supported, or distillation

Use SageMaker AI when you need broader control to build, train, host, or operate custom ML models. Use Bedrock for managed access to FMs and GenAI application features.
