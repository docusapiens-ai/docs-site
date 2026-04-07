# How to Connect a GitHub Repository

## Goal

Add a new GitHub repository to DocuSapiens and deploy its documentation as a live site.

---

## Prerequisites

- A DocuSapiens account (sign up at [app.docusapiens.ai](https://app.docusapiens.ai))
- A GitHub repository with a `docs/` folder containing Markdown files
- Authorization to access the repository with GitHub OAuth

---

## Steps

### Step 1: Navigate to the Sites Page

From the DocuSapiens dashboard, click **"Sites"** in the sidebar.

![Sidebar con Sites seleccionado y lista de sites](/img/sites.png)

### Step 2: Click "Create New Site"

Click the **"+New Site"** button.

![Botón Create Site en la página de Sites](/img/sites.png)

A repository selection modal or page will appear.

### Step 3: Select Your Repository

The modal shows a list of your GitHub repositories.

1. **Search** for your repository by typing its name (optional)
2. Click the repository you want to deploy

![Formulario de creación de site — campo Repository URL y opciones de configuración](/img/site-create.png)

You should see:
- Repository name
- Last commit date
- Owner name

> **Note:** Only **public** repositories are supported during Alpha.

### Step 4: Choose a Site Name

Enter the site name for your documentation site:

```
https://<YOUR-SITE-NAME>.docusapiens.site
```

#### Site Name Rules

- **Lowercase letters only** (no uppercase)
- **Numbers and hyphens allowed** (no underscores or spaces)
- **3-50 characters**
- **Must be unique** (not taken by another DocuSapiens user)

#### Examples of Good Site Names

- `my-project`
- `awesome-docs`
- `service-api`
- `support-center`

#### Examples to Avoid

- `MyProject` (uppercase not allowed)
- `my_project` (underscores not allowed)
- `my project` (spaces not allowed)
- `docs` (likely taken)

![Campo Subdomain en el formulario de creación de site](/img/site-create.png)

### Step 5: Select the Branch (Optional)

Click on the **"Branch"** dropdown to choose which branch to deploy from.

**Default:** Your repository's default branch (usually `main`)

Common alternatives:
- `production` — for docs that only update on releases
- `develop` — for documentation of features in development

![Campo Branch en el formulario de creación de site](/img/site-create.png)

**Note:** You can change the branch later if you update your deployment settings.

### Step 6: Select Documentation Folder (Optional)

By default, DocuSapiens looks for a `docs/` folder in the repository root.

**If your docs are in a different location**, specify it here:
- `documentation/`
- `src/docs/`
- `website/docs/`

![Campo Docs Path en el formulario de creación de site](/img/site-create.png)

### Step 7: Review and Create

Review your choices:

```
Repository:     my-awesome-project ✓
Site name:      my-awesome-project.docusapiens.site ✓
Branch:         main ✓
Docs folder:    docs/ ✓
```

Click **"Create Site"** to proceed.

![Formulario completo de creación listo para confirmar](/img/site-create.png)

### Step 8: Monitor the Build

Once you click "Create Site", DocuSapiens starts building:

![Historial de builds con estados de despliegue](/img/site-builds.png)

**What's happening:**
1. DocuSapiens connects to your GitHub repository
2. Fetches all files from the `docs/` folder
3. Processes them with Docusaurus
4. Uploads the built site to hosting
5. Trains the AI chat model on your content

### Step 9: Site is Live!

When the build completes successfully:

![Build con estado Chat Ready — site y chat listos](/img/site-builds.png)

Click **"Visit Site"** to see your live documentation!

---

## Keeping Your Site Up to Date

After your site is created, DocuSapiens does **not** automatically rebuild when you push to GitHub. Builds are **manual** — you trigger them from the dashboard whenever you're ready to publish new changes.

To update your site:
1. Open your site in the [DocuSapiens dashboard](https://app.docusapiens.ai)
2. Click **"Rebuild"**
3. Wait ~45 seconds for the build to complete

See [How to Rebuild Your Site](./rebuild-site.md) for details.

---

## Troubleshooting

### ❌ "Repository not found"

**Cause:** DocuSapiens doesn't have access to the repository.

**Solution:**
1. Go to [GitHub Settings → Applications](https://github.com/settings/applications)
2. Find "DocuSapiens"
3. Click **"Grant access"** if prompted

### ❌ "docs/ folder not found"

**Cause:** Your repository doesn't have a `docs/` folder, or it's in a different location.

**Solution:**
1. Check your repository structure — where are your `.md` files?
2. If they're in a folder like `documentation/`, specify that path in Step 6
3. If you don't have `.md` files yet, see [Writing Documentation Guide](../../writing-docs/README.md)

### ❌ "Build failed"

**Cause:** Your Markdown files have syntax errors (unclosed code blocks, bad frontmatter, etc.)

**Solution:**
1. Check your `.md` files for common issues:
   - Missing closing ` ``` ` (three backticks)
   - Invalid YAML frontmatter
   - Broken image paths
2. Fix the issues and commit
3. Trigger a manual rebuild from the dashboard

### ❌ "Site name already taken"

**Cause:** Another user chose that site name first.

**Solution:** Try a different name (e.g., add your company name: `my-company-docs`)

---

## Next Steps

- **Deploy your docs:** [Getting Started Tutorial](../tutorials/getting-started.md)
- **Publish updates:** [How to Rebuild Your Site](./rebuild-site.md)
- **Use the AI chat:** [How to Use AI Chat](./use-ai-chat.md)

---

**Your site is now connected and live!** Trigger a rebuild from the dashboard whenever you want to publish new changes.

Have questions? Check [FAQs](../reference/faq.md).
