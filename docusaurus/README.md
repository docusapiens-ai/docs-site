# Docusaurus Framework

Welcome to this guide on **Docusaurus**, the documentation framework that powers every DocuSapiens site.

## What is Docusaurus?

Docusaurus is an **open-source documentation platform** created by Meta (Facebook).

In simple terms:
> **Write Markdown files → Docusaurus converts them to a fast, professional website**

### Key Facts

- **Created by:** Meta (formerly Facebook)
- **Open source:** Free to use, modify, fork on GitHub
- **Markdown-first:** Write docs in simple Markdown format
- **Powers:** React, Babel, Kubernetes, and 1000+ projects
- **Technology:** Built on React, Node.js, Algolia search
- **Theme:** Clean, modern default (fully customizable)

### Why We Chose Docusaurus

DocuSapiens uses Docusaurus because:

✅ **Best-in-class documentation framework**  
- Proven by Meta and used by top projects worldwide
- Battle-tested for handling large documentation sets

✅ **Developer-friendly**
- Markdown-native (no proprietary formats)
- All configuration can be version-controlled in Git
- Extensible with custom React components

✅ **Powerful features**
- Built-in search (Algolia)
- Dark mode support
- Mobile responsive
- SEO-optimized
- Versioning, i18n, theming

✅ **Future-proof**
- Open source (not dependent on a single company)
- Large community and ecosystem
- Actively maintained

---

## Quick Navigation

This section is organized to help you learn and reference:

### 📚 Tutorials (Learning-oriented)

Step-by-step guides to get started:

- **[Getting Started with Docusaurus](./tutorials/getting-started.md)** — Create your first Docusaurus site locally

### 📖 How-to Guides (Task-oriented)

Instructions for specific activities:

- **[Add a New Documentation Page](./how-to/add-a-doc.md)** — Create and structure docs
- **[Configure Your Sidebar](./how-to/configure-sidebar.md)** — Organize navigation
- **[Use Advanced Markdown (MDX)](./how-to/use-mdx.md)** — Embed React components in Markdown

### 🏗️ Explanation (Understanding-oriented)

Conceptual guides:

- **[What is Docusaurus?](./explanation/what-is-docusaurus.md)** — Overview, philosophy, comparison
- **[The Diátaxis Framework](./explanation/diataxis.md)** — How to structure your docs properly

### 📋 Reference (Information-oriented)

Technical specifications:

- **[Frontmatter Fields Reference](./reference/frontmatter.md)** — All Markdown metadata options
- **[Docusaurus Configuration Reference](./reference/docusaurus-config.md)** — `docusaurus.config.js` options

---

## Key Concepts

### Docusaurus File Structure

When you have a Docusaurus site, the basic structure looks like:

```
my-docs-site/
├── docs/                    ← Your documentation files (Markdown)
│   ├── intro.md
│   ├── tutorial-basics/
│   │   └── create-a-page.md
│   └── tutorial-extras/
│       └── manage-docs-versions.md
├── docusaurus.config.js     ← Site configuration
├── sidebars.js              ← Navigation sidebar config
├── package.json
└── src/
    └── pages/               ← Custom React pages (optional)
```

### Markdown vs Docusaurus Markdown

Docusaurus uses **enhanced Markdown** that supports:
- Standard Markdown (headings, lists, code blocks)
- **Frontmatter** (metadata at top of files)
- **React components** (via MDX)
- **Special syntax** (callouts, tabs, etc.)

Example Markdown file in Docusaurus:

```markdown
---
id: my-guide
title: My Guide
sidebar_position: 1
---

# Welcome

This is a guide. It supports normal Markdown:
- Lists
- **Bold** text
- `Code`

And advanced features like <ComponentName /> (React).
```

### The Sidebar

Your docs are organized via a `sidebars.js` file that defines navigation:

```javascript
// sidebars.js
module.exports = {
  tutorialSidebar: [
    'intro',  // docs/intro.md
    {
      label: 'Tutorial',
      items: ['tutorial-basics/create-a-page'],
    },
  ],
};
```

