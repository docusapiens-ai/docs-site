# How to Manage Your Sites

## Goal

Understand how to view, configure, delete, and monitor your deployed documentation sites in the DocuSapiens dashboard.

---

## Prerequisites

- A DocuSapiens account with at least one deployed site

---

## Viewing Your Sites

### Step 1: Go to Sites Page

From the dashboard, click **"Sites"** in the left sidebar.

![Sidebar del dashboard con "Sites" seleccionado](/img/sites.png)

### Step 2: See Your Sites List

You'll see all your deployed sites displayed as:
- **Cards** (grid view) or
- **Rows** (table view)

Each site shows:
- **Site name** (repo name or custom name)
- **URL** (the `.docusapiens.site` domain)
- **Status** (Active / Building / Failed)
- **Last deployed** (timestamp)
- **Build status** (✓ Success / ❌ Failed)

![Lista de sites en formato grid con nombre, URL, repositorio y acciones](/img/sites.png)

### Step 3: Click a Site to See Details

Click on any site card to see:
- Full site information
- Build history
- Deployment settings
- Analytics (if available)
- AI chat status

![Historial de builds del site con fecha, estado, branch y timestamps](/img/site-builds.png)

---

## Site Settings

### Step 1: Open Site Settings

On any site's detail page, look for a **"Settings"** button or **gear icon**.

![Página de Settings — perfil de cuenta](/img/settings.png)

### Step 2: Available Settings

#### Source Repository & Branch

- **Repository:** The GitHub repo being deployed
- **Branch:** Which branch to build from (main / develop / production)

To change the branch:
1. Click the dropdown next to "Branch"
2. Select a different branch
3. Click "Save"
4. Trigger a manual rebuild to deploy from the new branch

![Formulario de creación mostrando los campos de repositorio, branch y ruta](/img/site-create.png)

#### Docs Folder

- **Docs folder:** Path to your documentation folder

Default: `docs/`

If your docs are in a different location (e.g., `documentation/` or `src/docs/`), change it here.

![Campo Docs Path en el formulario de creación de site](/img/site-create.png)

#### Site URL

- **Site URL:** Your site's public address

Read-only field showing `your-site.docusapiens.site`

To change your site name, you'll need to create a new site. (This feature might be available in future versions.)

![Lista de sites mostrando la URL del site con dominio .docusapiens.site](/img/sites.png)

### Step 3: Save Changes

After making changes, click **"Save Settings"**.

If changes require a rebuild (e.g., branch or docs folder change), trigger one manually.

![Página de Settings con campos de perfil actualizables](/img/settings.png)

---

## Monitoring Builds

### View Build History

On the site details page, scroll down to see **"Recent Builds"** or **"Build History"**:

![Historial de builds con estado Chat Ready y Queued, fechas y branch](/img/site-builds.png)

### Build Status Indicators

| Status | Meaning |
|--------|---------|
| ✓ Success (green) | Site built and deployed successfully |
| ❌ Failed (red) | Build failed; site reverted to previous version |
| ⏳ In Progress (blue) | Currently building |
| ⏸ Paused | Manual pause (rare) |

### Click a Build for Details

Click on any build to see:
- Full build logs
- Build step breakdown (Fetch → Build → Deploy → AI Train)
- Error messages (if failed)
- Estimated duration
- Deployment time

![Tabla de builds con columnas: Created, Status, Branch, Path, Site Ready, Chat Ready, Updated](/img/site-builds.png)

---

## Rebuilding Your Site

### Quick Rebuild

To rebuild from current settings:

1. On the site details page, find the **"Rebuild"** button
2. Click it
3. Confirm the rebuild

![Página de Builds con el botón New Build en la parte superior](/img/site-builds.png)

DocuSapiens will fetch the latest files from your GitHub branch and rebuild.

### Rebuild from Specific Build

If you want to redeploy an older version while you fix something:

1. Go to Build History
2. Find the build you want to restore
3. Click **"Restore"** or **"Deploy"**

