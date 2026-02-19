# Getting Started with DocuSapiens

## What You'll Learn

By the end of this tutorial, you will:
- Create a DocuSapiens account with GitHub
- Connect your first GitHub repository
- Deploy your documentation site
- Ask questions using the integrated AI chat
- Make updates and see them go live automatically

## What You'll Need

- A GitHub account (with at least one repository containing Markdown files)
- A repository with a `docs/` folder containing `.md` files
- 5 minutes of your time

If you don't have a test repo yet, use any open-source project or create a new one with some sample Markdown files.

---

## Step 1: Sign Up with GitHub

### 1.1 Visit DocuSapiens

Open [app.docusapiens.ai](https://app.docusapiens.ai) in your browser.

You should see the login page:

[SCREENSHOT PLACEHOLDER: DocuSapiens login page showing "Sign in with GitHub" button prominently]

### 1.2 Click "Sign in with GitHub"

Click the blue button labeled "Sign in with GitHub".

You'll be redirected to GitHub's authorization page.

[SCREENSHOT PLACEHOLDER: GitHub OAuth permission screen showing "DocuSapiens is requesting permission to access your account" with scope information]

### 1.3 Authorize DocuSapiens

GitHub will ask for permission to:
- Access your email address
- List your repositories
- Read repository contents
- (No permission to delete or modify your code)

Click **"Authorize"** to continue.

[SCREENSHOT PLACEHOLDER: GitHub authorization confirmation button]

### 1.4 Return to Dashboard

You'll be redirected back to DocuSapiens. 

**You should see** the main dashboard with a welcome message and an empty sites list.

[SCREENSHOT PLACEHOLDER: DocuSapiens dashboard homepage after successful login, showing "Welcome to DocuSapiens" and a "Create Your First Site" button]

---

## Step 2: Create Your First Site

### 2.1 Click "Create New Site" or "+New Site"

You should see a button to create a new site. Click it.

[SCREENSHOT PLACEHOLDER: Dashboard with "Create New Site" or "+New Site" button highlighted]

### 2.2 Select Your Repository

A modal or page will appear showing your GitHub repositories.

**You should see:**
- A list of your repositories
- A search box to filter repositories
- Repositories labeled as "Public" or "Private"

Select the repository containing your Markdown documentation (must have a `docs/` folder).

[SCREENSHOT PLACEHOLDER: Repository selection interface showing a list of repos with "Public" badges, search bar at top, and selected repo highlighted]

### 2.3 Choose a Subdomain

Enter your desired subdomain. Your site will be available at:

```
https://<subdomain>.docusapiens.ai
```

**Rules:**
- Only lowercase letters, numbers, and hyphens
- Must be unique (not already taken)
- 3-50 characters

Example: `my-project`, `awesome-docs`, `company-support`

[SCREENSHOT PLACEHOLDER: Form showing subdomain input field with text "https://[your-input-here].docusapiens.ai" displayed below]

### 2.4 Select Branch (Optional)

Choose the branch to deploy from (defaults to your repository's default branch, usually `main`).

If you want to deploy only docs from a specific branch (e.g., `production`), select it here.

[SCREENSHOT PLACEHOLDER: Dropdown menu showing branch options like "main", "develop", "staging"]

### 2.5 Click "Create Site"

Click the **Create Site** button.

[SCREENSHOT PLACEHOLDER: Form completion with "Create Site" button, form filled out with example values]

**You should see:**
- A loading spinner ("We're building your site...")
- A progress message showing the build is in progress

[SCREENSHOT PLACEHOLDER: Loading screen with spinner showing "Building your site..." and a progress bar or status messages]

---

## Step 3: Wait for Your Site to Deploy

### 3.1 Monitor the Build

The build typically takes 30-60 seconds. You'll see:

```
1. "Linking GitHub repository..." ✓
2. "Fetching Markdown files..." ✓
3. "Running Docusaurus build..." ⏳
4. "Deploying to hosting..." ⏳
5. "Training AI chat..." ⏳
```

[SCREENSHOT PLACEHOLDER: Build progress screen with each step listed, some marked with checkmarks, current step highlighted]

### 3.2 Build Complete

Once successful, you'll see:

**Status:** "Build Successful ✓"  
**Site URL:** `https://<subdomain>.docusapiens.ai`  
**AI Chat Status:** "Ready"

[SCREENSHOT PLACEHOLDER: Success screen showing green checkmarks, site URL as a clickable link, "Visit Site" button in prominent color]

---

## Step 4: Visit Your Live Site

### 4.1 Click "Visit Site"

Click the **Visit Site** button or copy the URL from the dashboard.

[SCREENSHOT PLACEHOLDER: Button labeled "Visit Site" or a copyable URL field]

### 4.2 Explore Your Documentation

Your site should load with:

- ✅ **Left sidebar:** Your docs structure (folders and page titles)
- ✅ **Main content area:** The content from your Markdown files
- ✅ **Search bar:** At the top (full-text search of all docs)
- ✅ **AI Chat widget:** Bottom-right corner (look for a chat icon)
- ✅ **Dark mode toggle:** Top-right corner

[SCREENSHOT PLACEHOLDER: Full DocuSapiens site view showing layout with sidebar, main content, search bar, and chat widget in corner]

### 4.3 Navigate Your Docs

Click on different pages in the sidebar to verify all your Markdown files were imported correctly.

**You should see:**
- All your `.md` files converted to web pages
- Proper formatting (headings, code blocks, links)
- Images displaying correctly (if you have any)

[SCREENSHOT PLACEHOLDER: A sample docs page showing formatted Markdown content with headings, code blocks, and links]

---

## Step 5: Use the AI Chat

### 5.1 Open the Chat Widget

Look for a chat icon in the bottom-right corner. Click it.

[SCREENSHOT PLACEHOLDER: Close-up of the AI chat widget icon in the bottom-right corner, showing tooltip "Ask about docs"]

### 5.2 Ask a Question

Type a question about your documentation. For example:

```
"What does this project do?"
"How do I install it?"
"What are the main features?"
```

Press Enter or click Send.

[SCREENSHOT PLACEHOLDER: Chat widget open showing input field with example question typed in, "Send" button visible]

### 5.3 Get an AI Answer

The AI will respond with an answer based on your documentation.

**You should see:**
- A conversational response
- Citations showing which docs were used (clickable links)
- Relevant code examples or quotes from your docs

[SCREENSHOT PLACEHOLDER: Chat conversation showing user message, AI response with proper citations and links to source docs]

### 5.4 Follow-up Questions

Ask a follow-up question. The AI understands conversation context.

Example:
```
User: "How do I install it?"
AI: [answer with steps and links]

User: "Will that work on Windows?"
AI: [understands "that" refers to the installation method, gives Windows-specific answer]
```

[SCREENSHOT PLACEHOLDER: Multi-message chat showing context awareness across messages]

---

## Step 6: Make an Update

### 6.1 Edit a Doc in GitHub

Go to your GitHub repository. Edit one of your Markdown files:

1. Click on a `.md` file in your `docs/` folder
2. Click the edit (pencil) icon
3. Make a small change (e.g., add text, fix typo)
4. Click "Commit changes"

[SCREENSHOT PLACEHOLDER: GitHub file editor showing a .md file, pencil icon highlighted, changed text visible]

### 6.2 Commit Your Changes

Add a commit message (e.g., "Update documentation") and click **Commit changes**.

[SCREENSHOT PLACEHOLDER: GitHub commit dialog showing commit message, "Commit changes" button]

### 6.3 Watch Auto-Rebuild

Return to your DocuSapiens dashboard. You should see a new build starting:

[SCREENSHOT PLACEHOLDER: Dashboard showing a new build initiated, timestamp showing recent activity]

**Build status progresses through:**
1. Fetching changes
2. Building site
3. Training AI
4. Complete ✓

[SCREENSHOT PLACEHOLDER: Build progress with timestamps for each step, ultimately showing "Build successful" with new build time]

### 6.4 Verify the Update

Return to your live site and refresh the page.

**You should see:**
- Your updated content on the page
- The AI chat immediately knows about the change (try asking about it!)

---

## Step 7: Share Your Site

### 7.1 Share the URL

Your site is now live and public (for public repos). Share the link:

```
https://<subdomain>.docusapiens.ai
```

with:
- Your team
- Open-source community
- Customers
- Colleagues

[SCREENSHOT PLACEHOLDER: Shareable URL displayed in a card/box with copy button]

### 7.2 Embed the Chat

You can also embed the AI chat on external pages. [See integration guide →](../how-to/use-ai-chat.md)

---

## Troubleshooting

### ❌ "Build failed" error

**Common causes:**
- Repository has no `docs/` folder (create one and add `.md` files)
- Markdown files have invalid syntax (check for unclosed code blocks)
- Private repo without permission (upgrade to Basic plan)

**Solution:** Fix the issue in GitHub and trigger a rebuild from the dashboard.

[SCREENSHOT PLACEHOLDER: Error message screen with "Rebuild" button and error details]

### ❌ "No pages appeared"

Your `docs/` folder might be empty. Add some Markdown files to it:

```
docs/
├── intro.md
├── getting-started.md
└── api-reference.md
```

Then commit and let DocuSapiens rebuild.

### ❌ "AI chat says 'I don't know'"

The AI only answers based on your docs. If the information isn't documented, it won't answer. Add more comprehensive docs!

---

## Next Steps

Now that your site is live:

1. **Learn more about organizing docs** — [Docusaurus Getting Started](../../docusaurus/README.md)
2. **Customize your site** — [Configure Sidebar](../how-to/configure-sidebar.md) (coming soon)
3. **Use advanced Markdown** — [MDX Features](../../docusaurus/how-to/use-mdx.md)
4. **See all dashboard features** — [Dashboard Reference](../reference/dashboard.md)

---

**Congrats! Your AI-powered docs site is live.** 🎉

Questions? Check [FAQs](../reference/faq.md) or contact support.
