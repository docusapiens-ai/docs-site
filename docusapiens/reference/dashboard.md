# Dashboard Reference

this is a complete guide to every feature and page in the DocuSapiens dashboard.

---

## Dashboard Sections

### Home / Dashboard

**URL:** `/` (after login)

The main landing page after you sign in.

**Shows:**
- Quick stats (number of sites, last build, active users)
- Recent activity feed
- Links to quick actions ("Create Site", "View Sites", "Settings")
- Announcements or platform updates

[SCREENSHOT PLACEHOLDER: Dashboard home page showing welcome message, stats cards, recent activity list]

---

### Sites

**URL:** `/sites`

Manage all your deployed documentation sites.

**Features:**

- **Sites List** — View all sites with status, URL, last deployed time
- **+New Site** — Create a new site by connecting a GitHub repository
- **Site Card:** Click any site to see:
  - Full site details
  - Build history
  - Deployment settings
  - AI chat status
- **Search** — Find a specific site by name or URL
- **Filter** — Show only Active/Failed/Building sites

[SCREENSHOT PLACEHOLDER: Sites page showing grid/list of sites with status indicators, search bar, "+New Site" button]

**Common Actions:**
- Create new site
- View site details
- Rebuild a site
- Delete a site
- Open site in new tab (go to live URL)

---

### Site Details Page

**URL:** `/sites/:id`

View detailed information about a specific site.

**Sections:**

#### Site Overview
- **Site Name** — Usually the GitHub repo name
- **Status** — Active (green) / Building / Failed (red)
- **URL** — Clickable link to your live site
- **Last Deployed** — Timestamp of last build
- **Repository** — Link to the GitHub repo

[SCREENSHOT PLACEHOLDER: Site header showing site name, status badge, URL with copy button, last deployed timestamp]

#### Build History
- **Recent Builds** — List of all deployments
- **Build Status** — ✓ Success / ❌ Failed / ⏳ In Progress
- **Build Duration** — How long the build took (e.g., "42 seconds")
- **Triggered By** — "Push to main" or "Manual rebuild"
- **View Logs** — Click a build to see detailed logs

[SCREENSHOT PLACEHOLDER: Build history table with columns: Date, Status, Duration, Trigger, Actions (view/restore buttons)]

#### AI Chat Status
- **Status** — Ready ✓ / Training ⏳ / Error ❌
- **Last Trained** — When AI was last trained on your docs
- **Reindex Button** — Force re-index if out of sync

[SCREENSHOT PLACEHOLDER: AI chat status card showing ready status, training timestamp, reindex button]

#### Settings
- **Branch** — Which GitHub branch to deploy from
- **Docs Folder** — Path to documentation folder (default: `docs/`)
- **Subdomain** — The `.docusapiens.ai` domain
- **Save** —Apply any changes

[SCREENSHOT PLACEHOLDER: Settings form showing branch selector, docs folder input, read-only subdomain field]

#### Danger Zone
- **Delete Site** — Permanently remove the site (cannot be undone)

[SCREENSHOT PLACEHOLDER: Red danger zone section with delete button and warning text]

---

### Chats

**URL:** `/chats`

View all chat conversations and interactions across your sites.

**Features (Coming Soon):**

- Chat history/transcript search
- Per-site chat analytics
- Export conversations
- Manage chat preferences

[SCREENSHOT PLACEHOLDER: Chats page with empty state or sample chat list]

---

### Help Center

**URL:** `/help-center`

Self-service support and documentation.

**Includes:**
- FAQs
- Troubleshooting guides
- Links to full documentation (this docs-site)
- Video tutorials (when available)

[SCREENSHOT PLACEHOLDER: Help center page with FAQ accordion, search bar, category links]

---

### Settings

**URL:** `/settings`

Configure your account and preferences.

#### Account Settings
- **Email** — Your account email address
- **Username** — GitHub username (read-only)
- **Avatar** — Profile picture from GitHub
- **Joined** — Date you created your DocuSapiens account

[SCREENSHOT PLACEHOLDER: Account settings form showing email, username, profile picture, joined date]

#### GitHub Connection
- **Connected Account** — Your GitHub username
- **Status** — ✓ Connected
- **Repositories** — Number of accessible repos
- **Reconnect** — Re-authorize GitHub access if needed
- **Disconnect** — Revoke DocuSapiens access to GitHub

[SCREENSHOT PLACEHOLDER: GitHub section showing "Connected as @username", disconnect button]