![Historial de builds — cada fila tiene acciones de reintento o restauración](/img/site-builds.png)

---

## Managing AI Chat

### AI Chat Status

On the site details page, look for **"AI Chat Status"**:

| Status | Meaning |
|--------|---------|
| ✓ Ready | AI chat is trained and ready to use |
| ⏳ Training | AI is being trained (happens after each build) |
| ❌ Error | Something went wrong with AI training |

![Estado Chat Ready en el historial de builds (columna Chat Ready)](/img/site-builds.png)

### Force Re-index

If you notice the AI chat is out of sync:

1. Click **"Reindex"** or **"Retrain AI"** button
2. Confirm

The AI will re-read your docs and retrain its model.

![Builds con botón New Build para forzar reindexación](/img/site-builds.png)

### View AI Chat Analytics (Coming Soon)

Future versions will show:
- Number of chat interactions
- Popular questions asked
- Unanswered questions
- Chat satisfaction rating

### Disable AI Chat

If you want to disable the chat widget on your site:

1. In Settings, find **"AI Chat Settings"**
2. Toggle **"Enable AI Chat"** to OFF
3. Save



---

## Deleting a Site

### ⚠️ Warning: This Cannot Be Undone

Deleting a site:
- Removes your deployed documentation site
- The `.docusapiens.site` domain becomes inactive
- Your GitHub repository is **not** deleted (only the deployment)
- You can redeploy anytime by connecting the repo again

### Steps to Delete

1. On the site details page, scroll to the bottom
2. Look for **"Danger Zone"** section in red
3. Click **"Delete Site"**



4. A confirmation dialog will appear:

```
"Are you sure? This will:"
- Remove your site from docusapiens.site
- Delete all builds and deployment history
- Your docs repository remains on GitHub

Type your site name to confirm: ________

[Cancel]  [Delete]"
```

5. Type the site name as shown to confirm
6. Click **"Delete"**



---

## Collaborating on Multiple Sites

### Adding Team Members (Future)

Support for team/organization access is coming soon. For now:
- Only the account owner can manage sites
- Other team members can view published sites but not modify them

### Multiple Personal Sites

You can create as many sites as you want from a single account:

1. Go to **"Sites"**
2. Click **"+New Site"** or **"Create Site"**
3. Select a different repo
4. Deploy

---

## Analytics & Monitoring (Coming Soon)

Future versions will include:
- **Page views** — Most popular docs
- **Chat interactions** — Questions asked, response satisfaction
- **Error tracking** — Build failures over time
- **Performance metrics** — Page load times, deploy duration

---

## Troubleshooting

### ❌ Site Shows "Failed" Status

**Cause:** Last build failed.

**Solution:**
1. Click the build to see error logs
2. Fix the issue in your GitHub repository
3. Go back to the dashboard and trigger a manual rebuild

### ❌ "Build is taking too long"

**Cause:** Large repository or temporary issue.

**Solution:**
1. Wait a few more minutes
2. Check build logs for progress
3. If stuck, click "Cancel" and rebui after a moment

### ❌ AI Chat Says "Not Ready Yet"

**Cause:** Still training after a recent build.

**Solution:** Wait 1-2 minutes for training to complete, then refresh the site.

### ❌ Changes don't appear on the site

**Cause:** You haven't triggered a rebuild yet, or the last build failed.

**Solution:**
1. Check the dashboard — did you trigger a rebuild after updating your docs?
2. Confirm the build succeeded (check build status)
3. Check build logs for errors if it failed

---

## Next Steps

- **Deploy a new site:** [Connect GitHub Repo](./connect-github-repo.md)
- **Trigger a rebuild:** [Rebuild Your Site](./rebuild-site.md)
- **Use AI chat:** [AI Chat Guide](./use-ai-chat.md)

---

That's everything you need to manage your DocuSapiens sites!

Questions? Check [FAQs](../reference/faq.md).
