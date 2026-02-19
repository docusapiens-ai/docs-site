# How to Add a New Documentation Page

## Goal

Add a new Markdown file to your documentation and have it appear in your site's sidebar and navigation.

---

## Prerequisites

- A DocuSapiens deployed site, OR
- A local Docusaurus project
- Basic understanding of Markdown syntax

---

## Steps

### Step 1: Choose a Location

Decide where your new page will live in the `docs/` folder:

**Within a top-level section:**
```
docs/
└── getting-started/          ← Top-level section
    ├── installation.md       ← New page goes here
    └── first-steps.md
```

**In the root docs folder:**
```
docs/
├── intro.md                  ← New page here
├── getting-started/
```

**Decision:** Does this page belong in an existing section, or is it a new section?

[SCREENSHOT PLACEHOLDER: File explorer showing docs/ folder structure with arrows indicating possible locations for new file]

### Step 2: Create the File

Create a new `.md` file with a descriptive name:

**Good names:**
- `getting-started.md`
- `installation.md`
- `configuration-guide.md`
- `troubleshooting.md`

**Bad names:**
- `doc1.md` (not descriptive)
- `MyPage.md` (use lowercase)
- `my doc.md` (use hyphens, not spaces)

**Naming convention:** `lowercase-with-hyphens.md`

[SCREENSHOT PLACEHOLDER: File explorer, right-click menu showing "New File", file name input dialog with "installation.md" typed in]

### Step 3: Add Frontmatter (Recommended)

At the very top of your file, add **frontmatter** — metadata in YAML format.

This is **optional but recommended** — it gives you control over the page's appearance and behavior.

```markdown
---
id: installation
title: Installation Guide
sidebar_label: Install
sidebar_position: 1
---

# Your content starts below...
```

[SCREENSHOT PLACEHOLDER: Markdown file in editor showing frontmatter block at top (highlighted in gray), followed by markdown content]

### Step 4: Write Your Content

Below the frontmatter, write your page content in Markdown:

```markdown
---
id: installation
title: Installation Guide
sidebar_label: Install
sidebar_position: 1
---

# Installation Guide

Follow these steps to install our software.

## Prerequisites

- Node.js 14+
- npm or yarn

## Install Steps

1. Clone the repository
2. Run `npm install`
3. Done!

## Next Steps

[See Getting Started →](./getting-started.md)
```

[SCREENSHOT PLACEHOLDER: Complete markdown file in editor showing frontmatter and content with proper formatting]

### Step 5: Link Between Pages

If you want to link to other pages, use relative links:

```markdown
[Link to another page](./other-page.md)
[Link in subfolder](../folder/page.md)
[Link to root page](../intro.md)
```

**Docusaurus automatically converts** these to proper URLs.

**Don't write:**
```markdown
❌ [Link](https://docusapiens.ai/docs/path) - absolute URL
❌ [Link](/docs/path) - wrong path style
```

**Write:**
```markdown
✅ [Link](./other-page.md) - relative, local file
✅ [Link](../folder/page.md) - relative with folder
```

[SCREENSHOT PLACEHOLDER: Markdown file showing relative links syntax highlighted]

### Step 6: Commit and Push (If Using DocuSapiens)

If you're using DocuSapiens:

```bash
git add docs/your-new-file.md
git commit -m "Add installation guide"
git push origin main
```

DocuSapiens automatically:
1. Detects the new file
2. Rebuilds your site (30-60 seconds)
3. Page appears in the sidebar
4. AI chat retrains on new content

[SCREENSHOT PLACEHOLDER: Terminal showing git commands and their output]

### Step 7: Verify the Page Appears

After the build completes:

1. Refresh your documentation site
2. Look for the new page in the sidebar
3. Click it to see the rendered page

[SCREENSHOT PLACEHOLDER: Live documentation site showing new page appearing in the sidebar, then the same page opened showing rendered markdown content]

---

## Organizing with Frontmatter

The  frontmatter fields that matter for organization:

| Field | Purpose | Example |
|-------|---------|---------|
| `id` | Unique identifier (used internally) | `id: installation` |
| `title` | Page title (shown in sidebar) | `title: Installation Guide` |
| `sidebar_label` | Custom sidebar text (if different from title) | `sidebar_label: Install` (shorter) |
| `sidebar_position` | Order in sidebar (lower = higher up) | `sidebar_position: 1` |

### Example: Controlling Order

Organize your getting-started section:

