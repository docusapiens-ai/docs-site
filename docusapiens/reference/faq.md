# Frequently Asked Questions

Answers to common questions about DocuSapiens.

---

## Getting Started

### Q: How does DocuSapiens work?

**A:** Connect a GitHub repository → DocuSapiens automatically builds a Docusaurus site → Your docs are live at `<subdomain>.docusapiens.ai` along with an AI chat assistant.

See [What is DocuSapiens?](../explanation/what-is-docusapiens.md) for more details.

### Q: Do I need to know Docusaurus to use DocuSapiens?

**A:** No. We handle all the Docusaurus complexity. Just have Markdown files in a `docs/` folder, and you're done. You don't need to configure or understand Docusaurus.

### Q: What do I need to get started?

**A:** 
1. A GitHub account
2. A repository with Markdown files in a `docs/` folder
3. 5 minutes to connect and deploy

See [Getting Started Tutorial](../tutorials/getting-started.md).

### Q: How long does deployment take?

**A:** Your site goes live in **30-60 seconds**. AI chat training happens in parallel, also 30-45 seconds.

### Q: Is my site live immediately after creating it?

**A:** Yes. Once the build completes (usually ~45 seconds), your site is live and publicly accessibleat `https://<subdomain>.docusapiens.ai`.

---

## Features & Capabilities

### Q: Can I customize the Docusaurus theme?

**A:** Not yet. We're working on a configuration UI where you'll be able to customize:
- Colors and branding
- Navbar and footer
- Sidebar behavior
- Plugins

For now, you get the clean, default Docusaurus theme which works great for most projects.

### Q: Can I change my subdomain after creating a site?

**A:** Not yet. To use a different subdomain, create a new site. We're adding subdomain management soon.

### Q: Can I use a custom domain (yourcompany.com)?

**A:** Coming soon! We're adding CNAME support so you can point `docs.yourcompany.com` to your DocuSapiens site.

### Q: Does DocuSapiens support multiple versions of documentation?

**A:** Not yet in the UI, but it's on our roadmap. You can manually create versioned docs in your folder structure for now.

### Q: Can I have multiple sites?

**A:** Yes! Unlimited. Create a new site for each GitHub repository.

---

## GitHub Integration

### Q: Which repositories can I use?

**A:** During Alpha, we support:
- ✅ Public repositories (all access levels)
- ❌ Private repositories (available in Basic plan when we exit Alpha)

### Q: What permissions does DocuSapiens need?

**A:** DocuSapiens needs GitHub OAuth permission to:
- ✅ Read your repository contents
- ✅ List your repositories
- ✅ Access your email address
- ❌ **Never** — modify code, delete repos, or access other accounts

### Q: How does GitHub sync work?

**A:** DocuSapiens adds a webhook to your repository. When you push to the selected branch:
1. GitHub notifies DocuSapiens (instant)
2. DocuSapiens fetches your latest docs (< 5 seconds)
3. Builds the site (30-60 seconds)
4. Deploys live

**Result:** Your changes go live within 1-2 minutes of pushing to GitHub.

### Q: Can I disconnect DocuSapiens from GitHub?

