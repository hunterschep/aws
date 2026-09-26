# RAG and Knowledge Bases

Retrieval-Augmented Generation (RAG): retrieve relevant external content at inference, then place it in FM context to ground the answer in current / private sources. Does not update model weights.

Ingest: source docs -> parse / clean -> chunk -> embeddings -> vector index (+ original text / metadata)
Query: user question -> query embedding -> retrieve / rerank chunks -> prompt with context -> FM answer (+ citations)

- Chunk size / overlap tradeoff: too small loses context; too large adds noise / consumes tokens
- Retrieval quality depends on parsing, chunking, embeddings, metadata filters, and top-k / reranking
- RAG can reduce stale knowledge and hallucinations; it cannot guarantee truth or fix a poor source
- Keep source permissions in retrieval path; don't let citations expose documents the user cannot access

Bedrock Knowledge Bases manages much of ingestion / retrieval / generation. Common sources include S3; supported connectors vary.

Vector search choices in exam guide: OpenSearch Service, Aurora, Neptune, RDS for PostgreSQL. Embeddings can be stored in a vector index; source docs remain in their data source. S3 is commonly a source, not itself a general-purpose vector database in this question set.

- OpenSearch: managed search, vector and keyword retrieval
- Aurora / RDS PostgreSQL: relational data plus vector search
- Neptune: graph relationships / graph retrieval

Use RAG for changing or source-citable facts; fine-tuning for response style / task behavior. They can be combined.
