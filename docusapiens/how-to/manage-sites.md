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

[SCREENSHOT PLACEHOLDER: Dashboard with "Sites" menu item highlighted in sidebar]

### Step 2: See Your Sites List

You'll see all your deployed sites displayed as:
- **Cards** (grid view) or
- **Rows** (table view)

Each site shows:
- **Site name** (repo name or custom name)
- **URL** (the `.docusapiens.ai` domain)
- **Status** (Active / Building / Failed)
- **Last deployed** (timestamp)
- **Build status** (✓ Success / ❌ Failed)

[SCREENSHOT PLACEHOLDER: Sites list page showing 2-3 example sites in card format with:
- Site name
- Public/Private badge
- URL as a link
- Status indicator
- "..." menu button]

### Step 3: Click a Site to See Details

Click on any site card to see:
- Full site information
- Build history
- Deployment settings
- Analytics (if available)
- AI chat status

[SCREENSHOT PLACEHOLDER: Individual site details page showing:
- Site URL with copy button
- Build history list
- Current status
- AI chat status indicator
- Settings button]

---

## Site Settings

### Step 1: Open Site Settings

On any site's detail page, look for a **"Settings"** button or **gear icon**.

Click it to open settings.

[SCREENSHOT PLACEHOLDER: Site detail page with "Settings" button or gear icon highlighted]

### Step 2: Available Settings

#### Source Repository & Branch

- **Repository:** The GitHub repo being deployed
- **Branch:** Which branch to build from (main / develop / production)

To change the branch:
1. Click the dropdown next to "Branch"
2. Select a different branch
3. Click "Save"
4. DocuSapiens automatically rebuilds from the new branch

[SCREENSHOT PLACEHOLDER: Settings form showing:
- Repository field (read-only): "docusapiens-ai/docs-site"
- Branch dropdown: "main" with dropdown menu showing alternatives]

#### Docs Folder

- **Docs folder:** Path to your documentation folder

Default: `docs/`

If your docs are in a different location (e.g., `documentation/` or `src/docs/`), change it here.

[SCREENSHOT PLACEHOLDER: Docs folder input field with "docs/" as default, with info text "This is where we look for .md files"]

#### Subdomain

- **Subdomain:** Your site's address

Read-only field showing `your-subdomain.docusapiens.ai`

To change your subdomain, you'll need to create a new site. (This feature might be available in future versions.)

[SCREENSHOT PLACEHOLDER: Subdomain field showing "my-awesome-docs.docusapiens.ai" with "Active" status indicator]

### Step 3: Save Changes

After making changes, click **"Save Settings"**.

DocuSapiens will validate and rebuild if necessary.

[SCREENSHOT PLACEHOLDER: Settings form with "Save Settings" button, possibly showing success message after save]

---

## Monitoring Builds

### View Build History

On the site details page, scroll down to see **"Recent Builds"** or **"Build History"**:

[SCREENSHOT PLACEHOLDER: Build history list showing multiple builds with:
- Timestamp of each build
- Status (✓ Success / ❌ Failed / ⏳ In Progress)
- Duration ("42 seconds")
- Triggered by ("Push to main" or "Manual rebuild")]

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

[SCREENSHOT PLACEHOLDER: Build detail page showing:
- Build #42 | Context
- Build started: 2025-02-19 at 14:32
- Build completed: 42 seconds elapsed
- Full log output showing each step
- "Rebuild this version" button]

---

## Rebuilding Your Site

### Quick Rebuild

To rebuild from current settings:

1. On the site details page, find the **"Rebuild"** button
2. Click it
3. Confirm the rebuild

[SCREENSHOT PLACEHOLDER: "Rebuild" button on site page, or in a "..." menu]

DocuSapiens will fetch the latest files from your GitHub branch and rebuild.

### Rebuild from Specific Build

If you want to redeploy an older version while you fix something:

1. Go to Build History
2. Find the build you want to restore
3. Click **"Restore"** or **"Deploy"**

[SCREENSHOT PLACEHOLDER: Build history with "Restore" button next to an older successful build]

---

## Managing AI Chat

### AI Chat Status

On the site details page, look for **"AI Chat Status"**:

| Status | Meaning |
|--------|---------|
| ✓ Ready | AI chat is trained and ready to use |
| ⏳ Training | AI is being trained (happens after each build) |
| ❌ Error | Something went wrong with AI training |

[SCREENSHOT PLACEHOLDER: AI Chat section showing status indicator with "Ready" and last trained timestamp]

### Force Re-index

If you notice the AI chat is out of sync:

1. Click **"Reindex"** or **"Retrain AI"** button
2. Confirm

The AI will re-read your docs and retrain its model.

[SCREENSHOT PLACEHOLDER: AI Chat section with "Reindex AI" button highlighted]

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

[SCREENSHOT PLACEHOLDER: Toggle switch for "Enable AI Chat" showing ON/OFF state]

---

## Deleting a Site

### ⚠️ Warning: This Cannot Be Undone

Deleting a site:
- Removes your deployed documentation site
- The `.docusapiens.ai` domain becomes inactive
- Your GitHub repository is **not** deleted (only the deployment)
- You can redeploy anytime by connecting the repo again

### Steps to Delete

1. On the site details page, scroll to the bottom
2. Look for **"Danger Zone"** section in red
3. Click **"Delete Site"**

[SCREENSHOT PLACEHOLDER: Danger Zone section with red "Delete Site" button]

4. A confirmation dialog will appear:

```
"Are you sure? This will:"
- Remove your site from docusapiens.ai
- Stop syncing with GitHub
- Delete all builds and deployment history
- Your docs repository remains on GitHub

Type your site name to confirm: ________

[Cancel]  [Delete]"
```

5. Type the site name as shown to confirm
6. Click **"Delete"**

[SCREENSHOT PLACEHOLDER: Confirmation modal with text input field for site name, delete button]

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
3. Commit and push
4. DocuSapiens rebuilds automatically

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

**Cause:** Build failed silently, or you're not pushing to the deployed branch.

**Solution:**
1. Check dashboard to confirm build succeeded
2. Verify you're pushing to the correct branch (not a feature branch)
3. Check build logs for errors

---

## Next Steps

- **Deploy a new site:** [Connect GitHub Repo](./connect-github-repo.md)
- **Update your site:** [Rebuild Your Site](./rebuild-site.md)
- **Use AI chat:** [AI Chat Guide](./use-ai-chat.md)
- **Dashboard features:** [Dashboard Reference](../reference/dashboard.md)

---

That's everything you need to manage your DocuSapiens sites!

Questions? Check [FAQs](../reference/faq.md).
