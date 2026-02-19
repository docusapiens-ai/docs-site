# How to Rebuild Your Site

## Goal

Manually trigger a rebuild of your documentation site, or understand how automatic rebuilds work when you push to GitHub.

---

## Prerequisites

- A deployed site on DocuSapiens
- Write access to the GitHub repository

---

## Automatic Rebuilds (Without Any Action)

### How It Works

DocuSapiens automatically rebuilds your site whenever you push to the selected branch:

```
You commit & push to GitHub
  ↓ (within 5 seconds)
DocuSapiens detects the change
  ↓
Rebuilds the site (30-60 seconds)
  ↓
Retrains AI chat model
  ↓
Site and chat go live
```

**No button to click. No manual steps. Automatic.**

### Example Workflow

1. Edit `docs/getting-started.md` in your editor
2. Save the file locally
3. Commit: `git add docs/ && git commit -m "Update getting started"`
4. Push: `git push origin main` (or your selected branch)
5. **Done!** DocuSapiens detects this automatically

[SCREENSHOT PLACEHOLDER: Terminal showing git commit and push commands]

Go to your DocuSapiens dashboard and watch the build appear:

[SCREENSHOT PLACEHOLDER: Dashboard showing new build appearing in the build history with timestamp showing "just now"]

---

## Manual Rebuild (If Needed)

Sometimes you might want to manually trigger a rebuild without making code changes. For example:

- You fixed a problem and want DocuSapiens to retry
- You want to force a re-index of your docs for the AI chat
- You switched branches and want to rebuild from the new branch

### Step 1: Go to Your Site Settings

In the DocuSapiens dashboard, find your site:

1. Click **"Sites"** in the sidebar
2. Find your site in the list
3. Click on it to open site details

[SCREENSHOT PLACEHOLDER: Sites list page with one site highlighted, showing site card with site name and URL]

### Step 2: Open Build History

You should see a section called **"Builds"** or **"Build History"** showing past builds:

[SCREENSHOT PLACEHOLDER: Build history table/list showing recent builds with timestamps, status (Success/Failed), and duration]

### Step 3: Find "Rebuild" or "Retrigger" Button

Look for a **"Rebuild"** or **"Retrigger Latest Build"** button.

This is typically located:
- Next to the most recent build
- In a **"Settings"** or **"Actions"** menu
- As a button with a refresh/circular arrow icon

[SCREENSHOT PLACEHOLDER: Build history showing "Rebuild" button next to most recent build, or "..." menu that reveals "Rebuild" option]

### Step 4: Confirm and Trigger

Click **"Rebuild"**. A confirmation dialog might appear:

```
"Rebuild from branch: main?"
"This will fetch latest changes and rebuild the site."

[Cancel]  [Rebuild]
```

Click **"Rebuild"** to confirm.

[SCREENSHOT PLACEHOLDER: Confirmation modal with "Rebuild" button]

### Step 5: Monitor Progress

The build starts immediately. You'll see:

[SCREENSHOT PLACEHOLDER: Live rebuild progress showing:
- "Starting rebuild..."
- "Fetching latest files..."
- "Running Docusaurus..."
- Progress bar
- Estimated time remaining]

### Step 6: Build Complete

When done, you'll see:

```
Build Status: ✓ Success
Built at: 2:34 PM
Duration: 42 seconds
Site: https://my-awesome-project.docusapiens.ai
```

[SCREENSHOT PLACEHOLDER: Build success confirmation with green checkmark, timestamp, and site URL]

---

## Changing the Source Branch

If you want to deploy from a different branch (e.g., from `production` instead of `main`):

### Step 1: Open Site Settings

Click on your site, then click **"Settings"** or the gear icon.

[SCREENSHOT PLACEHOLDER: Site details page with "Settings" button or gear icon highlighted]

### Step 2: Change the Branch

Look for **"Source Branch"** or **"Deploy From":

Current: `main` → Change to: `production`

[SCREENSHOT PLACEHOLDER: Settings form showing branch selector dropdown with "main" currently selected, open dropdown showing alternatives like "staging", "production"]

### Step 3: Save and Rebuild

Click **"Save Changes"**.

DocuSapiens will automatically trigger a rebuild from the new branch.

[SCREENSHOT PLACEHOLDER: Build automatically starting after branch change, progress shown in dashboard]

---

## Force Re-index of AI Chat

If you notice the AI chat isn't up-to-date with recent docs changes, you can force a re-index:

### Option A: Trigger a Rebuild (Easiest)

A rebuild automatically re-indexes. Just rebuild (see above) and the AI chat will retrain.

### Option B: Rebuild and Update from Dashboard

In **Site Settings**, look for **"AI Chat Settings"** or **"Reindex"** button:

Click **"Reindex AI Chat Model"**.

[SCREENSHOT PLACEHOLDER: AI Chat section in settings with "Reindex" or "Force Retrain" button]

This re-reads your docs and retrains the AI model without rebuilding the website.

---

## Rollback to Previous Version

If a build goes wrong, you can "rollback" to the previous successful version:

### In Build History

Click on an older successful build and select **"Restore"** or **"Deploy This Version"**:

[SCREENSHOT PLACEHOLDER: Build history showing past builds, one older build with "Restore" button highlighted]

This redeploys that version while you fix the issue:

```
Current version: broken
  ↓ (click restore)
Deployed version: previous good version
  ↓ (while you fix the issue in GitHub)
Next push: new fixed version
```

---

## Monitoring and Logs

### Build Status

Each build shows:
- ✅ Success (green)
- ❌ Failed (red)
- ⏳ In progress (spinner)

### Build Logs

Click on a build to see detailed logs:

[SCREENSHOT PLACEHOLDER: Build details page showing full logs with:
- Timestamp
- Fetching step with file count
- Build step with warnings/errors
- Deployment step
- AI training step]

If a build fails, the logs show why:

```
❌ Build Failed

ERROR: Unexpected closing code block at docs/api.md:42:
Expected closing ``` but found regular text.
```

Return to GitHub, fix the issue, and commit. DocuSapiens retries automatically.

---

## Common Issues During Rebuild

### ❌ "Build failed: docs folder not found"

**Cause:** Your `docs/` folder moved or was deleted.

**Fix:** Make sure docs/ exists on the branch you're deploying from.

### ❌ "Markdown syntax error at line X"

**Cause:** Unclosed code block, invalid frontmatter, or broken link.

**Fix:** Check the file mentioned in the error message and fix the syntax.

### ❌ "Build timeout"

**Cause:** Extremely large repository (>500MB docs).

**Fix:** Contact support.

---

## Next Steps

- **Deploy updates automatically:** Push to GitHub, DocuSapiens handles the rest
- **Make updates with AI awareness:** [Use AI Chat](./use-ai-chat.md)
- **See all site options:** [Dashboard Reference](../reference/dashboard.md)

---

**That's it!** Your site rebuilds automatically on commit, or manually when you need it.

Questions? Check [FAQs](../reference/faq.md).
