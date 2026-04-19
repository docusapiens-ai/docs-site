# Writing Documentation for DocuSapiens

DocuSapiens turns your Markdown files into a live, AI-powered documentation site. This guide covers everything you need to write great docs.

> For a concise technical reference (file types, repo layouts, allowed config keys), see [Repository Structure Reference](../docusapiens/reference/repo-structure.md).

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

## Supported File Types

The build pipeline copies only safe, non-executable files from your repository. Everything else is ignored.

| Category | Accepted extensions / filenames |
|---|---|
| Documentation | `.md`, `.mdx` |
| Images | `.png`, `.jpg`, `.jpeg`, `.gif`, `.svg`, `.webp`, `.ico` |
| Sidebar metadata | `_category_.json`, `_category_.yml`, `_category_.yaml` |
| Configuration overrides | `sidebars.json`, `custom.css`, `docusaurus.config.json` |

Files not in this list (`.js`, `.ts`, `.html`, `.env`, etc.) are silently ignored — they are never copied into the build.

---

## Repo Layouts

All three layouts below work without any extra configuration:

```
# 1 — Plain: images next to Markdown
my-repo/
├── intro.md
└── guides/
    ├── setup.md
    └── images/
        └── diagram.png   ← referenced as ./images/diagram.png

# 2 — Docusaurus-style: images in static/
my-repo/
├── docs/
│   └── guides/setup.md   ← referenced as /img/diagram.png
└── static/
    └── img/
        └── diagram.png   ← served at /img/diagram.png

# 3 — Mixed (both relative and absolute paths work)
my-repo/
├── docs/
│   └── intro.md
└── static/
    └── img/hero.png
```

Use the **"Docs folder"** setting in the dashboard to point at any subdirectory (e.g., `docs/`, `content/`, `wiki/`).

### The `static/` directory

Files inside `static/` are served from the **root of the website**. A file at `static/img/logo.png` is available as `/img/logo.png` in the browser. Use this for images you reference with absolute paths in Markdown:

```markdown
![Logo](/img/logo.png)         ← absolute path, requires static/img/logo.png
![Diagram](./images/diag.png)  ← relative path, file next to the .md
```

---

## Override Files

Place these files at the **root of your docs path** (not in subdirectories) to customize the site:

| File | Effect |
|---|---|
| `sidebars.json` | Custom sidebar ordering/grouping — replaces auto-generated sidebar |
| `custom.css` | Extra CSS applied on top of the default Docusaurus theme |
| `docusaurus.config.json` | Allowed Docusaurus config overrides (see below) |

### Allowed `docusaurus.config.json` keys

Only the following top-level keys are accepted. All others are silently stripped for security:

**Allowed:** `title`, `tagline`, `favicon`, `url`, `baseUrl`, `trailingSlash`, `onBrokenLinks`, `onBrokenAnchors`, `onBrokenMarkdownLinks`, `onDuplicateRoutes`, `noIndex`, `titleDelimiter`, `i18n`, `storage`, `markdown`, `themeConfig`

**Blocked (cannot be changed):** `plugins`, `themes`, `presets`, `scripts`, `stylesheets`, `headTags`, `clientModules`, `ssrTemplate`, `customFields`, `staticDirectories`, `future`, `siteId`

Within `markdown`, the sub-fields `preprocessor`, `parseFrontMatter`, and `remarkRehypeOptions` are also stripped because they accept JavaScript functions.

Example `docusaurus.config.json`:

```json
{
  "title": "My Product Docs",
  "tagline": "Everything you need to know",
  "noIndex": false,
  "themeConfig": {
    "colorMode": {
      "defaultMode": "dark"
    }
  }
}
```

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
