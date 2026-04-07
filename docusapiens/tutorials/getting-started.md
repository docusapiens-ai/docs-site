# Getting Started with DocuSapiens

## What You'll Learn

By the end of this tutorial, you will:
- Create a DocuSapiens account with GitHub
- Connect your first GitHub repository
- Deploy your documentation site
- Ask questions using the integrated AI chat
- Publish updates by triggering a rebuild

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

![Página de login de DocuSapiens](/img/dashboard-home.png)

### 1.2 Click "Sign in with GitHub"

Click the blue button labeled "Sign in with GitHub".

You'll be redirected to GitHub's authorization page.

### 1.3 Authorize DocuSapiens

GitHub will ask for permission to:
- Access your email address
- List your repositories
- Read repository contents
- (No permission to delete or modify your code)

Click **"Authorize"** to continue.

### 1.4 Return to Dashboard

You'll be redirected back to DocuSapiens. 

**You should see** the main dashboard with a welcome message and an empty sites list.

![Dashboard principal tras iniciar sesión](/img/sites.png)

---

## Step 2: Create Your First Site

### 2.1 Click "Create New Site" or "+New Site"

You should see a button to create a new site. Click it.

![Botón Create Site en la página de Sites](/img/sites.png)

### 2.2 Select Your Repository

A modal or page will appear showing your GitHub repositories.

**You should see:**
- A list of your repositories
- A search box to filter repositories
- Repositories labeled as "Public" or "Private"

Select the repository containing your Markdown documentation (must have a `docs/` folder).

![Formulario de creación de nuevo site](/img/site-create.png)

### 2.3 Choose a Site Name

Enter your desired site name. Your site will be available at:

```
https://<site-name>.docusapiens.site
```

**Rules:**
- Only lowercase letters, numbers, and hyphens
- Must be unique (not already taken)
- 3-50 characters

Example: `my-project`, `awesome-docs`, `company-support`

![Campo de nombre del site en el formulario de creación](/img/site-create.png)

### 2.4 Select Branch (Optional)

Choose the branch to deploy from (defaults to your repository's default branch, usually `main`).

If you want to deploy only docs from a specific branch (e.g., `production`), select it here.

![Formulario de creación mostrando el campo Branch](/img/site-create.png)

### 2.5 Click "Create Site"

Click the **Create Site** button.

![Formulario de creación completo con el botón Create Site](/img/site-create.png)

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

![Historial de builds mostrando estados Chat Ready y Queued](/img/site-builds.png)

### 3.2 Build Complete

Once successful, you'll see:

**Status:** "Build Successful ✓"  
**Site URL:** `https://<site-name>.docusapiens.site`  
**AI Chat Status:** "Ready"

![Build completado con estado Chat Ready](/img/site-builds.png)

---

## Step 4: Visit Your Live Site

### 4.1 Click "Visit Site"

Click the **Visit Site** button or copy the URL from the dashboard.

![Sites con URL y botón Visit](/img/sites.png)

### 4.2 Explore Your Documentation

Your site should load with:

- ✅ **Left sidebar:** Your docs structure (folders and page titles)
- ✅ **Main content area:** The content from your Markdown files
- ✅ **Search bar:** At the top (full-text search of all docs)
- ✅ **AI Chat widget:** Bottom-right corner (look for a chat icon)
- ✅ **Dark mode toggle:** Top-right corner



### 4.3 Navigate Your Docs

Click on different pages in the sidebar to verify all your Markdown files were imported correctly.

**You should see:**
- All your `.md` files converted to web pages
- Proper formatting (headings, code blocks, links)
- Images displaying correctly (if you have any)



---

## Step 5: Use the AI Chat

### 5.1 Open the Chat Widget

Look for a chat icon in the bottom-right corner. Click it.



### 5.2 Ask a Question

Type a question about your documentation. For example:

```
"What does this project do?"
"How do I install it?"
"What are the main features?"
```

Press Enter or click Send.

![Sección Chats del dashboard](/img/chats.png)

### 5.3 Get an AI Answer

The AI will respond with an answer based on your documentation.

**You should see:**
- A conversational response
- Citations showing which docs were used (clickable links)
- Relevant code examples or quotes from your docs

![Bandeja de entrada de Chats](/img/chats.png)

### 5.4 Follow-up Questions

Ask a follow-up question. The AI understands conversation context.

Example:
```
User: "How do I install it?"
AI: [answer with steps and links]

User: "Will that work on Windows?"
AI: [understands "that" refers to the installation method, gives Windows-specific answer]
```



---

## Step 6: Make an Update

### 6.1 Edit a Doc in GitHub

Go to your GitHub repository. Edit one of your Markdown files:

1. Click on a `.md` file in your `docs/` folder
2. Click the edit (pencil) icon
3. Make a small change (e.g., add text, fix typo)
4. Click "Commit changes"



### 6.2 Commit Your Changes

Add a commit message (e.g., "Update documentation") and click **Commit changes**.



### 6.3 Trigger a Rebuild

Now go back to the DocuSapiens dashboard and trigger a rebuild to publish your changes:

1. Click on your site
2. Click **"Rebuild"**
3. Wait ~45 seconds for the build to complete

![Historial de builds con el botón New Build](/img/site-builds.png)

**Build status progresses through:**
1. Fetching changes
2. Building site
3. Training AI
4. Complete

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
https://<site-name>.docusapiens.site
```

with:
- Your team
- Open-source community
- Customers
- Colleagues

![Lista de sites con URL y botón Visit](/img/sites.png)

### 7.2 Embed the Chat

You can also embed the AI chat on external pages. [See integration guide →](../how-to/use-ai-chat.md)

---

## Troubleshooting

### ❌ "Build failed" error

**Common causes:**
- Repository has no `docs/` folder (create one and add `.md` files)
- Markdown files have invalid syntax (check for unclosed code blocks)

**Solution:** Fix the issue in GitHub and trigger a rebuild from the dashboard.

![Historial de builds — estado Queued indica build fallido o en espera](/img/site-builds.png)

### ❌ "No pages appeared"

Your `docs/` folder might be empty. Add some Markdown files to it:

```
docs/
├── intro.md
├── getting-started.md
└── api-reference.md
```

Then commit and trigger a rebuild from the dashboard.

### ❌ "AI chat says 'I don't know'"

The AI only answers based on your docs. If the information isn't documented, it won't answer. Add more comprehensive docs!

---

## Next Steps

Now that your site is live:

1. **Learn more about writing docs** — [Writing Documentation Guide](../../writing-docs/README.md)
2. **Rebuild your site** — [Rebuild Your Site](../how-to/rebuild-site.md)
3. **How the AI chat works** — [AI Chat Explained](../explanation/ai-chat.md)

---

**Congrats! Your AI-powered docs site is live.** 🎉

Questions? Check [FAQs](../reference/faq.md) or contact support.
