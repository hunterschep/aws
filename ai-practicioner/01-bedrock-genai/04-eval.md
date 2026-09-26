# FM / Application Evaluation

- Use representative held-out prompts; compare models / prompts with same test set and scoring rubric
- Human / SME review: best for nuanced quality, safety, relevance, and domain correctness; slower / costly
- Automatic / LLM-as-a-judge: scales, but judge can be biased or wrong; calibrate against human ratings
- Bedrock Model Evaluation: evaluate models with built-in or custom datasets; human or automated jobs
- Evaluate the whole application, not only the FM: retrieval, prompts, tools, latency, failures, cost, task completion

## Text metrics

- Accuracy: fraction correct; misleading with imbalanced classes
- Precision = TP / (TP + FP): of flagged positives, how many are correct? Use when false alarms are costly
- Recall = TP / (TP + FN): of actual positives, how many found? Use when misses are costly
- F1: harmonic balance of precision / recall; useful when both matter
- ROUGE: n-gram overlap / subsequence recall, often summaries
- BLEU: n-gram precision with brevity penalty, often translation
- BERTScore: contextual embedding similarity; semantic match, not factual correctness
- Perplexity: next-token prediction uncertainty; lower can mean more predictable text, not necessarily better answers

## RAG / business checks

- Retrieval: relevance, coverage / recall of needed source passages
- Generation: groundedness / faithfulness, answer relevance, correctness, citation accuracy
- Application: task completion, user satisfaction, cost per interaction, latency, escalation / failure rate, ROI
- Monitor subgroup performance, drift, harmful output, and user feedback after release
