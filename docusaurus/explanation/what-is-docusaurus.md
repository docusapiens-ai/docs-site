# What is Docusaurus?

## Overview

**Docusaurus** (pronounced "dock-you-SAW-rus") is a **static site generator** created by Meta (Facebook) specifically designed for building documentation websites.

In the simplest terms:
> **Turn a folder of Markdown files into a professional, searchable, fast documentation website in minutes.**

---

## The Problem Docusaurus Solves

Writing documentation is challenging:

| Challenge | Traditional Approach | Docusaurus Solution |
|-----------|---------------------|-------------------|
| **How do I host docs?** | Use Confluence, Notion, GitHub Pages (confusing) | One command. Professional site out of the box |
| **Search functionality** | Manual indexing or third-party services | Built-in full-text search (Algolia) |
| **Mobile friendly** | Many platforms are not mobile-optimized | Responsive by default |
| **Keeping docs organized** | No standard structure | Sidebar auto-generated or manual |
| **Versioning** | Manual versioning folders | Built-in versioning system |
| **Multiple languages** | Separate sites or manual i18n | Internationalization (i18n) built-in |
| **SEO** | Manual metadata tags | Automatic SEO optimization |
| **Updates** | Redeploy entire site | Incremental builds (fast) |

**Docusaurus handles all of this.** You just write Markdown.

---

## Key Features

### 1. Markdown-First Approach

Write documentation in **standard Markdown** — no special formats, no lock-in:

```markdown
# Getting Started

This is a paragraph.

## Installation

```bash
npm install my-package
```

- Item 1
- Item 2
```

Save as `.md` file. Docusaurus converts it to a beautiful HTML page.

### 2. Static Site Generation

Docusaurus generates **static HTML, CSS, and JavaScript** — not dynamic.

**Benefits:**
- ⚡ Fast (no database queries, pure HTML)
- 🔒 Secure (no server-side code to exploit)
- 📊 SEO-friendly (Google loves static sites)
- 💰 Cheap to host (static files = minimal infrastructure)

### 3. Built-in Search

Full-text search included (powered by Algolia):

**On your site:**
- 🔍 Search box in navbar
- ⚡ Fast, accurate results (< 100ms)
- 🎯 Highlights search terms in results

**No setup needed.** Just works out of the box.

### 4. Dark Mode

Automatic dark mode support:
- 🌙 Toggle in navbar
- 🎨 User's preference remembered
- ✨ Beautiful on any theme

### 5. Responsive Design

Mobile-first design:
- 📱 Perfect on phones and tablets
- 🖥️ Works great on desktop
- ♿ Accessible (WCAG compliant)

### 6. Versioning

Multiple versions of your docs:

```
Site supports:
- v3.0 (latest)
- v2.5 
- v2.0
- v1.0
```

Users can switch between versions. Useful for:
- Software projects with multiple releases
- APIs with breaking changes
- Product migrations

### 7. Internationalization (i18n)

Support for multiple languages:

```
Your site: english.docs.com (default)
French: fr.docs.com (i18n)
Spanish: es.docs.com (i18n)
```

One set of Markdown files, translated automatically.

### 8. Custom Pages

Beyond docs, add custom pages with React:
- Landing page
- FAQ page
- Blog
- API reference (auto-generated)

### 9. Extensible with Plugins

Docusaurus is extensible:
- Custom themes
- Plugins for additional features
- Custom React components in Markdown (via MDX)

---

## Architecture & Technology

### The Stack

**Docusaurus is built on:**

| Layer | Technology | Purpose |
|-------|-----------|---------|
| **React** | JavaScript library | Powers interactive UI (dark mode toggle, search, etc.) |
| **Node.js** | JavaScript runtime | Builds site from Markdown |
| **Webpack** | Module bundler | Bundles JavaScript and CSS |
| **Algolia** | Search service | Full-text site search |
| **Remark/Rehype** | Markdown processors | Converts Markdown → HTML |

**You don't need to know any of this.** Docusaurus handles it all.

### Build Process

```
1. You write Markdown files (docs/*.md)
   ↓
2. Docusaurus reads all files
   ↓
3. Processes Markdown → HTML (using Remark)
   ↓
4. Builds React app with those pages
   ↓
5. Bundles with Webpack
   ↓
6. Outputs static files (build/ folder)
   ↓
7. Deploy build/ to any hosting
```

**Speed:** Most docs build in < 10 seconds.

### Runtime

When a user visits your site:

