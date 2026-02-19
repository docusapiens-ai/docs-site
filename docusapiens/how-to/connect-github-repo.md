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

[SCREENSHOT PLACEHOLDER: Dashboard sidebar with "Sites" option highlighted]

You'll see:
- A list of your existing deployed sites
- A **"+New Site"** or **"Create Site"** button

[SCREENSHOT PLACEHOLDER: Sites list page showing existing sites (if any) with cards/rows, prominent "New Site" button at top or bottom]

### Step 2: Click "Create New Site"

Click the **"+New Site"** button.

[SCREENSHOT PLACEHOLDER: "New Site" button highlighted in the Sites page]

A repository selection modal or page will appear.

### Step 3: Select Your Repository

The modal shows a list of your GitHub repositories.

1. **Search** for your repository by typing its name (optional)
2. Click the repository you want to deploy

[SCREENSHOT PLACEHOLDER: Repository selection modal showing list of repos with search bar at top, selected repo highlighted in blue]

You should see:
- Repository name
- Whether it's public or private
- Last commit date
- Owner name

### Step 4: Choose a Subdomain

Enter the subdomain for your documentation site:

```
https://<YOUR-SUBDOMAIN>.docusapiens.ai
```

#### Subdomain Rules

- **Lowercase letters only** (no uppercase)
- **Numbers and hyphens allowed** (no underscores or spaces)
- **3-50 characters**
- **Must be unique** (not taken by another DocuSapiens user)

#### Examples of Good Subdomains

- `my-project`
- `awesome-docs`
- `service-api`
- `support-center`

#### Examples to Avoid

- `MyProject` (uppercase not allowed)
- `my_project` (underscores not allowed)
- `my project` (spaces not allowed)
- `docs` (likely taken)

[SCREENSHOT PLACEHOLDER: Subdomain input field with validation feedback, showing "Available ✓" or "Already taken ✗" in real-time]

### Step 5: Select the Branch (Optional)

Click on the **"Branch"** dropdown to choose which branch to deploy from.

**Default:** Your repository's default branch (usually `main`)

Common alternatives:
- `production` — for docs that only update on releases
- `develop` — for documentation of features in development

[SCREENSHOT PLACEHOLDER: Branch dropdown menu showing options like "main", "develop", "production" with current selection highlighted]

**Note:** You can change the branch later if you update your deployment settings.

### Step 6: Select Documentation Folder (Optional)

By default, DocuSapiens looks for a `docs/` folder in the repository root.

**If your docs are in a different location**, specify it here:
- `documentation/`
- `src/docs/`
- `website/docs/`

[SCREENSHOT PLACEHOLDER: Folder path input field with "docs/" as default, option to change it]

### Step 7: Review and Create

Review your choices:

```
Repository:     my-awesome-project ✓
Subdomain:      my-awesome-project.docusapiens.ai ✓
Branch:         main ✓
Docs folder:    docs/ ✓
```

Click **"Create Site"** to proceed.

[SCREENSHOT PLACEHOLDER: Summary of choices displayed, "Create Site" button prominently shown]

### Step 8: Monitor the Build

Once you click "Create Site", DocuSapiens starts building:

[SCREENSHOT PLACEHOLDER: Live build progress screen showing:
- "Connecting to GitHub..." ✓
- "Fetching Markdown files..." ✓
- "Building with Docusaurus..." (in progress)
- "Uploading to hosting..." (pending)
- "Training AI index..." (pending)
With estimated time: "~45 seconds remaining"]

**What's happening:**
1. DocuSapiens connects to your GitHub repository
2. Fetches all files from the `docs/` folder
3. Processes them with Docusaurus
4. Uploads the built site to Google Cloud Storage
5. Trains the AI chat model on your content

### Step 9: Site is Live!

When the build completes successfully:

[SCREENSHOT PLACEHOLDER: Green "Build Successful ✓" message, showing:
- Site URL: https://my-awesome-project.docusapiens.ai
- Build time: 42 seconds
- AI Status: Ready
- Button: "Visit Site"]

Click **"Visit Site"** to see your live documentation!

---

## What Happens After Creation

### Automatic Syncing

Your site is now connected to GitHub. Whenever you:
1. Push commits to your selected branch
2. DocuSapiens automatically:
   - Rebuilds your site (30-60 seconds)
   - Updates the AI chat model
   - Deploys new changes live

### GitHub Webhook

DocuSapiens adds a webhook to your repository that notifies it of new commits. No setup needed on your part.

[SCREENSHOT PLACEHOLDER: GitHub repository settings showing "Webhooks" section with DocuSapiens webhook listed]

---

## Troubleshooting

### ❌ "Repository not found"

**Cause:** DocuSapiens doesn't have access to the repository.

**Solution:**
1. Go to [GitHub Settings → Applications](https://github.com/settings/applications)
2. Find "DocuSapiens.ai"
3. Click **"Grant access"** if prompted

### ❌ "docs/ folder not found"

**Cause:** Your repository doesn't have a `docs/` folder, or it's in a different location.

**Solution:**
1. Check your repository structure — where are your `.md` files?
2. If they're in a folder like `documentation/`, specify that path in Step 6
3. If you don't have `.md` files yet, see [Docusaurus Getting Started](../../docusaurus/tutorials/getting-started.md)

### ❌ "Build failed"

**Cause:** Your Markdown files have syntax errors (unclosed code blocks, bad frontmatter, etc.)

**Solution:**
1. Check your `.md` files for common issues:
   - Missing closing ` ``` ` (three backticks)
   - Invalid YAML frontmatter
   - Broken image paths
2. Fix the issues and commit
3. DocuSapiens will automatically rebuild

### ❌ "Subdomain already taken"

**Cause:** Another user chose that subdomain first.

**Solution:** Try a different name (e.g., add your company name: `my-company-docs`)

---

## Next Steps

- **Deploy your docs:** [Getting Started Tutorial](../tutorials/getting-started.md)
- **Make updates automatically:** [How to Rebuild Your Site](./rebuild-site.md)
- **Use the AI chat:** [How to Use AI Chat](./use-ai-chat.md)
- **See all features:** [Dashboard Reference](../reference/dashboard.md)

---

**Your site is now connected and live!** Every commit to your chosen branch will automatically update it.

Have questions? Check [FAQs](../reference/faq.md).
