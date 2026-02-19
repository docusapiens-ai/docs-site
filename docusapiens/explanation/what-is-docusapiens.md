# What is DocuSapiens?

## Overview

**DocuSapiens** is a fully managed **"Docs as a Service"** platform for developers. It transforms your Markdown documentation into a professional, AI-powered website with zero configuration.

In simple terms:

> **Connect your GitHub repo → Get a hosted Docusaurus site + AI chat → Users get instant answers**

No configuration files. No server setup. No deployment pipelines. Just your Markdown files and a live site.

---

## The Problem We Solve

Documentation is critical, but doing it right is hard:

| Challenge | Traditional Approach |
|-----------|---------------------|
| **Setup time** | Install Docusaurus, configure Node.js, setup CI/CD pipeline, deploy to hosting... hours of work |
| **Search experience** | Users search for keywords and scroll through results. Hard to find answers |
| **Keeping docs in sync** | Docs go out of date. Developers forget to update them |
| **Serving AI chat** | Building RAG systems is complex and expensive |

DocuSapiens solves all of these in one click.

---

## Key Features

### ✅ One-Click Deployment

- Connect a GitHub repository
- DocuSapiens detects your `docs/` folder
- Your site goes live at `<subdomain>.docusapiens.ai`
- No configuration needed

### ✅ Real-time GitHub Sync

Every commit automatically:
- Triggers a rebuild of your site
- Updates your AI chat training data
- Goes live within 1-2 minutes

No manual deployments. No forgetting to sync. Your docs are always current.

### ✅ AI-Powered Chat Assistant

Built-in chat that uses **Retrieval Augmented Generation (RAG)**:
- Users ask questions in natural language
- The AI answers based only on your documentation
- Never invents or hallucinates information
- Works 24/7, even for customers outside your timezone

### ✅ Professional Default Theme

Out-of-the-box:
- Clean, modern Docusaurus theme
- Dark mode support
- Mobile responsive
- SEO-friendly
- Full-text search

### ✅ No Lock-in

Your docs are Markdown:
- Standard format, compatible with any system
- Easy to migrate away if needed
- Own your content

---

## How It Works

### Step 1: Connect GitHub

Sign in with your GitHub account. Select a repository containing Markdown files (typically in a `docs/` folder):

```
your-repo/
├── docs/
│   ├── intro.md
│   ├── guide-1.md
│   └── guide-2.md
└── README.md
```

### Step 2: Instant Deployment

DocuSapiens:
1. Copies your Markdown files
2. Runs them through Docusaurus
3. Builds a static website
4. Hosts it at `https://<subdomain>.docusapiens.ai`
5. Trains the AI chat model on your content

All in 30-60 seconds.

### Step 3: Real-time Updates

When you push to GitHub:
- DocuSapiens detects the change
- Rebuilds the site
- Retrains the AI
- New docs are live

No manual steps. Automatic.

---

## Pricing & Access

### Currently in Alpha

DocuSapiens is in **active development**. During Alpha:

✅ **All features are FREE**  
✅ No credit card required  
✅ Full access to AI chat, unlimited sites, GitHub sync  
✅ Early feedback shapes the platform's future  

### Future Plans

When we exit Alpha, we'll offer:

| Plan | Price | Best For |
|------|-------|----------|
| **Free** | €0/month | Public repos, small teams, basic ai chat |
| **Basic** | €10/month | Private repos, more AI chat, priority support |
| **Premium** | Contact | Custom branding, analytics, SLA support |

Your Alpha access extends as we scale.

---

## Use Cases

### 📚 Open Source Projects

Free hosted docs that automatically update with every release. RAG-based AI helps your users find answers instead of posting issues.

### 🏢 SaaS Products

Embed a branded docs site with AI chat in your marketing site. Reduce support tickets by 40%. Always-current as your product evolves.

### 🎓 Educational Content

Textbooks, courses, tutorials that auto-update. Students get an AI tutor that knows the exact material.

### 📖 Internal Documentation

Company knowledge bases, runbooks, architecture guides. New hires get instant answers instead of waiting for documentation.

---

## Why DocuSapiens?

### 1. Maximum Developer Experience

Write Markdown in your favorite editor. Commit to GitHub. Done. No build scripts, no `npm scripts`, no Docker.

### 2. Docusaurus Built-in

Docusaurus is the documentation standard used by React, Babel, Kubernetes, and 1000+ projects. Professional, battle-tested, SEO-optimized.

### 3. RAG Done Right

Many "AI docs" use generic LLMs that hallucinate. DocuSapiens' **closed-loop RAG** system only answers what's actually in your docs. This prevents misinformation.

### 4. No Configuration

We handle all defaults. You focus on content, not infrastructure.

### 5. Automatic Scaling

DocuSapiens infrastructure scales automatically. 10 users or 10M docs—performance stays fast.

---

## Next Steps

- **To deploy your docs:** [Getting Started Tutorial](../tutorials/getting-started.md)
- **To learn about AI chat:** [How the AI Chat Works](./ai-chat.md)
- **To understand the system:** [Architecture](./architecture.md)

---

**Questions?** Check [FAQs](../reference/faq.md) or join the Alpha community.
