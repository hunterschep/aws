# AI / ML Review

- AI: broad field; ML learns patterns from data; deep learning uses multilayer neural networks
- Generative AI creates new content; agentic AI uses a model plus tools / actions to pursue a goal
- Classification -> category / label; regression -> numeric value; clustering -> groups without labels
- Overfit: learns training detail / noise; poor generalization. Underfit: fails to learn enough pattern
- Bias: systematic skew / unfair outcomes; variance: sensitivity to data changes / overfitting risk

## Model choice

- Traditional ML: structured, narrow prediction; cheaper / faster, easier to measure, often more interpretable
- FM: flexible language / image / audio tasks, content generation, broad task coverage; nondeterministic, harder to explain, token cost and hallucination risk
- Prefer traditional ML / rules for stable labels, strict explainability, low latency / cost, and predictable output
- Use FM when language / multimodal understanding or generation brings enough value; human review for high-impact decisions

## Pipeline / operations

Data collection -> cleaning / labeling -> split -> train -> evaluate -> deploy -> monitor -> retrain / retire

- Avoid data leakage between training and test; validate representative / balanced data and label quality
- MLOps: repeatable experiments, version data / models, automate reliable release, monitor drift / quality / cost, retrain when justified
- Model metrics do not guarantee business value; track both technical quality and user / business outcomes

## Common AWS fit

- SageMaker AI: prepare, build, train, tune, deploy, and manage custom ML
- Bedrock: build GenAI applications on managed foundation models
- Rekognition: image / video analysis; Textract: document text / forms; Transcribe: speech to text; Comprehend: text insights; Translate: language translation; Polly: text to speech; Lex: conversational bots; Personalize: recommendations
