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

![Dashboard home — Sites list after login](/img/dashboard-home.png)

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

![Sites page — grid of sites with status, URL and actions](/img/sites.png)

**Common Actions:**
- Create new site
- View site details
- Rebuild a site
- Delete a site
- Open site in new tab (go to live URL)

![Create New Site form](/img/site-create.png)

---


#### Build History
- **Recent Builds** — List of all deployments
- **Build Status** — ✓ Success / ❌ Failed / ⏳ In Progress
- **Build Duration** — How long the build took (e.g., "42 seconds")
- **Triggered By** — "Push to main" or "Manual rebuild"
- **View Logs** — Click a build to see detailed logs

![Build history table with status badges (Chat Ready / Queued), branch and timestamps](/img/site-builds.png)




---

### Chats

**URL:** `/chats`

View all chat conversations and interactions across your sites.

**Features (Coming Soon):**

- Chat history/transcript search
- Per-site chat analytics
- Export conversations
- Manage chat preferences

![Chats page — inbox with conversation list](/img/chats.png)

---

### Help Center

**URL:** `/help-center`

Self-service support and documentation.

**Includes:**
- FAQs
- Troubleshooting guides
- Links to full documentation (this docs-site)
- Video tutorials (when available)

![Help Center — Coming Soon page](/img/help-center.png)

---

### Settings

**URL:** `/settings`

Configure your account and preferences.

#### Account Settings
- **Email** — Your account email address
- **Username** — GitHub username (read-only)
- **Avatar** — Profile picture from GitHub
- **Joined** — Date you created your DocuSapiens account

![Settings — Profile: username and email fields](/img/settings.png)

#### GitHub Connection
- **Connected Account** — Your GitHub username
- **Status** — ✓ Connected
- **Repositories** — Number of accessible repos
- **Reconnect** — Re-authorize GitHub access if needed
- **Disconnect** — Revoke DocuSapiens access to GitHub

![Settings — Appearance: font selector and light/dark theme toggle](/img/settings-appearance.png)

#### Notification Preferences (Coming Soon)
- Email on failed builds
- Email on successful deployments
- Chat interaction alerts

#### API Keys (Future)
- Generate API keys for webhooks/integrations
- Revoke keys

#### Danger Zone
- **Delete Account** — Permanently delete your account and all sites



---

### Upgrade / Billing

**URL:** `/upgrade`

View your current plan and upgrade options.

#### Current Plan
- **Plan Name** — Free / Basic / Premium
- **Status** — Active
- **Renewal Date** — When your next billing period starts
- **Usage** — Current usage vs limits (sites, chat requests, storage)

![Billing — credit balance and transaction history](/img/billing.png)

#### Plan Comparison
- **Free Plan** — 0€/month, unlimited sites, public repos
- **Basic Plan** — 10€/month, private repos, more AI chat
- **Premium Plan** — Custom pricing, SLA support, analytics

![Billing — Top Up Credits button and transaction list](/img/billing.png)

#### Upgrade Button
- Click to upgrade from Free to Basic (or higher)
- Enter payment information
- Subscription begins immediately

![Billing — credit top-up flow](/img/billing.png)

---

### Users (Organization / Team)

**URL:** `/users` (if using organization accounts)

Manage team members and permissions.

**Coming Soon:**
- Add team members
- Set permissions per site
- Remove members
- View team activity log



---

### Tasks

**URL:** `/tasks`

Track ongoing builds and tasks.

**Shows:**
- Currently building sites
- Queued builds
- Recent completed tasks
- Estimated completion time



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
