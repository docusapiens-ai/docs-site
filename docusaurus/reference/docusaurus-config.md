# Docusaurus Configuration Reference

Complete reference for `docusaurus.config.js` — the main configuration file for Docusaurus sites.

---

## ⚠️ Important: DocuSapiens Limitation

**With DocuSapiens**, you **cannot edit** `docusaurus.config.js`.

✅ **You can:**
- Write Markdown files
- Use frontmatter
- Organize your docs folder

❌ **You cannot (yet):**
- Modify `docusaurus.config.js`
- Change site title, colors, or theme
- Add custom plugins or configuration

**Why?** DocuSapiens provides pre-configured, battle-tested defaults for security and simplicity.

**Coming soon:** Configuration UI to customize colors, navbar, and basic settings without editing config files.

---

## What is docusaurus.config.js?

`docusaurus.config.js` is the main configuration file for a Docusaurus site. It controls:

- Site title and logo
- Navigation menu (navbar)
- Colors and theme
- Footer links
- Plugins and presets
- Plugins and extensions

**Structure:**
```javascript
// docusaurus.config.js
module.exports = {
  title: 'My Site',
  tagline: 'Tagline here',
  // ... more config
};
```

---

## Common Configuration Fields

### title

**Type:** `string`  
**Description:** Your site's title (shown in browser tab and navbar).

```javascript
module.exports = {
  title: 'My Documentation',
  // ...
};
```

### tagline

**Type:** `string`  
**Description:** Short description displayed under the title in some places.

```javascript
module.exports = {
  tagline: 'Fast, modern documentation for developers',
  // ...
};
```

### url

**Type:** `string`  
**Description:** Base URL of your site.

```javascript
module.exports = {
  url: 'https://docs.example.com',
  // ...
};
```

**With DocuSapiens:** Automatically set to `https://your-subdomain.docusapiens.ai`

### baseUrl

**Type:** `string`  
**Description:** Base path of the site (usually `/`).

```javascript
module.exports = {
  baseUrl: '/',  // Site at root
  // or
  baseUrl: '/docs/',  // Site at /docs/
  // ...
};
```

**With DocuSapiens:** Set to `/`

### favicon

**Type:** `string`  
**Description:** Path to favicon (icon shown in browser tab).

```javascript
module.exports = {
  favicon: 'img/favicon.ico',
  // ...
};
```

### organizationName

**Type:** `string`  
**Description:** GitHub organization or username (for GitHub-related features).

```javascript
module.exports = {
  organizationName: 'my-org',  // GitHub username/org
  projectName: 'my-docs',      // Repository name
  // ...
};
```

---

## Navbar Configuration

The navbar (top navigation bar) is configured in the `themeConfig` section:

```javascript
module.exports = {
  themeConfig: {
    navbar: {
      title: 'My Site',
      logo: {
        alt: 'Logo Alt Text',
        src: 'img/logo.svg',
      },
      items: [
        { to: 'docs/intro', label: 'Docs', position: 'left' },
        { to: 'blog', label: 'Blog', position: 'left' },
        { href: 'https://github.com', label: 'GitHub', position: 'right' },
      ],
    },
  },
};
```

**With DocuSapiens:** Navbar is pre-configured and cannot be changed.

---

## Footer Configuration

Footer (bottom of page) configuration:

