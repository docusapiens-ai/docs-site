# DocuSapiens Architecture

## System Overview

This diagram shows how DocuSapiens transforms your GitHub repository into a live, AI-powered documentation site:

[SCREENSHOT PLACEHOLDER: System architecture diagram showing GitHub repo → DocuSapiens → hosted site + AI chat pipeline. Include: GitHub repo, Cloud Build trigger, Docusaurus build container, GCS bucket storage, CDN/hosting layer, AI RAG pipeline components]

---

## The Pipeline: From GitHub to Live Site

### Phase 1: Detection & Build (30-60 seconds)

**Input:** You push Markdown files to GitHub

```
1. User commits docs/ folder to main branch
2. GitHub webhook triggers DocuSapiens API
3. DocuSapiens fetches your latest Markdown files
4. Docusaurus template engine processes files
5. Static HTML site is generated
6. Files uploaded to Google Cloud Storage (GCS)
```

**Output:** Your site is live at `https://<subdomain>.docusapiens.ai`

[SCREENSHOT PLACEHOLDER: Terminal showing `git push` output, then DocuSapiens build logs in dashboard showing "Fetching files... Building... Deploying..." with timestamps]

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

[SCREENSHOT PLACEHOLDER: Dashboard showing "Build successful" with AI training status "Ready to chat" in green]

### Phase 3: Live & Serving

Your deployed site includes:

```
├── Static HTML/CSS/JS (served via CDN)
├── Search index (Algolia or built-in)
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

- DocuSapiens listens for push events to your repository
- Supports public and private repos (private requires Basic+ plan)
- Automatically detects `docs/` folder structure
- No need to touch `docusaurus.config.js` — DocuSapiens provides sensible defaults

### Cloud Build

DocuSapiens uses **Google Cloud Build** to:
- Containerize your build environment
- Run the Docusaurus build process
- Generate static assets
- Cache builds for faster rebuilds

Why Cloud Build? It's serverless, scales automatically, and completes builds in seconds.

### Docusaurus Engine

The **Docusaurus static site generator** converts your Markdown into:
- HTML pages
- Search indexes
- Versioned documentation (if configured)
- Internationalized content (if configured)

Docusaurus is the same framework powering React, Babel, and Kubernetes docs.

### Hosting (Google Cloud Storage + CDN)

Your built site is:
- Stored in Google Cloud Storage buckets
- Served through Google's global CDN
- Cached for sub-second page loads
- HTTPS by default with managed certificates

Geographic regions: **eu-west-1** (Ireland), with plans for multi-region soon.

### AI Chat Backend

Separate service that:
- Indexes documentation in real-time
- Runs retrieval-augmented generation (RAG)
- Maintains conversation history per user
- Enforces rate limits and fair usage

Backend stack: Node.js, PostgreSQL, vector embeddings via OpenAI API.

---

## Data Flow for AI Chat

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

[SCREENSHOT PLACEHOLDER: Chat conversation showing user question, AI response, and citations/links to source docs]

---

## Why This Architecture?

### ✅ Speed

- Static site generation = sub-100ms page loads
- Global CDN = content served from nearest edge
- Cloud Build = parallel, cached builds

### ✅ Reliability

- Multiple geographic replicas (coming soon)
- Automatic failover
- 99.99% uptime SLA (Premium plan)

### ✅ Security

- GitHub OAuth (no passwords stored)
- Private repos require authentication
- SSL/TLS encryption for all traffic
- Source code never scanned — only docs folder indexed
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

## Technical Decisions & Trade-offs

### Why Docusaurus Over Alternatives?

| Factor | Docusaurus | GitBook | ReadTheDocs | Notion |
|--------|-----------|---------|-----------|--------|
| **Open source** | ✅ | ✗ | ✅ | ✗ |
| **Markdown-native** | ✅ | Partial | ✅ | ✗ |
| **Self-hostable** | ✅ | ✗ | ✅ | ✗ |
| **Zero config** | ✗ | ✅ | ✗ | ✅ |
| **SEO** | ✅ | ✅ | ✅ | Partial |
| **AI integration** | ✅ (via DocuSapiens) | ✅ | ✗ | ✅ |

DocuSapiens uses Docusaurus because it's powerful (handles versioning, i18n, extensibility) while we handle all the configuration burden.

### Why Google Cloud?

- Proven infrastructure for large-scale docs (used internally by Google, Meta, etc.)
- Global CDN via Cloud CDN
- Integrated with GitHub via Cloud Build
- Cost-effective for variable workloads

---

## Next Steps

- [Understanding the AI Chat System](./ai-chat.md)
- [Getting Started Deployment](../tutorials/getting-started.md)
- [How to Connect Your Repo](../how-to/connect-github-repo.md)

---

**Questions about the architecture?** [Contact support](mailto:support@docusapiens.ai)
