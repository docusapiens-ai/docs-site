# How the DocuSapiens AI Chat Works

## Overview

The DocuSapiens AI chat is different from generic AI assistants. It uses **Retrieval Augmented Generation (RAG)** — a system that answers questions only from information in your documentation.

**Key difference:**

| Traditional AI (ChatGPT) | DocuSapiens RAG |
|-------------------------|-----------------|
| Answers from training data (sometimes hallucinating) | Answers only from your docs |
| "I think..." / "Probably..." answers | Cited answers with links |
| Can invent information | Never invents — only references what exists |
| Generic knowledge about your domain | Specific to your exact product/project |
| Outdated information | Always current (retrains every deploy) |

---

## Why RAG?

### The Hallucination Problem

Traditional LLMs sometimes "hallucinate" — they generate plausible-sounding but false information.

**Example:**
```
User: "How do I configure the database connection?"

ChatGPT (generic): "You typically edit the config.yml file and set 
  db_host: localhost. You should also..."

❌ Problem: Your product doesn't have config.yml. ChatGPT invented it.
```

### The RAG Solution

DocuSapiens' RAG system prevents hallucinations by:

1. **Restricting knowledge** to only your documentation
2. **Showing sources** — every answer is cited with links
3. **Being honest** — if info isn't in your docs, it says so

**Example with RAG:**
```
User: "How do I configure the database connection?"

DocuSapiens: "Based on your documentation, you configure 
  the database in src/config/db.ts like this:
  
  const config = { host: process.env.DB_HOST };
  
  [See full example →](./docs/setup/database.md#configuration)"

✅ Correct: Answer is from actual docs, with link to source.
```

---

## How RAG Works

### Step 1: Indexing (When you deploy)

When you push docs to GitHub:

```
Your Markdown files
  ↓
Docusaurus extracts all text
  ↓
Text split into semantic chunks (~500-800 words each)
  ↓
Each chunk converted to vector embedding
  ↓
Vectors stored in vector database
  ↓
Metadata stored (file path, section, title)
```

**Vector embedding:** A mathematical representation of meaning. Documents with similar meaning have similar vectors.

[SCREENSHOT PLACEHOLDER: Diagram showing Markdown files being broken into chunks, each chunk converted to a vector (visualized as multi-dimensional dots), stored in a database with associated metadata]

### Step 2: Question Processing (When user asks)

User types: "How do I authenticate?"

```
  ↓
Convert question to vector embedding
  ↓
Search database: "Find docs most similar to this question"
  ↓
Return top 3 most relevant chunks
  ↓
Add chunks to LLM prompt as context
  ↓
Ask LLM: "Answer this question using ONLY the provided context"
  ↓
LLM generates answer
  ↓
Attach citations showing which docs were used
  ↓
Send response to user
```

**Key point:** The LLM is told to **only use** the provided context. If the context doesn't answer the question, it must say "I don't have that information in the docs."

[SCREENSHOT PLACEHOLDER: Chat interface showing: user message on left, AI response on right with highlighted citations. Below the response, show "Sources:" with 2-3 links to the actual documentation files]

### Step 3: Continuous Updates

Every time you commit new docs:

```
1. Docusaurus builds your site
2. New/updated Markdown is extracted
3. Vector database is updated with new content
4. AI chat immediately knows about the changes
```

**Result:** Your AI is never out of sync with your docs.

---

## Closed-Loop vs Open-Loop

### Closed-Loop (DocuSapiens) ✅

All answers are **grounded in your actual documentation**:

```
Question → Search indexed docs → Retrieve relevant chunks
         ↓
      LLM (uses only retrieved chunks)
         ↓
      Citation to source docs
```

**Guarantees:**
- ✅ No hallucinations
- ✅ Answers match your docs
- ✅ Always citable
- ✅ Safe for customer support

### Open-Loop (Traditional AI) ✗

LLM generates from general knowledge:

```
Question → LLM internal knowledge/training data → Answer
```

**Problems:**
- ✗ Can hallucinate
- ✗ Outdated information
- ✗ Not specific to your product
- ✗ Risky for support

---

## Vector Embeddings Explained

**What is a vector embedding?**

A way to represent text as numbers that preserve meaning.

Simple example (not actual embeddings):

```
"How do I reset my password?" 
  ↓
[0.23, -0.51, 0.88, 0.12, ...]  ← mathematical vector (768 dimensions)

"Password reset steps"
  ↓
[0.22, -0.50, 0.89, 0.11, ...]  ← similar vector!

These are close in "meaning space", so they match.
```

**Why embeddings?**

Because they capture **semantic similarity** — meaning-based matching. A question about "resetting passwords" will find docssaying "password reset" even if the exact words don't match.

**Technology:** DocuSapiens uses **OpenAI's embedding models** for maximum accuracy.

---

## The Chat Workflow

### Conversation Memory

DocuSapiens maintains conversation context:

```
Chat 1: "What's your API rate limit?"
  → System remembers this for context

Chat 2: "Can I increase it?"
  → System understands "it" refers to "rate limit"
  → Answers with personalized response
```

Sessions are:
- ✅ Private per user
- ✅ Stored securely
- ✅ Deleted after 30 days of inactivity
- ✗ Never used to train public models

### Rate Limiting

To ensure fair usage:

| Plan | Chat Requests/Month | Context Length |
|------|-------------------|-----------------|
| **Free Alpha** | Unlimited | 10,000 tokens |
| **Basic** | 10,000 | 20,000 tokens |
| **Premium** | Unlimited | 50,000 tokens |

---

## Use Cases

### 1. Customer Support

Embed the chat on your product's landing page. Customers get instant answers to common questions, reducing support ticket volume by 40-60%.

### 2. Internal Docs

Use for internal runbooks, architecture guides, process documentation. New team members ask questions instead of hunting for docs.

### 3. Education

Students ask a tutoring AI that knows the exact course material. No generic textbook answers—only what's being taught.

### 4. API Documentation

Developers ask "How do I paginate results?" and get code examples directly from your API docs.

---

## Limitations & Honesty

The DocuSapiens RAG is powerful, but honest about limitations:

### ✅ What It's Great At

- Answering factual questions about your docs
- Finding code examples
- Explaining procedures
- Cross-referencing related topics

### ✗ What It Won't Do

- **Invent information** ("I don't find that in your docs")
- **Answer vaguely** (either cites sources or refuses)
- **Guess** about undocumented features
- **Mix knowledge** (doesn't combine your docs with general AI knowledge)

This is a feature, not a bug. **Accuracy over plausibility.**

---

## Privacy & Security

### Your Data

- ✅ Docs are indexed and stored for search/chat
- ✅ Chat conversations are stored temporarily (30-day deletion)
- ⚠️ If you have secrets in docs (don't!), index them privately
- ✅ Private repos require authentication to access the site

### LLM Training

- ✗ Your docs are **never** used to train public LLMs
- ✗ Conversations are **never** used to train our models
- ✅ Only your indexed vectors improve your own AI

---

## Next Steps

- **To deploy docs:** [Getting Started Tutorial](../tutorials/getting-started.md)
- **To ask questions:** [Using AI Chat Guide](../how-to/use-ai-chat.md)
- **To understand the full system:** [Architecture](./architecture.md)

---

**Questions about the AI chat?** Check [FAQs](../reference/faq.md).