```javascript
module.exports = {
  themeConfig: {
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Docs',
          items: [
            { label: 'Getting Started', to: 'docs/getting-started' },
            { label: 'API Reference', to: 'docs/api' },
          ],
        },
        {
          title: 'Community',
          items: [
            { label: 'GitHub', href: 'https://github.com' },
            { label: 'Twitter', href: 'https://twitter.com' },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} My Company`,
    },
  },
};
```

**With DocuSapiens:** Footer is pre-configured.

---

## Theme Configuration

Colors, dark mode, and styling:

```javascript
module.exports = {
  themeConfig: {
    colorMode: {
      defaultMode: 'light',
      disableSwitch: false,  // Allow dark mode toggle
      respectPrefersColorScheme: true,  // Respect OS preference
    },
    prism: {
      theme: require('prism-react-renderer/themes/github'),
      darkTheme: require('prism-react-renderer/themes/dracula'),
    },
  },
};
```

**With DocuSapiens:** Theme is pre-configured with DocuSapiens defaults.

---

## Plugins Configuration

Plugins extend Docusaurus functionality:

```javascript
module.exports = {
  plugins: [
    // Built-in plugins
    '@docusaurus/plugin-content-blog',
    '@docusaurus/plugin-content-pages',
    
    // Custom plugin with options
    ['@docusaurus/plugin-sitemap', { changefreq: 'weekly' }],
  ],
};
```

**Common plugins:**
- `plugin-content-docs` — Documentation pages
- `plugin-content-blog` — Blog posts
- `plugin-sitemap` — Sitemap generation
- `plugin-search-local` — Local search

**With DocuSapiens:** Plugins are pre-configured.

---

## Presets

Presets are bundles of plugins and theme configurations:

```javascript
module.exports = {
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          // Docs plugin configuration
          sidebarPath: require.resolve('./sidebars.js'),
          editUrl: 'https://github.com/my-org/my-docs/edit/main',
        },
        blog: {
          // Blog plugin configuration
          showReadingTime: true,
        },
      },
    ],
  ],
};
```

**With DocuSapiens:** Presets are pre-configured.

---

## Markdown Configuration

Settings for Markdown processing:

```javascript
module.exports = {
  markdown: {
    parser: 'default',  // or 'mdx'
    mermaid: true,  // Enable Mermaid diagrams
  },
};
```

---

## Scripts and Metadata

Add custom scripts or meta tags:

```javascript
module.exports = {
  headTags: [
    {
      tagName: 'meta',
      attributes: { name: 'theme-color', content: '#25c2a0' },
    },
  ],
  scripts: [
    {
      src: 'https://analytics.example.com/script.js',
      async: true,
      defer: true,
    },
  ],
};
```

---

## Complete Example Config

```javascript
// docusaurus.config.js
module.exports = {
  title: 'My Documentation',
  tagline: 'Great docs for great products',
  url: 'https://docs.example.com',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'my-org',
  projectName: 'my-docs',

  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
        },
      },
    ],
  ],

  themeConfig: {
    navbar: {
      title: 'My Docs',
      items: [
        { to: 'docs/intro', label: 'Documentation', position: 'left' },
        { href: 'https://github.com/my-org/my-docs', label: 'GitHub', position: 'right' },
      ],
    },
    footer: {
      copyright: `Copyright © ${new Date().getFullYear()} My Company`,
    },
    colorMode: {
      defaultMode: 'light',
      disableSwitch: false,
    },
  },
};
```

---

## Configuration with DocuSapiens

DocuSapiens uses pre-configured `docusaurus.config.js` with sensible defaults:

### ✅ Pre-configured For You

- ✅ Site title and baseUrl
- ✅ Navigation navbar
- ✅ Footer
- ✅ Dark mode support
- ✅ Search integration
- ✅ SEO optimization
- ✅ Mobile responsive theme

### ❌ Cannot Customize (Yet)

- ❌ Change colors
- ❌ Modify navbar links
- ❌ Change footer text
- ❌ Add custom plugins
- ❌ Add custom scripts

---

## Future: Configuration UI

We're building a configuration panel where you'll customize:
- Site colors and branding
- Navbar and footer
- Basic plugins
- Analytics integration

Without editing JavaScript files.

---

## Self-Hosted Docusaurus

If you're running Docusaurus locally or on your own server, you have full control over `docusaurus.config.js`.

See [Docusaurus Configuration Docs](https://docusaurus.io/docs/docusaurus.config.js) for complete reference.

---

## See Also

- [Docusaurus Configuration](https://docusaurus.io/docs/docusaurus.config.js)
- [Docusaurus Deploy Guides](https://docusaurus.io/docs/deployment)
- [Using Docusaurus Locally](../tutorials/getting-started.md)

---

**With DocuSapiens, configuration is handled for you.** Focus on content, not configuration!

Questions? Check [FAQs](../reference/faq.md).
