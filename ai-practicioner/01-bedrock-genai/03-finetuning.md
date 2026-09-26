# FM Customization

| Method | Changes weights? | Best for | Main tradeoff |
| --- | --- | --- | --- |
| Prompt / in-context examples | No | Quick task guidance; no training job | Context tokens every request; limited persistence |
| RAG | No | Current / private factual knowledge with source grounding | Retrieval, indexing, and vector-store costs; quality depends on chunks / retrieval |
| Fine-tuning (SFT / instruction) | Yes | Consistent format, behavior, or domain task from examples | Curated labeled data + training / deployment cost; knowledge can go stale |
| Continued pre-training | Yes | Teach domain vocabulary / patterns from large unlabeled corpus | More data / compute; not a substitute for up-to-date retrieval |
| Distillation | Student weights | Transfer teacher behavior to a smaller / cheaper model | Quality may drop; needs generated / curated training examples |

Pre-training learns broad patterns from large corpora. Supervised fine-tuning trains on prompt -> desired completion examples. RLHF uses human preference feedback to train a reward model / guide optimization; preference tuning aligns behavior, not a knowledge database.

- Data: permitted / governed, high quality, representative, deduplicated, task-relevant; split train / validation / test
- More data is not automatically better; poor labels, imbalance, leakage, and narrow examples can harm results
- Evaluate against the base model and held-out, realistic examples; check safety and regressions
- Model distillation: larger teacher -> smaller student; typically lower inference cost / latency, possible capability loss