```
docs/getting-started/
├── intro.md           (sidebar_position: 1)
├── installation.md    (sidebar_position: 2)
└── first-steps.md     (sidebar_position: 3)
```

In each file:

```markdown
---
sidebar_position: 1
---
```

**Result:** Pages appear in the sidebar in order 1, 2, 3.

[SCREENSHOT PLACEHOLDER: Sidebar showing pages in ordered sequence with numbers visible]

---

## Full Frontmatter Reference

**Commonly used fields:**

```markdown
---
id: unique-identifier                 # Required (must be unique)
title: Page Title                      # Shown in browser tab
sidebar_label: Short Label            # Alternative sidebar text
sidebar_position: 1                   # Order in sidebar
slug: /custom-url-slug                # Custom URL (advanced)
description: Meta description         # For SEO
tags:
  - tutorial                          # Tag for filtering
  - important
---
```

[See full Frontmatter Reference →](../reference/frontmatter.md)

---

## Common Scenarios

### Scenario 1: Adding to Existing Folder

You want to add a page to an existing section (e.g., `guides/`):

```
docs/
└── guides/
    ├── deployment.md
    └── troubleshooting.md    ← New file
```

1. Create `docs/guides/troubleshooting.md`
2. Add frontmatter with `sidebar_position: 3`
3. Commit and push

DocuSapiens rebuilds, page appears in guides section.

### Scenario 2: Creating New Top-Level Section

You want a new major section in your docs:

```
docs/
├── intro.md
├── getting-started/
├── guides/
└── advanced/               ← New section
    └── deployment.md
```

1. Create folder `docs/advanced/`
2. Create `docs/advanced/deployment.md`
3. Add frontmatter
4. Update `sidebars.js` (if using manual config)

For DocuSapiens, this happens automatically if you have a `sidebars.js` configured to auto-detect.

### Scenario 3: Deeply Nested Pages

Multiple levels of nesting:

```
docs/
├── api/
│   └── v2/
│       ├── rest.md
│       ├── graphql.md
│       └── webhooks.md
```

1. Create `docs/api/v2/rest.md`
2. Add frontmatter
3. Sidebar auto-organizes

---

## Troubleshooting

### ❌ Page doesn't appear in sidebar

**Cause:** Missing or incorrect frontmatter.

**Solution:**
1. Check file has `.md` extension (not `.txt` or `.MD`)
2. Check frontmatter is at top of file (before other content)
3. Check frontmatter is valid YAML (proper indentation, hyphens on separate lines)
4. Rebuild or wait for DocuSapiens to rebuild

### ❌ Page appears but with wrong title

**Cause:** Frontmatter `title` differs from desired sidebar label.

**Solution:**
```markdown
---
title: Very Long Official Title         # Shown in browser tab
sidebar_label: Short Label              # Shown in sidebar
---
```

### ❌ Pages in wrong order

**Cause:** Missing or incorrect `sidebar_position`.

**Solution:**
Add `sidebar_position` to each file:

```markdown
---
sidebar_position: 1
---
```

### ❌ Relative links don't work

**Cause:** Incorrect relative path syntax.

**Solution:**
Use correct syntax:
```markdown
✅ [Link](./other-file.md)         # Same folder
✅ [Link](../folder/page.md)       # Up one level
✅ [Link](../../page.md)           # Up two levels
❌ [Link](./page)                  # Missing .md extension
❌ [Link](/docs/page.md)           # Wrong path format
```

---

## Best Practices

### ✅ Do This

- Use descriptive file names
- Add frontmatter to all pages
- Use sidebar_position to control order
- Use relative links between pages
- Keep files organized in logical folders

### ❌ Don't Do This

- Use spaces in filenames (use hyphens)
- Mix uppercase and lowercase (use lowercase)
- Create files without frontmatter
- Use absolute URLs for internal links
- Create files at random in docs/ (organize into folders)

---

## Next Steps

- **Learn Markdown features:** [Using MDX](./use-mdx.md)
- **Configure sidebar behavior:** [Configure Sidebar](./configure-sidebar.md)
- **Understand page structure:** [Frontmatter Reference](../reference/frontmatter.md)
- **Best practices:** [The Diátaxis Framework](../explanation/diataxis.md)

---

**That's it!** New pages are automatically discovered by Docusaurus.

Questions? Check the [Docusaurus docs](https://docusaurus.io/docs/create-a-doc) or [FAQs](../reference/faq.md).