**A:** Yes. Go to [GitHub Settings → Applications](https://github.com/settings/applications) and revoke DocuSapiens' access. Your deployed site becomes inactive.

### Q: What branch does DocuSapiens deploy from?

**A:** By default, your repository's default branch (usually `main`). You can change it in site settings to any branch: `main`, `develop`, `production`, etc.

### Q: Can I deploy multiple branches as separate sites?

**A:** Yes. Create separate sites:
- Site 1 → deploy from `main`
- Site 2 → deploy from `develop` or `staging`

Each gets its own URL and AI chat.

---

## Documentation & Content

### Q: Where should my docs be located?

**A:** By default, in a `docs/` folder in your repository root:

```
your-repo/
├── docs/           ← DocuSapiens looks here
│   ├── intro.md
│   ├── guide1.md
│   └── folder/
│       └── guide2.md
└── README.md
```

You can change the folder path in site settings.

### Q: What file formats does DocuSapiens support?

**A:** 
- ✅ Markdown (`.md`)
- ✅ MDX (`.mdx`) — Markdown with React components
- ❌ Plain text (`.txt`)
- ❌ Word (`.docx`)
- ❌ Google Docs

See [Using MDX](../../docusaurus/how-to/use-mdx.md) for advanced features.

### Q: Can I use images in my docs?

**A:** Yes. Include them in your `docs/` folder:

```
docs/
├── intro.md
├── images/
│   ├── screenshot1.png
│   └── screenshot2.png
```

Reference them in Markdown:
```markdown
![Alt text](./images/screenshot1.png)
```

### Q: Can I use HTML in Markdown?

**A:** Partial. Standard HTML tags work:
```html
<p>This works</p>
<iframe src="..."></iframe>
```

But it's better to use Markdown or MDX for component support.

### Q: How do I organize my docs?

**A:** Use the Diátaxis framework:
- **Tutorials** — Step-by-step learning
- **How-to Guides** — Task-oriented
- **Reference** — Technical specs
- **Explanation** — Understanding & concepts

See [Docusaurus Getting Started](../../docusaurus/tutorials/getting-started.md).

### Q: Can I have different docs for different audiences?

**A:** Not yet built-in. You can organize folders by audience, but there's no role-based access. Everyone accessing the site sees all docs.

---

## AI Chat

### Q: How is the AI Chat different from regular ChatGPT?

**A:** Our AI uses **Retrieval Augmented Generation (RAG)**:
- ✅ Answers only from your docs (no hallucinations)
- ✅ Every answer is cited with links to source docs
- ✅ Always current (retrains with every deploy)
- ✅ Never uses your docs to train public models

See [How the AI Chat Works](../explanation/ai-chat.md).

### Q: Does the AI hallucinate?

**A:** No. It's built on RAG (closed-loop). If your docs don't answer a question, the AI says "I don't find that in your documentation" instead of making something up.

### Q: Can I use my own AI model?

**A:** Not yet. We're using OpenAI's models, optimized for accuracy on your docs.

### Q: Where is my conversation data stored?

**A:** 
- Conversations stored on secure servers (encrypted)
- Deleted after 30 days of inactivity
- Never used to train public models
- Only visible to you and DocuSapiens staff (upon request)

### Q: Can users disable the AI chat on my site?

**A:** Coming soon. You'll be able to toggle the chat on/off per site.

### Q: Does the AI support multiple languages?

**A:** Yes. If your docs are multilingual, the AI handles multiple languages automatically.

### Q: Can I see analytics on what users ask?

**A:** Coming soon. We're building an analytics dashboard showing:
- Popular questions
- Unanswered topics
- Chat satisfaction ratings

### Q: Does the AI support file attachments?

**A:** Not yet. Planned for future releases.

---

## Performance & Reliability

### Q: How fast is my deployed site?

**A:** Very fast.
- Page load time: < 1 second (global CDN)
- Search: < 100ms (local index)
- Chat response: 2-5 seconds (AI generation)

### Q: Is there an uptime SLA?

**A:** During Alpha, no formal SLA. Free & Basic plans: best-effort. Premium (coming): 99.9% uptime guarantee.

### Q: What happens if DocuSapiens goes down?

**A:** Your deployed site remains live (it's static HTML on Google's infrastructure). Chat might be unavailable during outages.

### Q: How large can my docs be?

**A:** 
- Free plan: 100 MB per site
- Basic plan: 500 MB per site
- Premium plan: Unlimited

This is plenty for most projects (typical docs are 10-50 MB).

### Q: What's the maximum number of pages I can have?

**A:** Unlimited. We've tested up to 10,000+ pages without issues.

---

## Pricing & Billing

### Q: Is DocuSapiens free?

**A:** Yes, during **Alpha**. All features are free while we're building.

### Q: Will it always be free?

**A:** No. After Alpha, we'll introduce paid plans:
- **Free** — Public repos, limited AI chat
- **Basic** — €10/month, private repos, more AI
- **Premium** — Custom pricing, SLA, enterprise features

But you'll keep free access to all Alpha features.

### Q: Can I cancel anytime?

**A:** Yes, no contracts or lock-in. Cancel your subscription anytime.

### Q: Are there overage fees?

**A:** No overage fees (yet). Rates are capped per plan. If you hit limits, chat is rate-limited but continues working.

### Q: Do you offer educational discounts?

**A:** Not officially yet, but we're open to it. Email support@docusapiens.ai.

See [Plans & Pricing](./plans.md) for full details.

---

## Security & Privacy

### Q: Is my documentation private?

**A:** 
- **Public repos:** Your site is public (like your GitHub repo)
- **Private repos:** Requires authentication (coming in Basic plan)
- **AI chat:** Conversations are private to your session

### Q: Will my docs be used to train AI models?

**A:** No. Your documentation is never used to train public AI models. Only your own chatbots are trained on your docs.

### Q: Is the connection encrypted?

**A:** Yes, HTTPS/TLS everywhere:
- Your site: HTTPS only
- API calls: encrypted
- Chat conversations: encrypted in transit

### Q: Do you store my GitHub token?

**A:** We store an OAuth token (from GitHub) to pull your docs on rebuild. It's encrypted at rest and only used to access your repo.

### Q: Can DocuSapiens access my source code?

**A:** No. We only read files in the `docs/` folder. Source code (src/, lib/, etc.) is never accessed or indexed.

### Q: What if I have secrets in my docs?

**A:** Remove them before deploying. If secrets are in your docs, they'll be indexed and searchable by the AI (and humans if repo is public).

**Best practice:** Never commit secrets to git (no matter what). If you accidentally did, docs should not contain them.

---

## Support & Help

### Q: How do I get help?

**A:** 
- **These docs** — [Full documentation at docusapiens.ai/docs](/)
- **FAQs** — You're reading it!
- **GitHub Issues** — [Report bugs](https://github.com/docusapiens-ai/docs-site/issues)
- **Email** — support@docusapiens.ai (response in 24-48h)
- **[Discord Community](https://discord.gg/docusapiens)** — Community support (coming soon)

### Q: How do I report a bug?

**A:** 
1. Check if it's already reported on [GitHub Issues](https://github.com/docusapiens-ai/docs-site/issues)
2. If not, create a new issue with:
   - Description of the problem
   - Your site name (if relevant)
   - Screenshots (if applicable)
3. We typically respond within 24 hours

### Q: What if my build keeps failing?

**A:** Check the build logs in your dashboard for details. Common issues:
- Markdown syntax error — check code blocks
- Invalid frontmatter — check YAML at top of file
- `docs/` folder missing — create it or update path in settings

See [Troubleshooting](../how-to/rebuild-site.md#troubleshooting) guides.

### Q: Can I request a new feature?

**A:** Absolutely. Email us at support@docusapiens.ai with your idea. We read every suggestion.

---

## Account & Management

### Q: Can I have multiple accounts?

**A:** Technically yes, but it's not recommended. One GitHub account = one DocuSapiens account.

### Q: Can I invite team members?

**A:** Team management is coming soon. For now, only the account owner can deploy/manage sites.

### Q: How do I delete my account?

**A:** Go to [Settings → Danger Zone → Delete Account]. This:
- ✅ Deletes your DocuSapiens account
- ✅ Removes all your deployed sites
- ❌ Does **not** delete your GitHub repos or documentation

### Q: What if I forgot my password?

**A:** DocuSapiens doesn't use passwords. We use GitHub OAuth. If you lost GitHub access:
1. Recover your GitHub account at [github.com/password_reset](https://github.com/password_reset)
2. Sign back into DocuSapiens with your GitHub account

---

## Comparison & Alternatives

### Q: How is DocuSapiens different from alternatives?

**A:** 

| Feature | DocuSapiens | GitBook | ReadTheDocs | Notion |
|---------|-----------|---------|-----------|--------|
| Open source | ✅ | ✗ | ✅ | ✗ |
| Markdown native | ✅ | Partial | ✅ | ✗ |
| AI chat | ✅ | ✅ | ✗ | ✅ |
| GitHub sync | ✅ | ✅ | ✅ | ✗ |
| Self-hosted | ✅ (coming) | ✗ | ✅ | ✗ |
| No config needed | ✅ | ✅ | ✗ | ✅ |
| Free tier | ✅ | Limited | ✅ | Limited |
| Price | Free/€10/mo | $10+/mo | Free/$ | Free/$ |

### Q: Why should I choose DocuSapiens?

**A:** Best for developers who want:
- No configuration (GitHub Sync → Live)
- Markdown-native workflow
- AI-powered chat trained on their actual docs
- Clean, open-source Docusaurus theme
- Affordable or free pricing

---

## Still Can't Find Your Answer?

- Check [DocuSapiens Explanation](../explanation/) for deeper dives
- Read [Getting Started Tutorial](../tutorials/getting-started.md)
- [Email support](mailto:support@docusapiens.ai)
- [Join Discord community](https://discord.gg/docusapiens) (coming soon)

---

**We're here to help!** No question is too small.
