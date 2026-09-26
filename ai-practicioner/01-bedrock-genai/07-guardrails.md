# Amazon Bedrock Guardrails

Configurable safeguards applied to FM inputs and / or outputs; policy can be used with supported Bedrock models and some external / self-hosted model flows. Defense in depth, not a guarantee against all harmful or inaccurate output.

- Content filters: harmful text / image content; hate, insults, sexual, violence, misconduct; tune sensitivity / block strength
- Denied topics: define subjects the application must avoid (e.g., investment advice)
- Word filters: block exact words / phrases or profanity
- Sensitive information filters: detect text PII types or custom regex; block or mask (redact / replace)
- Prompt attack filters: detect jailbreaks, prompt injection, and attempts to reveal system prompts
- Contextual grounding checks: compare response with supplied source and query; flag ungrounded or irrelevant output
- Automated Reasoning checks: validate claims against formal business rules / policy; detect-only, so application handles findings

Exam cues:

- PII redaction -> sensitive information filter, mask
- Keep assistant on approved subjects -> denied topics
- Block harmful / toxic text or images -> content filters
- Resist attempts to override system instructions -> prompt attack filter
- Verify answer against retrieved context -> contextual grounding
- Check response against defined policy rules -> Automated Reasoning

Guardrails do not replace IAM, authorization, input validation, secure tool design, human review, or source permissions. Prompt injection can arrive from user input or retrieved documents; restrict tools / data independently.
