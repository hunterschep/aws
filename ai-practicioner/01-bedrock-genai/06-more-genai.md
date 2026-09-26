# GenAI Concepts / Agents

- Token: unit of text model processes; billing often separates input / output tokens; output generation is usually the slower / costlier part
- Context window: maximum input + conversation + retrieved context + output budget; large context can raise cost / latency and dilute attention
- Embedding: numeric vector representing semantic features; similar meaning tends to be near in vector space; used for retrieval, not generation
- Chunking: split source documents into retrieval units; preserve headings / metadata and useful context
- Context engineering: select, structure, and manage all model input context: instructions, conversation state, retrieved data, tools, memory, token budget

## Agents

Agent = FM-driven system that can plan / choose steps, call tools, observe results, and continue toward a goal. More flexible than a fixed workflow; more latency, cost, and unpredictable failure paths.

- Tool use: model proposes a structured call; application / agent runtime executes it and returns result
- Workflow: predefined steps / transitions; predictable and easier to test
- Agent: model chooses next action dynamically; useful when steps depend on intermediate results
- Multi-agent patterns: supervisor delegates / routes to specialists; sequential agents pass results along; parallel agents work independently then aggregate
- Communication / orchestration carries task, results, state, retries, and handoffs; fixed workflows are easier to predict, dynamic agents adapt but are harder to test
- MCP: open protocol for connecting AI applications / agents to external tools and context providers; it does not itself grant authorization
- Memory: short-term conversation state vs. persistent user / task memory; minimize, scope, and protect retained data
- Orchestration manages planning, tool execution, state, retries, and handoffs; impose least privilege, validation, budgets, and human approval for consequential actions

Bedrock Agents / AgentCore and Strands Agents support agent applications; Kiro is an AI-assisted development environment. Know purpose-level distinctions, not implementation details.
