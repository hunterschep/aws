# Responsible AI / Security / Governance

- Responsible AI: fairness, inclusivity, robustness, safety, privacy, veracity, accountability
- Bias can enter through sampling, labels, historical decisions, features, or deployment context; use diverse data, subgroup analysis, audits, and feedback
- Explainability: transparent model logic / data and understandable reasons for outputs; complex FMs are less inherently interpretable
- SageMaker Model Cards document purpose, intended use, evaluation, limitations; Bedrock Model Evaluations assess model / application performance
- Human-centered design: disclose AI use and limitations, provide understandable explanations and feedback / appeal paths; human review for consequential decisions
- GenAI risks: hallucinations, harmful / biased output, IP disputes, privacy leakage, prompt injection, overreliance, reputational harm
- Review open-model and dataset licenses, source rights, intended-use limits, and provenance before adoption; open weights do not automatically mean unrestricted use

## AWS security / governance cues

- IAM roles / policies: least-privilege access to models, data, tools; customer controls identities and permissions
- KMS: encryption at rest; TLS for data in transit; Secrets Manager for credentials
- PrivateLink: private connectivity to supported AWS services without traversing public internet
- Macie: discover / classify sensitive data in S3; Inspector: vulnerability findings; CloudTrail: API audit trail; CloudWatch: logs / metrics; Config: resource configuration / compliance; Artifact: AWS compliance reports; Trusted Advisor: account recommendations / checks
- Shared responsibility: AWS secures underlying cloud infrastructure; customer secures data, identity, configuration, application, prompts, and access
- Data governance: provenance / lineage, approved sources, residency, retention / deletion, access review, audit logging, periodic risk review
- Governance program: documented policy, named owners, review cadence, team training, transparency standards; GenAI Security Scoping Matrix helps classify GenAI application security scope
- Secure RAG / agents: enforce source-level authorization, filter / validate inputs and outputs, scope tools, log interactions safely, require approval for sensitive actions

Ground answers in trusted sources, validate outputs, show citations, use confidence thresholds / abstention or human escalation. RAG and Guardrails reduce specific risks; neither guarantees factual accuracy.
