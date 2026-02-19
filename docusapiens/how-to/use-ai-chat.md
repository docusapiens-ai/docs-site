# How to Use the AI Chat

## Goal

Learn how to ask questions and get answers from your documentation using the integrated AI chat assistant.

---

## Prerequisites

- A deployed DocuSapiens site
- Access to the live site URL

---

## Finding the Chat Widget

### On Your Documentation Site

The AI chat widget appears in the **bottom-right corner** of any DocuSapiens site.

Look for:
- A **chat bubble icon** 💬
- Or a **"Ask about these docs"** button
- Typically in the bottom-right corner of the page

[SCREENSHOT PLACEHOLDER: DocuSapiens site screenshot with chat widget icon highlighted in bottom-right corner with arrow pointing to it]

### Accessing the Chat

Click the chat icon to open the chat interface.

[SCREENSHOT PLACEHOLDER: Chat widget expanding from closed state, showing:
- Chat window opening
- Input field at bottom
- "Start typing..." placeholder text
- Close button (X) at top]

---

## Asking Your First Question

### Step 1: Type Your Question

Click in the **message input field** at the bottom of the chat.

Type your question in natural language:

```
What is this project?
How do I install this?
What are the main features?
How do I authenticate users?
Can I use this with Windows?
```

[SCREENSHOT PLACEHOLDER: Chat input field with example question typed in: "How do I get started?"]

Note: Questions don't need to be perfectly phrased. The AI understands conversational language:

✅ Good questions:
- "how do you set it up?"
- "what's the API endpoint for users?"
- "where can i find the authentication docs?"

❌ Not helpful:
- Single words ("setup")
- Off-topic questions (answered by: "I don't find that in your docs")

### Step 2: Send the Question

Press **Enter** on your keyboard, or click the **Send button** (usually a paper plane icon ✈️).

[SCREENSHOT PLACEHOLDER: Chat showing sent message from user highlighted, message appearing in chat bubble on the left side]

### Step 3: Read the AI Response

The AI generates an answer in 3-5 seconds.

**You should see:**

[SCREENSHOT PLACEHOLDER: Full chat conversation showing:
- User message on the left
- AI response on the right
- Citation links below the response (blue, underlined) showing source docs
- Example: "See also: Getting Started Guide → API Reference →"]

The response will include:
- **Natural language answer** — The actual information from your docs
- **Code examples** — If relevant (extracted from your docs)
- **Links/Citations** — Clickable links to the exact pages used

### Step 4: Click Links to Source Docs

The AI shows which docs it used to answer your question.

Click any cited link to:
- Read the full context
- See related pages
- Access more detailed information

[SCREENSHOT PLACEHOLDER: Citation links highlighted in blue, user clicking one, link opening new tab/page to the actual documentation page]

---

## Advanced Question Techniques

### Follow-up Questions

The chat remembers context. Ask follow-ups naturally:

```
You: "How do I install this?"
AI: [installation steps for Linux]

You: "What about Windows?"
AI: [understands "about Windows" = same installation steps but for Windows]
```

[SCREENSHOT PLACEHOLDER: Multi-message conversation showing:
1. Initial question and answer
2. Follow-up question
3. AI understanding context and answering follow-up]

### Specific Questions

Be specific for more relevant answers:

| Generic | Better |
|---------|--------|
| "How do I authenticate?" | "How do I authenticate with GitHub OAuth?" |
| "Tell me about configuration" | "How do I configure the database connection?" |
| "What's an API?" | "What's the API endpoint for searching users?" |

### Multi-part Questions

Ask about multiple things (the AI will address each):

```
"How do I install this, and what are the system requirements?"
```

The AI will answer both parts in a single response.

---

## Understanding AI Responses

### Citations and Sources

Every answer includes **source citations**:

```
"You can configure the app by editing src/config.js:

[Source: Configuration Guide →]  [See Also: Setup Tutorial →]"
```

Click the citation to see the exact paragraph from your docs.

[SCREENSHOT PLACEHOLDER: Answer with multiple citation links, one being hovered/highlighted, showing tooltip with doc title]

### "I don't have that in your docs"

If the AI can't answer, it will say so:

