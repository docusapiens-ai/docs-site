# Frontmatter Fields Reference

Complete reference of all frontmatter fields available in Docusaurus Markdown files.

---

## What is Frontmatter?

Frontmatter is YAML metadata at the top of a Markdown file, enclosed in `---`:

```markdown
---
id: my-page
title: My Page Title
sidebar_position: 1
---

# Your content starts here...
```

**Frontmatter is optional** but recommended for controlling page behavior.

---

## Common Fields

### id

**Type:** `string`  
**Required:** Yes (if using frontmatter)  
**Description:** Unique identifier for the page. Used internally by Docusaurus.

**Rules:**
- Must be unique across all pages
- Cannot contain spaces
- Use lowercase with hyphens: `my-page-id`

**Example:**
```markdown
---
id: getting-started
---
```

---

### title

**Type:** `string`  
**Required:** Recommended  
**Description:** The page title. Displayed in browser tab and used in sidebar if no `sidebar_label` specified.

**Example:**
```markdown
---
title: Getting Started with React
---
```

**Displayed as:** 
- Browser tab title: "Getting Started with React"
- Sidebar: "Getting Started with React" (or custom sidebar_label)

---

### sidebar_label

**Type:** `string`  
**Required:** No  
**Description:** Custom text to display in the sidebar if different from `title`.

**Use case:** Title is long, sidebar label is shorter.

**Example:**
```markdown
---
title: Complete Getting Started Guide
sidebar_label: Get Started
---
```

**Displayed as:**
- Browser tab: "Complete Getting Started Guide"
- Sidebar: "Get Started"

---

### sidebar_position

**Type:** `number`  
**Required:** No  
**Description:** Controls the order of pages in the sidebar. Lower numbers appear higher.

**Rules:**
- Can be negative: `-1`, `0`, `1`, `2`...
- Pages without this field appear at the end
- Decimal values work: `1.5`, `2.3`...

**Example:**
```markdown
---
sidebar_position: 1
---
```

**Result:** This page appears first in its section.

---

### description

**Type:** `string`  
**Required:** No  
**Description:** Meta description for SEO. Displayed in search results and social media.

**Example:**
```markdown
---
description: Learn how to get started with our platform in 5 minutes.
---
```

**Displayed as:** Meta tag in HTML:
```html
<meta name="description" content="Learn how to get started...">
```

---

### slug

**Type:** `string`  
**Required:** No  
**Description:** Custom URL path for the page.

**Default behavior:** URL is derived from file path.
```
docs/getting-started/installation.md → /docs/getting-started/installation
```

**With slug:** Override the default.
```markdown
---
slug: /custom-path
---
```

→ URL becomes `/docs/custom-path`

**Use case:** Migrating docs (redirect old URLs to new paths).

---

### image

**Type:** `string`  
**Required:** No  
**Description:** Image used in social media previews (Open Graph).

**Example:**
```markdown
---
image: /img/hero.png
---
```

**Displayed as:** When someone shares the link on Twitter/LinkedIn:
```html
<meta property="og:image" content="https://site.com/img/hero.png">
```

---

### tags

**Type:** `string[]` (array)  
**Required:** No  
**Description:** Categories/tags for organizing documentation.

**Example:**
```markdown
---
tags:
  - tutorial
  - react
  - beginner-friendly
---
```

**Use case:** Future filtering/categorization features.

---

### keywords

**Type:** `string[]`  
**Required:** No  
**Description:** Keywords for SEO.

**Example:**
```markdown
---
keywords:
  - react
  - javascript
  - tutorial
---
```

**Displayed as:** Meta tag:
```html
<meta name="keywords" content="react, javascript, tutorial">
```

---

### authors

**Type:** Object or Array  
**Required:** No  
**Description:** Page author(s) for documentation credit.

**Single author:**
```markdown
---
authors:
  name: Jane Doe
  title: Technical Writer
  url: https://example.com/authors/jane
  image_url: /img/jane.jpg
---
```

**Multiple authors:**
```markdown
---
authors:
  - name: Jane Doe
    title: Lead Writer
  - name: John Smith
    title: Reviewer
---
```

---

### date

**Type:** `string` (ISO format)  
**Required:** No  
**Description:** Publication date.

