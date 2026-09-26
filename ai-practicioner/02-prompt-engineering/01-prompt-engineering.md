# Prompt Engineering

Prompt = instruction + context + input + desired output format / constraints

- Be specific, concise, state audience / task / format; separate trusted instructions from untrusted input
- Zero-shot: no examples; one-shot: one example; few-shot: several examples
- Negative instruction: state what to avoid
- Prompt template: reusable prompt with variables; version and evaluate changes against a fixed test set
- Chain-of-thought: ask for a task to be worked through in steps; for exam purposes, prompts can structure reasoning, but do not treat generated reasoning as proof
- Prompt Management: save, version, compare, and reuse Bedrock prompts / variants

## Inference settings

- Temperature: randomness / diversity; lower is more predictable, higher more varied
- Top-k: sample among k most likely tokens; smaller k narrows choices
- Top-p: sample from smallest likely-token set whose cumulative probability reaches p
- Max output tokens: caps response length; too low truncates, higher may increase latency / cost
- Stop sequence: stop generation when a specified sequence appears

Avoid raising temperature and top-p together without a reason; tune with actual examples. Settings available vary by model.

## Risks

- Prompt injection / hijacking: untrusted input attempts to override system instructions or manipulate tool use
- Jailbreak: attempts to bypass safety restrictions
- Prompt leakage: attempts to expose system / developer instructions or confidential context
- Prompting alone is not a security boundary; use Guardrails, authorization, output validation, least-privilege tools, and careful handling of retrieved content