```
User: "Is this compatible with Python 2?"
AI: "I don't find information about Python 2 compatibility in your 
documentation. You might want to check the compatibility guide or 
contact support."
```

**This is good!** It means the AI won't make up answers.

---

## Chat Features

### Clear Chat History

To start fresh, look for a **"Clear"** or **"New Chat"** button:

[SCREENSHOT PLACEHOLDER: Chat settings menu with "Clear chat" option highlighted]

This clears only your current session (doesn't affect your docs).

### Close the Chat

Click the **X button** or click outside the chat to close it.

Your conversation history is saved for 30 days.

### Resize the Chat

Most chat widgets can be resized by dragging the edges:

[SCREENSHOT PLACEHOLDER: Chat widget with resize handle visible at corner, user dragging it to make larger/smaller]

---

## Practical Use Cases

### For Users / Customers

```
Q: "I got an error: 'Connection refused'. What do I do?"
A: [links to troubleshooting guide, explains the error]

Q: "What API endpoints do you offer?"
A: [lists endpoints with descriptions, links to API docs]

Q: "How do I export my data?"
A: [step-by-step instructions from docs]
```

### For Developers / Integrators

```
Q: "What's the correct format for the JSON request body?"
A: [shows example from API reference, explains each field]

Q: "Does it support webhooks?"
A: [explains webhook support, links to webhook documentation]

Q: "How do I handle rate limiting?"
A: [explains limits from docs, shows retry logic examples]
```

### For Internal Teams

```
Q: "What's the process for submitting a PR?"
A: [links to contribution guidelines]

Q: "How do I run tests locally?"
A: [command and explanation from getting started guide]

Q: "What's the architecture of the system?"
A: [explains from architecture docs, links to diagram]
```

---

## Tips for Better AI Responses

### ✅ Do This

- Ask in plain English (not technical jargon if you don't need to)
- Be specific about what you're trying to do
- Ask follow-ups if you need clarification
- Click citations to verify answers against actual docs
- Ask "why" questions to understand concepts

### ❌ Don't Do This

- Ask questions about things not documented
- Expect the AI to know about undocumented features
- Ask very vague questions ("tell me about this")
- Trust answers without checking citations
- Share secret information in chat (though it's encrypted)

---

## Privacy & Security

### Your Conversations

- ✅ Conversations are **private** to you
- ✅ Not used to train public AI models
- ✅ Deleted after **30 days** of inactivity
- ✅ Encrypted in transit (HTTPS)

### Your Documentation

- ✅ Only your `docs/` folder is indexed
- ✗ Never: Source code, config files, secrets
- ✓ Always: Remove secrets from docs before deploying

### Data Retention

Conversation history is stored:
- During active session: as long as you're chatting
- After closing: 30 days
- After 30 days of no activity: automatically deleted

---

## Troubleshooting

### ❌ Chat Widget Doesn't Appear

**Cause:** Chat is disabled or still training.

**Solution:** 
1. Wait a few seconds and refresh the page
2. Check if the site build is complete in the dashboard
3. Wait for "AI Status: Ready"

[SCREENSHOT PLACEHOLDER: Dashboard showing build complete with "AI Status: Ready ✓" in green]

### ❌ AI Gives Wrong Answer

**Cause:** Your documentation might be unclear or inaccurate.

**Solution:** 
1. Check the cited docs directly
2. Update your docs to be clearer
3. Rebuild the site so AI retrains

### ❌ Chat Doesn't Respond

**Cause:** Network issue or chat service temporarily down.

**Solution:**
1. Refresh the page
2. Try again in a few moments
3. Contact support if problem persists

### ❌ "Rate limit exceeded"

**Cause:** You've hit your plan's limit on chat requests.

**Solution:** 
1. Wait before asking more questions, or
2. Upgrade to a higher tier from [Pricing](../reference/plans.md)

---

## Next Steps

- **Deploy your site:** [Getting Started Tutorial](../tutorials/getting-started.md)
- **Update docs for better answers:** [Docusaurus Guide](../../docusaurus/README.md)
- **See all features:** [Dashboard Reference](../reference/dashboard.md)

---

**The AI chat is a powerful tool to help your users.** The better your documentation, the better the AI answers.

Questions? Check [FAQs](../reference/faq.md).
