# ML Metrics

| Metric | Formula / meaning | Prefer when |
| --- | --- | --- |
| Accuracy | (TP + TN) / all | Classes balanced; FP / FN costs similar |
| Precision | TP / (TP + FP) | False positives are costly |
| Recall | TP / (TP + FN) | False negatives are costly |
| F1 | Harmonic mean of precision and recall | Need balance; classes may be imbalanced |

Fraud: prioritize recall if missing fraud is costly; precision matters if investigating false alarms is costly. Choose threshold based on business cost, not metric alone.

- Model metrics: quality of predictions / outputs
- Business metrics: cost per user, development / operating cost, customer feedback, ROI, task completion
- Compare against a baseline and evaluate on representative data not used for training
