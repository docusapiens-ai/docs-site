# Using Advanced Markdown (MDX)

## Goal

Learn how to embed interactive React components and advanced features in your Markdown documentation.

---

## Prerequisites

- A Docusaurus site
- Basic Markdown knowledge
- Basic React knowledge (helpful but not required)

---

## What is MDX?

**MDX** stands for **"Markdown + JSX"** — it lets you write Markdown and embed React components in the same file.

### Standard Markdown

```markdown
# My Guide

This is plain Markdown.

- Item 1
- Item 2

```jsx
console.log("code block");
```
```

### MDX

```markdown
# My Guide

This is Markdown with React:

<MyComponent prop="value" />

And you can mix it:

- Item 1
- Item 2

<Alert>This is a component right in the Markdown!</Alert>
```

**In Docusaurus, `.md` files support basic Markdown, while `.mdx` files support React components too.**

---

## Using MDX in Docusaurus

### Step 1: Use `.mdx` Extension

Instead of creating `guide.md`, create `guide.mdx`:

```
docs/
├── intro.md           ← Standard Markdown
└── advanced.mdx       ← MDX (with components)
```

### Step 2: Write Markdown + Components

In `docs/advanced.mdx`:

```mdx
# Advanced Guide

This is normal Markdown.

<Alert type="info">
  This is a React component!
</Alert>

More Markdown below...
```

[SCREENSHOT PLACEHOLDER: MDX file in editor showing mixed Markdown and JSX syntax highlighted properly]

### Step 3: Deploy

Commit and push. DocuSapiens automatically handles `.mdx` files.

---

## Built-in Components

Docusaurus provides built-in components you can use immediately:

### 1. Tabs

Display content in tabs:

```mdx
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
  <TabItem value="js" label="JavaScript">
    
```javascript
console.log("Hello");
```
  </TabItem>
  
  <TabItem value="python" label="Python">
    
```python
print("Hello")
```
  </TabItem>
</Tabs>
```

[SCREENSHOT PLACEHOLDER: Documentation showing tabbed code examples with "JavaScript" and "Python" tabs]

### 2. Admonitions (Info Boxes)

Important callout boxes:

```mdx
:::note
This is a note. It's informational.
:::

:::tip
This is a helpful tip!
:::

:::info
General information.
:::

:::caution
Be careful with this!
:::

:::danger
⚠️ This is dangerous!
:::
```

[SCREENSHOT PLACEHOLDER: Page showing five different admonition boxes colored by type (note=blue, tip=green, info=blue, caution=yellow, danger=red)]

### 3. Code Blocks with Highlighting

Syntax-highlighted code:

````mdx
```javascript title="example.js" {2-3}
function hello() {
  console.log("Line 2");      // Lines 2-3 highlighted
  console.log("Line 3");
}
```
````

[SCREENSHOT PLACEHOLDER: Code block showing JavaScript with line numbers, specific lines highlighted in different color]

### 4. Callouts / Admonitions

Quick alerts:

```mdx
> **Note:** This is important information.
```

[SCREENSHOT PLACEHOLDER: Quote-style callout with bold label]

---

## Creating Custom Components

You can build and use custom React components.

### Step 1: Create a Component File

Create components folder:

```
src/
└── components/
    └── MyCustomAlert.jsx
```

### Step 2: Write the Component

```jsx
// src/components/MyCustomAlert.jsx
export default function MyCustomAlert({ children, type = 'info' }) {
  return (
    <div className={`alert alert-${type}`}>
      {children}
    </div>
  );
}
```

### Step 3: Import and Use

In your `.mdx` file:

```mdx
import MyCustomAlert from '@site/src/components/MyCustomAlert';

# My Guide

<MyCustomAlert type="warning">
  Custom component alert!
</MyCustomAlert>
```

[SCREENSHOT PLACEHOLDER: MDX file showing import statement and component usage in Markdown]

---

## Interactive Examples

You can embed interactive components:

### Interactive Demo

```mdx
import InteractiveButton from '@site/src/components/InteractiveButton';

<InteractiveButton />
```

**Example use cases:**
- Interactive tutorials
- Live code playgrounds
- Form builders
- API explorers
- Charts and graphs

[SCREENSHOT PLACEHOLDER: MDX file with embedded interactive component, showing click response]

---

## Limitations with DocuSapiens

**With DocuSapiens**, you can use:

✅ **Supported:**
- Basic `.mdx` files
- Built-in Docusaurus components (Tabs, Admonitions)
- Standard Markdown in `.md` files
- Code highlighting

❌ **Not yet supported:**
- Custom React components (you can't create `src/components/`)
- Custom themes
- Custom plugins

**Why?** Keeps DocuSapiens simple and safe.

**Coming soon:** Support for custom components.

---

## Practical Examples

### Example 1: Tabbed Code Examples

Show same thing in multiple languages:

```mdx
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

# API Authentication

Choose your language:

<Tabs>
  <TabItem value="curl" label="cURL">
    
```bash
curl https://api.example.com \
  -H "Authorization: Bearer TOKEN"
```
  </TabItem>
  
  <TabItem value="python" label="Python">
    
```python
import requests
headers = {"Authorization": "Bearer TOKEN"}
response = requests.get("https://api.example.com", headers=headers)
```
  </TabItem>
  
  <TabItem value="javascript" label="JavaScript">
    
```javascript
const response = await fetch("https://api.example.com", {
  headers: { "Authorization": "Bearer TOKEN" }
});
```
  </TabItem>
</Tabs>
```

[SCREENSHOT PLACEHOLDER: Tabbed interface showing same API call in three languages with nice syntax highlighting]

### Example 2: Important Callouts in Tutorials

Make warnings stand out:

```mdx
# Getting Started

Follow these steps:

1. Install the package
2. Configure your settings

:::danger
Do NOT commit your API keys to git!
:::

3. Deploy to production

:::tip
Use environment variables for secrets instead.
:::
```

[SCREENSHOT PLACEHOLDER: Tutorial page with red danger box and green tip box integrated into the flow]

### Example 3: Complex Reference Documentation

```mdx
# API Reference

## Endpoints

<Tabs>
  <TabItem value="users" label="Users">

### GET /users

Get all users.

```bash
curl https://api.example.com/users
```

**Response:**
```json
[
  { "id": 1, "name": "Alice" },
  { "id": 2, "name": "Bob" }
]
```
  </TabItem>
  
  <TabItem value="posts" label="Posts">

### GET /posts

Get all posts.

```bash
curl https://api.example.com/posts
```

  </TabItem>
</Tabs>
```

[SCREENSHOT PLACEHOLDER: API documentation with tabbed endpoints, each showing formatted request and response]

---

## Best Practices

### ✅ Do This

- Use `.mdx` only when needed (interactive content)
- Use built-in components (don't reinvent)
- Keep MDX simple (it's still documentation)
- Use Tabs for showing variations
- Use Admonitions for important notes

### ❌ Don't Do This

- Use MDX for every page (plain Markdown is fine)
- Create overly complex components
- Make interactive demos that distract from content
- Mix HTML with MDX unnecessarily
- Use unsupported features

---

## See Also

- [Add a Document](./add-a-doc.md)
- [Docusaurus MDX Guide](https://docusaurus.io/docs/markdown-features)
- [Frontmatter Reference](../reference/frontmatter.md)

---

**MDX adds power to your documentation when you need it.** Keep it simple for most pages!

Questions? Check [FAQs](../reference/faq.md).
