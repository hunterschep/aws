# Generative AI

- GenAI learns patterns in training data, then samples likely next tokens / outputs; plausible output ≠ verified fact
- FM: broad model trained on large, often unlabeled datasets; adapts to many downstream tasks
- LLM: FM specialized for language; multimodal FMs accept / produce more than text
- Deep learning uses multilayer neural networks; GenAI is a capability, not a model architecture
- Transformer attention relates tokens across a sequence; diffusion models learn to reverse a noise process

## Data / learning

- Supervised: labeled examples -> classification / regression
- Unsupervised: unlabeled data -> clusters, structure, anomalies
- Reinforcement learning: actions + reward signal -> policy that maximizes reward
- Structured / tabular data fits traditional ML well; text, images, audio are unstructured
- Training updates model parameters; inference uses the trained model to produce predictions

## Inference patterns

- Real-time: synchronous request / response; low latency, caller waits
- Asynchronous: submit job, poll or receive completion; large / long-running inputs
- Batch: many records processed together, typically offline; throughput over low latency
- Serverless: no endpoint capacity to manage; pay per request / use, with service/model limits and possible latency variability

Choose a specific prediction, rule, or SQL query instead of GenAI when it meets the need more cheaply and consistently.
