# How to Rebuild Your Site

## Goal

Manually trigger a rebuild of your documentation site from the DocuSapiens dashboard.

---

## Prerequisites

- A deployed site on DocuSapiens

---

## How Builds Work

DocuSapiens does **not** automatically rebuild your site when you push to GitHub. Every build is **manually triggered** from the dashboard. This gives you full control over when changes go live.

**When to trigger a rebuild:**
- You updated your docs in GitHub and want to publish the changes
- You want to force a re-index of your docs for the AI chat
- You changed the source branch and want to rebuild from it

---

## Step 1: Go to Your Site

From the DocuSapiens dashboard, click **"Sites"** in the sidebar, then click on the site you want to rebuild.

![Lista de sites — haz clic en el site que quieres rebuildar](/img/sites.png)

---

## Step 2: Click "Rebuild"

On the site details page, find the **"Rebuild"** button.

![Página de Builds del site con botón New Build](/img/site-builds.png)

Click **"Rebuild"**. A confirmation dialog may appear:

```
Rebuild from branch: main?
This will fetch latest changes and rebuild the site.

[Cancel]  [Rebuild]
```

Click **"Rebuild"** to confirm.

---

## Step 3: Monitor Progress

The build starts immediately. You will see live progress in the dashboard.

![Historial de builds mostrando el progreso del build](/img/site-builds.png)

---

## Step 4: Build Complete

When done, you will see a success message with your site URL:

```
Build Status: Success
Built at: 2:34 PM
Duration: 42 seconds
Site: https://my-awesome-project.docusapiens.site
```

![Build con estado Chat Ready tras completarse con éxito](/img/site-builds.png)

---

## Changing the Source Branch

To deploy from a different branch (e.g., `production` instead of `main`):

1. On your site detail page, click **"Settings"** or the gear icon
2. Find the **"Source Branch"** setting and change it
3. Click **"Save Changes"**
4. Trigger a rebuild manually to deploy from the new branch

![Formulario de creación de site mostrando el campo Branch](/img/site-create.png)

---

## Force Re-index of AI Chat

A rebuild always re-indexes your documentation for the AI chat. Simply rebuild and the AI chat will reflect your latest docs.

If you want to re-index without rebuilding the whole site, look for a **"Reindex AI Chat"** button in Site Settings.

---

## Rollback to a Previous Version

If a build goes wrong, you can restore a previous successful build:

1. On the site details page, open **"Build History"**
2. Find an older successful build
3. Click **"Restore"** or **"Deploy This Version"**

![Tabla de builds — cada fila es una versión deployable](/img/site-builds.png)

---

## Build Status Reference

| Status | Meaning |
|--------|---------|
| Success (green) | Site built and deployed |
| Failed (red) | Build failed; previous version still live |
| In Progress (blue) | Currently building |

Click on any build to see detailed logs.

---

## Common Issues

### "docs/ folder not found"

Your `docs/` folder does not exist on the deployed branch. Create it or update the docs folder path in Site Settings.

### "Markdown syntax error at line X"

An unclosed code block, invalid frontmatter, or broken link in the file mentioned. Fix the issue in GitHub, then trigger a new rebuild.

### "Build timeout"

Repository is too large (>500MB). Contact support.

---

## Next Steps

- **Connect a new repo:** [Connect GitHub Repo](./connect-github-repo.md)
- **Manage site settings:** [Manage Your Sites](./manage-sites.md)
- **Use AI chat:** [AI Chat Guide](./use-ai-chat.md)

---

Questions? Check [FAQs](../reference/faq.md).
