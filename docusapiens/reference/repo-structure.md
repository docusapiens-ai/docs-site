---
title: Repository Structure Reference
sidebar_position: 4
description: Quick reference for structuring your repository to work with DocuSapiens.
---

# Repository Structure Reference

Everything you need to configure your repository for DocuSapiens — at a glance.

---

## Supported File Types

The build pipeline uses a strict allowlist. Only these file types are copied from your repository:

| Category | Accepted extensions / filenames |
|---|---|
| Documentation | `.md`, `.mdx` |
| Images | `.png`, `.jpg`, `.jpeg`, `.gif`, `.svg`, `.webp`, `.ico` |
| Sidebar metadata | `_category_.json`, `_category_.yml`, `_category_.yaml` |
| Configuration overrides | `sidebars.json`, `custom.css`, `docusaurus.config.json` |

Everything else (`.js`, `.ts`, `.html`, `.env`, source code, etc.) is **silently ignored** — never copied into the build.

---

## Repo Layouts

All three layouts work without any configuration change:

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

# 3 — Mixed (relative + absolute paths in the same repo)
my-repo/
├── docs/
│   ├── intro.md          ← can use both path styles
│   └── guide/
│       └── setup.md
└── static/
    └── img/
        └── hero.png
```

Use the **"Docs folder"** setting in the dashboard to point at a subdirectory (default: `docs/`).

### The `static/` directory

Files inside `static/` are served from the **root** of the website.  
`static/img/logo.png` → accessible as `/img/logo.png`.

| Path style | Example | Requires |
|---|---|---|
| Relative | `![alt](./images/diag.png)` | file next to the `.md` |
| Absolute | `![alt](/img/logo.png)` | file inside `static/` |

---

## Override Files

Place these at the **root of your docs path** (not in subdirectories):

| File | Effect |
|---|---|
| `sidebars.json` | Custom sidebar order / grouping — replaces the auto-generated sidebar |
| `custom.css` | Extra CSS layered on top of the default theme |
| `docusaurus.config.json` | Allowed Docusaurus config overrides (see below) |

---

## Configuration Overrides (`docusaurus.config.json`)

Only these top-level keys are accepted. All others are stripped.

### Allowed keys

| Key | Type | Notes |
|---|---|---|
| `title` | string | Site display name |
| `tagline` | string | Subtitle shown on the homepage |
| `favicon` | string | Path to favicon (must be in `static/`) |
| `url` | string | Canonical site URL |
| `baseUrl` | string | Base URL path (usually `/`) |
| `trailingSlash` | boolean | — |
| `onBrokenLinks` | `"throw"` \| `"warn"` \| `"ignore"` | Default: `"warn"` |
| `onBrokenAnchors` | `"throw"` \| `"warn"` \| `"ignore"` | — |
| `onBrokenMarkdownLinks` | `"throw"` \| `"warn"` \| `"ignore"` | — |
| `onDuplicateRoutes` | `"throw"` \| `"warn"` \| `"ignore"` | — |
| `noIndex` | boolean | Prevent search engine indexing |
| `titleDelimiter` | string | — |
| `i18n` | object | Locale configuration |
| `storage` | object | — |
| `markdown` | object | See [Markdown sub-keys](#markdown-sub-keys) below |
| `themeConfig` | object | Colors, navbar, footer, code highlighting, etc. |

### Blocked keys (never accepted)

`plugins`, `themes`, `presets`, `scripts`, `stylesheets`, `headTags`, `clientModules`, `ssrTemplate`, `customFields`, `staticDirectories`, `future`, `siteId`, `deploymentBranch`

These are blocked because they allow arbitrary code execution or HTML injection.

### Markdown sub-keys

Within `markdown`, only these sub-fields are accepted:

| Sub-key | Accepted |
|---|---|
| `format` | ✅ |
| `mermaid` | ✅ |
| `emoji` | ✅ |
| `anchors` | ✅ |
| `mdx1Compat` | ✅ |
| `preprocessor` | ❌ — accepts JS function |
| `parseFrontMatter` | ❌ — accepts JS function |
| `remarkRehypeOptions` | ❌ — accepts JS function |

---

## Example `docusaurus.config.json`

```json
{
  "title": "My Product Docs",
  "tagline": "Everything you need to know",
  "noIndex": false,
  "themeConfig": {
    "colorMode": {
      "defaultMode": "dark"
    },
    "navbar": {
      "title": "My Product"
    },
    "footer": {
      "style": "dark"
    }
  }
}
```

---

## Frontmatter Quick Reference

Add a block at the top of any `.md` / `.mdx` file:

```markdown
---
title: Getting Started
sidebar_position: 1
description: Deploy in 5 minutes.
sidebar_label: Quick Start
draft: false
---
```

| Field | Type | Purpose |
|---|---|---|
| `title` | string | Page title in sidebar and browser tab |
| `sidebar_position` | number | Order within its folder (lower = higher) |
| `description` | string | Meta description for SEO |
| `sidebar_label` | string | Override title shown in sidebar only |
| `draft` | boolean | `true` hides the page from the published site |

---

## Sidebar Metadata (`_category_.json`)

Place a `_category_.json` file in any folder to control how the section appears in the sidebar:

```json
{
  "label": "Guides",
  "position": 2,
  "collapsed": false
}
```

---

## See Also

- [Writing Documentation Guide](../../writing-docs/README.md) — Markdown features, Diátaxis structure, tips for better AI answers
- [Connect Your GitHub Repository](../how-to/connect-github-repo.md)
- [Rebuild Your Site](../how-to/rebuild-site.md)