```
1. User loads https://docs.yoursite.com
   ↓
2. Browser downloads static HTML
   ↓
3. React app loads (< 1 second on good connection)
   ↓
4. Search is available (powered by Algolia index)
   ↓
5. Dark mode toggle works
   ↓
6. Everything is responsive
```

**Performance:** First page load typically < 1 second.

---

## Docusaurus vs Alternatives

### Comparison Matrix

| Feature | Docusaurus | GitBook | ReadTheDocs | Notion | GitHub Pages |
|---------|-----------|---------|-----------|--------|-----------------|
| **Price** | Free | $10+/mo | Free/$ | Free/$ | Free |
| **Markdown-native** | ✅ | Partial | ✅ | ❌ | ✅ |
| **Built-in search** | ✅ | ✅ | ✅ | ✅ | ❌ |
| **Versioning** | ✅ | Limited | ✅ | ❌ | Manual |
| **i18n** | ✅ | Limited | Limited | ❌ | ❌ |
| **Dark mode** | ✅ | ✅ | Basic | ✅ | ✅ |
| **Open source** | ✅ | ❌ | ✅ | ❌ | ✅ |
| **Self-hosted** | ✅ | ❌ | ✅ | ❌ | ✅ |
| **Community** | ✅ Large | ✅ | ✅ Large | ✅ | ✅ Large |

### When to Use Each

**Use Docusaurus if:**
- ✅ You want free, open-source, zero lock-in
- ✅ Your docs are in Markdown (or will be)
- ✅ You need versioning or i18n
- ✅ You want to self-host or use DocuSapiens
- ✅ You want full control over look and feel

**Use GitBook if:**
- ✅ You want a point-and-click editor (no Markdown)
- ✅ You want team collaboration features
- ✅ You're willing to pay for simplicity

**Use Notion if:**
- ✅ You already use Notion
- ✅ You want minimal setup
- ✅ You don't need advanced features

**Use GitHub Pages if:**
- ✅ You want the cheapest option
- ✅ Your docs are simple (< 20 pages)
- ✅ You're okay with basic functionality

---

## Success Stories

Docusaurus powers documentation for:

- **React** — Facebook's UI library
- **Babel** — JavaScript compiler
- **Kubernetes** — Container orchestration
- **Stripe** — Payment platform
- **Supabase** — Open-source Firebase alternative
- **Vue.js** — Progressive framework
- **Redux** — State management

**And 1000+ other projects.**

If it's good enough for Meta, Facebook, and Google's projects, it's good enough for yours.

---

## Why DocuSapiens Chose Docusaurus

DocuSapiens uses Docusaurus because:

### 1. Battle-Tested

Used by Meta and thousands of large projects. Proven to handle massive documentation sets (100k+ pages).

### 2. Developer Experience

Markdown-first workflow that developers love:
- Edit in your favorite editor
- Version control with Git
- No proprietary formats
- All config can be committed

### 3. Powerful Yet Simple

Out of the box:
- ✅ Professional theme
- ✅ Search
- ✅ Dark mode
- ✅ Mobile responsive
- ✅ SEO optimized

No configuration needed for basic setup.

### 4. Extensible

When you need advanced features:
- Custom React components
- Plugins
- Theming
- API reference generation

All possible. Nothing is locked down.

### 5. Open Source

Docusaurus is open source (MIT license):
- No vendor lock-in
- Community-driven
- Free forever
- Can self-host if needed

---

## Important Limitation with DocuSapiens

When using DocuSapiens, some Docusaurus features are pre-configured and not customizable:

### ✅ You Can

- Write Markdown and MDX
- Use frontmatter
- Create custom pages with React
- Use advanced Markdown features

### ❌ You Cannot (Yet)

- Modify `docusaurus.config.js` (colors, navbar, footer)
- Add custom plugins
- Change the default theme entirely
- Host on your own domain (without CNAME)

**Why?** This keeps DocuSapiens simple, fast, and secure.

**Coming soon:** A configuration UI will let you customize colors, navbar, and basic theming without touching configuration files.

---

## Next Steps

- **Learn the structure:** [The Diátaxis Framework](./diataxis.md)
- **Get started:** [Getting Started Tutorial](../tutorials/getting-started.md)
- **See all features:** [Docusaurus.io official docs](https://docusaurus.io)

---

**Docusaurus is the foundation of every DocuSapiens site.** Understanding it helps you write better documentation.

Questions? Check the [FAQ](../reference/faq.md) or [Docusaurus.io docs](https://docusaurus.io/docs).
