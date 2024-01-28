<h1>RAG (Retrieval-Augmented Generation) Algorithms</h1>

<table>
  <tr>
    <th>Algorithm</th>
    <th>Explanation</th>
    <th>Implementation (Python)</th>
    <th>Advantages</th>
    <th>Disadvantages</th>
  </tr>
  <tr>
    <td>Standard RAG</td>
    <td>Combines a seq2seq model with a dense vector index of a knowledge base, like Wikipedia.</td>
    <td>Use libraries like Transformers from Hugging Face.</td>
    <td>Improves LLM output, remains relevant and accurate.</td>
    <td>Requires substantial computational resources.</td>
  </tr>
  <tr>
    <td>Chunking & Vectorization</td>
    <td>Divides documents into chunks and uses models for embedding these chunks.</td>
    <td>Libraries like Sentence Transformers for embedding.</td>
    <td>Enhances semantic meaning representation.</td>
    <td>Complex preprocessing required.</td>
  </tr>
  <tr>
    <td>Search Index with ANN</td>
    <td>Uses Approximate Nearest Neighbors for efficient retrieval in large datasets.</td>
    <td>Implementations like FAISS, NMSLIB.</td>
    <td>Efficient retrieval from large data sets.</td>
    <td>Setup can be complex.</td>
  </tr>
  <tr>
    <td>Hierarchical Indices</td>
    <td>Employs two-step retrieval with summaries and document chunks.</td>
    <td>Custom implementation required.</td>
    <td>Efficient in handling large databases.</td>
    <td>May miss nuanced details.</td>
  </tr>
  <tr>
    <td>HyDE & Context Enrichment</td>
    <td>Uses hypothetical questions or responses for better semantic search accuracy.</td>
    <td>Custom implementation, possibly with LLMs like GPT.</td>
    <td>Improves context relevancy.</td>
    <td>Complex to implement and optimize.</td>
  </tr>
  <tr>
    <td>Fusion Retrieval/Hybrid Search</td>
    <td>Combines keyword-based and semantic search.</td>
    <td>Integration of libraries like ElasticSearch with LLMs.</td>
    <td>Balances accuracy and breadth of search.</td>
    <td>Complex combination of different systems.</td>
  </tr>
</table>

<h2>References</h2>
<ul>
  <li><a href="https://www.towardsai.net/p/advanced-rag-techniques-an-illustrated-overview">Advanced RAG Techniques: an Illustrated Overview – Towards AI</a></li>
  <li><a href="https://paperswithcode.com/method/rag">RAG Explained | Papers With Code</a></li>
  <li><a href="https://aws.amazon.com/what-is/retrieval-augmented-generation/">What is RAG? - Retrieval-Augmented Generation Explained - AWS</a></li>
</ul>
