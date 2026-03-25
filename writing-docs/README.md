# Writing Documentation for DocuSapiens

DocuSapiens turns your Markdown files into a live, AI-powered documentation site. This guide covers everything you need to write great docs.

---

## Folder Structure

DocuSapiens looks for your docs in the `docs/` folder at the root of your repository (you can change this in your site settings).

```
your-repo/
├── docs/
│   ├── intro.md
│   ├── getting-started.md
│   ├── guides/
│   │   ├── installation.md
│   │   └── configuration.md
│   └── reference/
│       └── api.md
└── README.md
```

- **Nested folders** become sections in your sidebar automatically.
- **File names** become page URLs (e.g., `docs/guides/installation.md` → `/guides/installation`).
- The sidebar order follows alphabetical order by default. Use frontmatter to control ordering.

---

## Frontmatter

Add a block at the top of any Markdown file to control how DocuSapiens displays it:

```markdown
---
title: Getting Started
sidebar_position: 1
description: Deploy your first DocuSapiens site in 5 minutes.
---

# Getting Started

Your content here...
```

### Common frontmatter fields

| Field | Type | Purpose |
|-------|------|---------|
| `title` | string | Page title shown in sidebar and browser tab |
| `sidebar_position` | number | Order within its folder (lower = higher up) |
| `description` | string | Subtitle and meta description for SEO |
| `sidebar_label` | string | Override the title in the sidebar only |
| `draft` | boolean | Set `true` to hide a page from the site |

---

## Markdown Basics

DocuSapiens supports standard Markdown:

```markdown
# Heading 1
## Heading 2
### Heading 3

**Bold text**, *italic text*, `inline code`

- Unordered list item
- Another item

1. Ordered list item
2. Another item

[Link text](https://example.com)

![Image alt text](./img/screenshot.png)
```

### Code blocks

Fenced code blocks with language tags get syntax highlighting:

````markdown
```javascript
const hello = "world";
console.log(hello);
```

```bash
npm install my-package
```
````

### Callouts (admonitions)

```markdown
:::note
This is a note with additional context.
:::

:::tip
A helpful tip for the user.
:::

:::warning
Something the user should be careful about.
:::

:::danger
A critical warning — data loss, irreversible actions, etc.
:::
```

### Tables

```markdown
| Feature | Free | Premium |
|---------|------|---------|
| Sites   | 3    | Unlimited |
| AI Chat | ✅   | ✅        |
```

---

## Structuring Your Docs Well

A well-structured documentation site follows the **Diátaxis** pattern:

| Type | Purpose | Examples |
|------|---------|---------|
| **Tutorials** | Learning-oriented, step-by-step | "Getting started", "Build your first X" |
| **How-to guides** | Task-oriented, goal-focused | "How to configure X", "How to deploy" |
| **Reference** | Fact-oriented, look-up | API docs, config options, CLI commands |
| **Explanation** | Understanding-oriented | "How it works", "Why we chose X" |

Organizing your docs this way helps users find what they need — and helps the AI chat give better answers.

---

## Tips for Better AI Chat Answers

The DocuSapiens AI chat is trained on your docs. The more explicit and complete your documentation, the better it answers:

- ✅ **Use descriptive headings** — The AI uses headings to understand context.
- ✅ **Don't assume prior knowledge** — If a term has a specific meaning in your product, define it.
- ✅ **Cover edge cases** — FAQs and troubleshooting sections are great training material.
- ✅ **Use examples** — Code samples and concrete examples improve answer quality significantly.
- ❌ **Avoid ambiguous pronouns** — "It works like this" is harder for the AI to index than "The widget renders like this".

---

## Next Steps

- [Connect your GitHub repository](../docusapiens/how-to/connect-github-repo.md)
- [Rebuild your site after changes](../docusapiens/how-to/rebuild-site.md)
- [Use the AI chat on your site](../docusapiens/how-to/use-ai-chat.md)