**Example:**
```markdown
---
date: 2025-02-19
---
```

**Format:** `YYYY-MM-DD`

---

### updated_at (or last_update_time)

**Type:** `string` (ISO format)  
**Required:** No  
**Description:** When the page was last updated.

**Example:**
```markdown
---
updated_at: 2025-02-19
---
```

---

### draft

**Type:** `boolean`  
**Required:** No  
**Description:** Mark a page as draft (unpublished).

**Example:**
```markdown
---
draft: true
---
```

**Effect:** Page is hidden from navigation and search (in production build).

---

### hide_table_of_contents

**Type:** `boolean`  
**Required:** No  
**Default:** `false`  
**Description:** Hide the "Table of Contents" sidebar on the right side of the page.

**Example:**
```markdown
---
hide_table_of_contents: true
---
```

---

### toc_max_heading_level

**Type:** `number`  
**Required:** No  
**Default:** `3`  
**Description:** Maximum heading level to include in the table of contents.

**Example:**
```markdown
---
toc_max_heading_level: 2
---
```

**Effect:** Only H2 and H3 headings appear in TOC (not H4+).

---

## Complete Example

A page using multiple frontmatter fields:

```markdown
---
id: complete-example
title: Complete Frontmatter Example
sidebar_label: Full Example
sidebar_position: 1
description: This page demonstrates all common frontmatter fields.
tags:
  - reference
  - example
keywords:
  - frontmatter
  - markdown
  - docusaurus
authors:
  - name: Jane Doe
    title: Documentation Lead
hide_table_of_contents: false
toc_max_heading_level: 2
updated_at: 2025-02-19
---

# Main content...
```

---

## Field Reference Table

| Field | Type | Required | Purpose |
|-------|------|----------|---------|
| `id` | string | Yes* | Unique identifier |
| `title` | string | Recommended | Page title |
| `sidebar_label` | string | No | Custom sidebar text |
| `sidebar_position` | number | No | Order in sidebar |
| `description` | string | No | SEO description |
| `slug` | string | No | Custom URL path |
| `image` | string | No | Social preview image |
| `tags` | string[] | No | Categories |
| `keywords` | string[] | No | SEO keywords |
| `authors` | object/array | No | Page author(s) |
| `date` | string | No | Publication date |
| `updated_at` | string | No | Last update date |
| `draft` | boolean | No | Mark as unpublished |
| `hide_table_of_contents` | boolean | No | Hide TOC sidebar |
| `toc_max_heading_level` | number | No | TOC heading limit |

---

## YAML SyntaxTips

### Strings

```yaml
title: Single Line String
description: "String with special characters: !@#"
```

### Arrays

```yaml
tags:
  - tag1
  - tag2
  - tag3

# Or inline:
tags: [tag1, tag2, tag3]
```

### Objects

```yaml
authors:
  name: Jane Doe
  title: Writer
  url: https://example.com
```

### Multiline Strings

```yaml
description: |
  This is a long description
  that spans multiple lines
  in the YAML file.
```

---

## Common Patterns

### Ordering Pages Sequentially

```markdown
---
id: chapter-1
sidebar_position: 1
---
```

```markdown
---
id: chapter-2
sidebar_position: 2
---
```

Result: Pages appear in sidebar in order.

### Creating a Short Sidebar Label for Long Title

```markdown
---
title: Complete Guide to Advanced Authentication with OAuth 2.0
sidebar_label: OAuth Guide
---
```

### Professional Documentation

```markdown
---
id: enterprise-setup
title: Enterprise Setup Guide
sidebar_position: 10
description: Complete setup guide for enterprise deployments
tags:
  - enterprise
  - setup
  - advanced
keywords:
  - enterprise
  - deployment
  - security
authors:
  - name: Enterprise Team
    title: Enterprise Support
---
```

---

## See Also

- [Add a Documenting](../how-to/add-a-doc.md)
- [Configure Sidebar](../how-to/configure-sidebar.md)
- [Docusaurus Frontmatter Docs](https://docusaurus.io/docs/markdown-features)

---

**Frontmatter gives you fine-grained control over your pages.** Use it to optimize SEO, organization, and user experience!