Result: A sidebar showing nested navigation matching your docs structure.

---

## How DocuSapiens Uses Docusaurus

### The Pipeline

When you connect a repo to DocuSapiens:

```
1. GitHub repo with docs/ folder
  ↓
2. DocuSapiens fetches your Markdown files
  ↓
3. Docusaurus builds the site
  ↓
4. Static HTML deployed to docusapiens.ai
  ↓
5. New site is live with full-text search
  ↓
6. AI chat trained on your content
```

### What DocuSapiens Pre-configures

DocuSapiens handles the Docusaurus configuration for you:

✅ **Docusaurus pre-configured with:**
- Default theme (clean, modern, professional)
- Algolia search integrated
- Dark mode enabled
- Mobile responsive
- SEO optimization

❌ **Not yet configurable (coming soon):**
- Custom colors/branding
- Navbar/footer customization
- Sidebar behavior tweaks
- Plugin additions

**You focus on:** Writing great Markdown. DocuSapiens handles the rest.

---

## Before & After: Manual vs DocuSapiens

### The Traditional Way (Manual Docusaurus)

1. Install Node.js
2. Install Docusaurus: `npm install docusaurus`
3. Create project structure
4. Write docs in Markdown
5. Configure `docusaurus.config.js`
6. Configure `sidebars.js`
7. Run build: `npm run build`
8. Deploy to hosting (Netlify, Vercel, etc.)
9. Set up CI/CD for automatic rebuilds
10. Manage domain, SSL, CDN

**Time:** 4-8 hours  
**Complexity:** Requires Node.js, npm, deployment knowledge

### The DocuSapiens Way

1. Create Markdown files in GitHub repo
2. Push to GitHub
3. Visit app.docusapiens.ai, click "Connect Repo"
4. Done!

**Time:** 5 minutes  
**Complexity:** Zero configuration needed

---

## What to Read First

**I'm new to Docusaurus:**
→ Start with [What is Docusaurus?](./explanation/what-is-docusaurus.md), then move to the tutorial.

**I want to create my first site locally:**
→ Jump to [Getting Started Tutorial](./tutorials/getting-started.md).

**I want to understand how to structure docs:**
→ Read [The Diátaxis Framework](./explanation/diataxis.md).

**I want a reference for syntax/config:**
→ Check [Frontmatter Reference](./reference/frontmatter.md) or [Config Reference](./reference/docusaurus-config.md).

---

## Important Note: Configuration Limits

**With DocuSapiens**, you cannot modify the `docusaurus.config.js` file directly.

**This means:**
- Theme colors are locked to DocuSapiens defaults
- Navbar/footer are preset
- Plugins are preset
- No custom JavaScript for advanced features

**Why?** This simplifies deployment and ensures all DocuSapiens sites are secure, fast, and maintainable.

**Coming soon:** A configuration UI where you'll be able to customize colors, navbar, and basic theming without touching `docusaurus.config.js`.

---

## Learning Path

1. **Understand Docusaurus** — [What is Docusaurus?](./explanation/what-is-docusaurus.md)
2. **Learn Diátaxis structure** — [The Diátaxis Framework](./explanation/diataxis.md)
3. **Write your first doc** — [Getting Started](./tutorials/getting-started.md)
4. **Organize docs** — [Add a Doc](./how-to/add-a-doc.md)
5. **Configure sidebar** — [Configure Sidebar](./how-to/configure-sidebar.md)
6. **Use advanced Markdown** — [Use MDX](./how-to/use-mdx.md)

Then, deploy with DocuSapiens and watch it go live!

---

## Next Steps

- **Deploy your docs:** [DocuSapiens Getting Started](../docusapiens/tutorials/getting-started.md)
- **Learn the Diátaxis framework:** [The Diátaxis Framework](./explanation/diataxis.md)
- **Start writing:** [Getting Started with Docusaurus](./tutorials/getting-started.md)

---

**Ready to master Docusaurus?** Let's get started!
