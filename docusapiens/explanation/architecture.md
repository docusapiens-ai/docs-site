# DocuSapiens Architecture

## System Overview

This diagram shows how DocuSapiens transforms your GitHub repository into a live, AI-powered documentation site:



---

## The Pipeline: From GitHub to Live Site

### Phase 1: Build (30-60 seconds)

**Input:** You trigger a rebuild from the dashboard

```
1. DocuSapiens fetches your latest Markdown files from GitHub
2. Docusaurus template engine processes files
3. Static HTML site is generated
4. Files uploaded to hosting
```

**Output:** Your site is live at `https://<site-name>.docusapiens.site`

![Historial de builds mostrando el estado de despliegue de cada build](/img/site-builds.png)

### Phase 2: AI Chat Training (30-45 seconds)

While the site is deploying:

```
1. Docusapiens extracts text from all Markdown files
2. Content is split into semantic chunks
3. Each chunk gets a vector embedding
4. Embeddings stored in vector database
5. RAG indexing completes
```

**Output:** Your AI chat is ready to answer questions about your docs

![Build con estado Chat Ready — site y chat listos para usar](/img/site-builds.png)

### Phase 3: Live & Serving

Your deployed site includes:

```
├── Static HTML/CSS/JS (served via CDN)
└── AI Chat backend (connected to vector DB)
```

Users can:
- ✅ Read docs in the browser
- ✅ Search for content
- ✅ Ask questions in the AI chat
- ✅ Get cited answers with links

---

## Component Breakdown

### GitHub Integration

- DocuSapiens connects to your GitHub repository using GitHub OAuth
- Supports **public repositories** (private repo support coming soon)
- Reads files from the `docs/` folder by default; you can specify a different path when creating the site
- No changes are ever made to your repository

### Build Engine

DocuSapiens uses the **Docusaurus static site generator** to convert your Markdown into:
- HTML pages
- Navigation structure
- Search index

Docusaurus is the same framework powering React, Babel, and Kubernetes docs.

### Hosting

Your built site is:
- Served through a global CDN
- Cached for sub-second page loads
- HTTPS by default with managed certificates

### AI Chat

Separate service that:
- Indexes documentation after each build
- Runs retrieval-augmented generation (RAG)
- Maintains conversation history per user
- Enforces rate limits and fair usage

When a user asks a question in the chat widget:

```
User: "How do I authenticate users?"
  ↓
Chat sends message to RAG service
  ↓
RAG converts question to vector embedding
  ↓
Search vector database for similar doc chunks
  ↓
Return top 3 most relevant docs
  ↓
Feed docs to LLM with the question
  ↓
LLM generates answer (grounded in retrieved docs only)
  ↓
Answer with citations sent to user
```

**This design ensures:** No hallucinations. Every answer is from your actual docs.

![Sección Chats del dashboard donde llegan las conversaciones](/img/chats.png)

---

## Why This Architecture?

### ✅ Speed

- Static site generation = sub-100ms page loads
- Global CDN = content served from nearest edge
- Parallel, cached builds

### ✅ Reliability

- Multiple geographic replicas (coming soon)
- Automatic failover
- 99.99% uptime SLA (Premium plan)

### ✅ Security

- GitHub OAuth (no passwords stored)
- **Public repos only** during Alpha
- SSL/TLS encryption for all traffic
- Source code never scanned — only the docs folder is indexed
- Rate limiting on AI chat

### ✅ Cost Efficiency

- Serverless = pay only for what you use
- Static sites require minimal infrastructure
- No database bloat if you rebuild frequently

---

## Scalability

DocuSapiens scales automatically:

| Metric | Limit |
|--------|-------|
| **Docs size** | Up to 100MB of Markdown |
| **Rebuild time** | 30-60 seconds |
| **Users** | Unlimited |
| **Chat requests** | Fair-use limits per plan |
| **Sites** | Unlimited (per account) |

---

## Future Enhancements

🔜 **Coming Soon:**

- Configuration UI for `docusaurus.config.js` settings
- Multi-region hosting
- Document versioning support
- Private preview links for draft docs
- Webhook events for CI/CD integration
- Usage analytics dashboard
- Custom domain support (CNAME)

---

## Next Steps

- [How the AI Chat Works](./ai-chat.md)
- [Getting Started Tutorial](../tutorials/getting-started.md)
- [Connect Your Repo](../how-to/connect-github-repo.md)

---

**Questions about the architecture?** [Contact support](mailto:support@docusapiens.ai)

