# Amazon SageMaker AI

Managed platform for custom ML: prepare data, build / train / tune models, deploy inference, monitor models.

- SageMaker JumpStart: discover / deploy pretrained FMs and ML models, or start from solution templates
- Choose SageMaker when model / training / hosting control is needed; Bedrock when using managed FMs and GenAI application features
- Model Cards: document intended use, factors, evaluation, and limitations for governance / transparency
- SageMaker Clarify: help detect bias and explain model predictions; analysis supports human review, not a fairness guarantee
- Prefer smaller / efficient models and avoid unnecessary retraining / inference for cost and energy efficiency; weigh model quality against compute footprint

Pipeline cue: data prep -> training job -> evaluation -> endpoint / batch inference -> monitoring. Training and inference have separate resource / cost choices.