#### Notification Preferences (Coming Soon)
- Email on failed builds
- Email on successful deployments
- Chat interaction alerts

#### API Keys (Future)
- Generate API keys for webhooks/integrations
- Revoke keys

#### Danger Zone
- **Delete Account** — Permanently delete your account and all sites

[SCREENSHOT PLACEHOLDER: Red danger zone with delete account button and warning]

---

### Upgrade / Billing

**URL:** `/upgrade`

View your current plan and upgrade options.

#### Current Plan
- **Plan Name** — Free / Basic / Premium
- **Status** — Active
- **Renewal Date** — When your next billing period starts
- **Usage** — Current usage vs limits (sites, chat requests, storage)

[SCREENSHOT PLACEHOLDER: Current plan card showing "Free Plan (Alpha)" with usage bars]

#### Plan Comparison
- **Free Plan** — 0€/month, unlimited sites, public repos
- **Basic Plan** — 10€/month, private repos, more AI chat
- **Premium Plan** — Custom pricing, SLA support, analytics

[SCREENSHOT PLACEHOLDER: Pricing table with three columns (Free/Basic/Premium), features listed, upgrade buttons]

#### Upgrade Button
- Click to upgrade from Free to Basic (or higher)
- Enter payment information
- Subscription begins immediately

[SCREENSHOT PLACEHOLDER: Upgrade plan CTA button, payment form below]

---

### Users (Organization / Team)

**URL:** `/users` (if using organization accounts)

Manage team members and permissions.

**Coming Soon:**
- Add team members
- Set permissions per site
- Remove members
- View team activity log

[SCREENSHOT PLACEHOLDER: Users page with empty state or sample team member list]

---

### Tasks

**URL:** `/tasks`

Track ongoing builds and tasks.

**Shows:**
- Currently building sites
- Queued builds
- Recent completed tasks
- Estimated completion time

[SCREENSHOT PLACEHOLDER: Tasks list showing active builds with progress bars, queue status]

---

## Key UI Elements

### Status Indicators

| Indicator | Meaning |
|-----------|---------|
| 🟢 Green / ✓ | Success / Ready / Active |
| 🔴 Red / ❌ | Failed / Error / Inactive |
| 🟡 Yellow / ⏳ | In Progress / Pending / Training |
| 🟦 Blue / i | Information / Building |

### Buttons and Actions

| Element | Purpose |
|---------|---------|
| **+New Site** | Create a new deployment |
| **Rebuild** | Manually trigger a build |
| **Visit Site** | Open the live site in browser |
| **Settings** | Configure site or account settings |
| **Save** | Apply changes to settings |
| **Delete** | Remove a site or account |
| **Reindex** | Retrain AI chat model |

### Breadcrumbs

Navigation path showing where you are:

```
Dashboard > Sites > My Project > Builds
```

Click any level to navigate back.

---

## Mobile Experience

The dashboard is responsive and works on mobile phones/tablets.

**Mobile differences:**
- Sidebar collapses into hamburger menu (☰)
- Sites shown in single column (not grid)
- Build history in compact view
- Large buttons for easier touch interaction

[SCREENSHOT PLACEHOLDER: Dashboard on mobile showing hamburger menu, single column layout]

---

## Keyboard Shortcuts (Future)

Coming soon:
- `Ctrl/Cmd + K` — Open command palette
- `Ctrl/Cmd + /` — Show keyboard shortcuts help
- Arrow keys — Navigate between sites

---

## Account Limits

### Free Plan

- **Sites:** Unlimited
- **Repositories:** Public only
- **Chat Requests:** Limited (fair-use)
- **Storage:** 100 MB docs per site
- **Build Time:** 30-60 seconds per build

### Basic Plan

- **Sites:** Unlimited
- **Repositories:** Public + Private
- **Chat Requests:** 10,000/month
- **Storage:** 500 MB docs per site
- **Build Time:** 30-60 seconds
- **Support:** Email (24-48hr response)

### Premium Plan

- **All of Basic, plus:**
- **Chat Requests:** Unlimited
- **Custom Branding:** Coming soon
- **Analytics:** Usage insights
- **SLA Support:** Priority (4hr response)

---

## See Also

- [Get Started Tutorial](../tutorials/getting-started.md)
- [Create a Site Guide](../how-to/connect-github-repo.md)
- [Manage Sites Guide](../how-to/manage-sites.md)
- [Plans & Pricing](./plans.md)

---

That's the complete dashboard reference. Everything you need is here!

Questions? Check [FAQs](./faq.md).
