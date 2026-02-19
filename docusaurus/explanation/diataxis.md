# The Diátaxis Framework

## What is Diátaxis?

**Diátaxis** (pronounced "die-uh-TAX-iss") is a **framework for structuring documentation**.

It's not about tools or technology. It's about **organizing your content** in a way that serves readers best.

**Simple idea:** Different readers need different things at different times.

---

## The Four Quadrants

Diátaxis divides documentation into four independent types, each serving a specific purpose:

```
                    Practical      │      Theoretical
                                   │
    Learning-oriented    TUTORIALS  │  EXPLANATIONS
                                   │
    ─────────────────────────────────────────────────
                                   │
    Task-oriented      HOW-TO GUIDES│  REFERENCE
                                   │
```

Each quadrant has a specific purpose and writing style.

---

## 1. Tutorials

### Purpose

**Learn by doing.** Step-by-step guides for beginners to get started and understand the basics.

### Characteristics

- ✅ **Learning-oriented** — Goal is to teach
- ✅ **Practical** — Hands-on, concrete steps
- ✅ **Beginner-focused** — No assumed knowledge
- ✅ **Complete** — Full working example by the end
- ✅ **Guided** — Author leads the way

### Writing Style

- Numbered steps (1, 2, 3...)
- Speak directly to the reader ("you")
- Explain **what** to do and **what you should see**
- Let the reader follow along without thinking
- No discussion of alternatives
- No skipping ahead

### Structure

```markdown
# Tutorial Title

## What You'll Learn

- Outcome 1
- Outcome 2
- Outcome 3

## Prerequisites

- Requirement 1
- Requirement 2

## Step 1: Something
1. Do this
2. Do that
3. You should see X

## Step 2: Next Thing
...

## Finished!

You've completed the tutorial. What's next?
```

### Examples

> "Getting Started with React"  
> "Your First GraphQL Query"  
> "Building Your First SaaS App"  

### When to Use Tutorials

- New users onboarding
- Introduction to major features
- Complete workflows for beginners
- "I want to learn this" reader

---

## 2. How-to Guides

### Purpose

**Accomplish a specific task.** Step-by-step instructions for experienced users who know what they're doing.

### Characteristics

- ✅ **Task-oriented** — Goal is to solve a problem
- ✅ **Practical** — Real-world solutions
- ✅ **Goal-driven** — Reader already knows what they want
- ✅ **Flexible** — Readers might skip steps or adapt
- ✅ **Experienced readers** — Assumes some knowledge

### Writing Style

- **Goal statement first** ("The task of this guide is to...")
- Prerequisites section clearly listed
- Numbered steps (can be skipped)
- Explain **why** alongside **what**
- Short explanations (not full learning)
- Mention alternatives and variations
- Link to related concepts

### Structure

```markdown
# How to [Do Something]

## Goal

The goal of this guide is to...

## Prerequisites

- Requirement 1
- Requirement 2

## Steps

### Step 1: [Subtask]
- Do this
- Do that

### Step 2: [Subtask]
- Do this
- Important note: ...

## Verification

Confirm success with: `command`

## Troubleshooting

### Problem X
Solution: ...

## See Also

- [Related Guide]
- [Reference]
```

### Examples

> "How to Authenticate Users with OAuth"  
> "How to Configure Auto-scaling"  
> "How to Set Up CI/CD Pipeline"  
> "How to Debug Performance Issues"  

### When to Use How-to Guides

- Solving a specific problem
- Completing a defined task
- "I want to DO this" reader
- Experienced users
- Procedures and workflows

---

## 3. Reference

### Purpose

**Look something up.** Technical specifications, API documentation, configuration options.

### Characteristics

- ✅ **Information-oriented** — Goal is to document facts
- ✅ **Structured** — Organized for quick lookup
- ✅ **Dry* — No narrative, just facts
- ✅ **Complete** — All options/fields documented
- ✅ **Accurate** — Must be precise and up-to-date

### Writing Style

- **No narrative** — Just facts
- **Tables** for option comparison
- **Code examples** for syntax
- **Schema definitions** for APIs
- **Parameters** clearly listed
- Minimal explanation (assume reader knows context)
- Easy scanning (headers, bold, code blocks)

### Structure

```markdown
# [Thing] Reference

## Syntax

```code
[syntax example]
```

## Parameters

| Parameter | Type | Purpose |
|-----------|------|---------|
| name | string | The name |
| age | number | The age |

## Examples

```code
[working example]
```

## Error Codes

| Code | Meaning |
|------|---------|
| 404 | Not found |
| 500 | Server error |

## See Also

- [Related Reference]
- [How-to Guide]
```

### Examples

> "API Reference"  
> "Configuration Options Reference"  
> "CLI Commands Reference"  
> "Database Schema Reference"  

### When to Use Reference

- Looking up specific information
- API documentation
- Configuration options
- "I want to LOOK UP this" reader
- Technical specifications
- Error codes and responses

---

## 4. Explanation

### Purpose

**Understand the concept.** Discuss why, tradeoffs, context, theory behind decisions.

### Characteristics

- ✅ **Understanding-oriented** — Goal is to teach concepts
- ✅ **Theoretical** — Why and how, not just steps
- ✅ **Narrative** — Story-like, exploratory
- ✅ **Flexible depth** — Can go deep into theory
- ✅ **Discussion** — Debates, tradeoffs, alternatives

### Writing Style

- **Why questions** — "Why does this work?"
- **Narratives** — Tell a story about the concept
- **Diagrams** — Visualizations of concepts
- **Historical context** — "This feature came from..."
- **Discuss tradeoffs** — "This approach has benefits X but costs Y"
- **Multiple perspectives** — Different viewpoints
- No step-by-step instructions (these are tutorials)

### Structure

```markdown
# [Concept] Explained

## What is [Concept]?

An explanation of what it is...

## Why [Concept]?

Why is this important? History? Problem it solves?

### How it Works

Diagrams, visualizations, flowcharts

### Benefits

- Benefit 1 because...
- Benefit 2 because...

### Trade-offs

This approach gains X but loses Y.

Alternative approaches:
- Approach A: better for _, worse for _
- Approach B: better for _, worse for _

## Further Reading

- [Related Concept]
- [How-to guide]
```

### Examples

> "How Microservices Architecture Works"  
> "Understanding OAuth and Security"  
> "Why We Chose React Over Vue"  
> "The CAP Theorem Explained"  

### When to Use Explanations

- Understanding concepts
- Architecture decisions
- Design decisions
- "I want to UNDERSTAND this" reader
- Background and context
- Historical perspective

---

## The Reader's Journey

Different readers have different needs at different times:

### A New User's Path

```
1. "What is this really?" → EXPLANATION
2. "Let me get started" → TUTORIAL  
3. "How do I do X?" → HOW-TO
4. "It says error X" → REFERENCE
5. "I want to understand why" → EXPLANATION
```

### An Experienced User's Path

```
1. "How do I accomplish Y?" → HOW-TO
2. "What's the syntax?" → REFERENCE
3. "Hmm, let me read about this" → EXPLANATION
4. "I need to learn the new way" → TUTORIAL (maybe)
```

**Good documentation serves both paths.**

---

## The Magic of Diátaxis

### Why It Works

1. **Clarity** — Authors know exactly what they're writing
2. **Consistency** — Readers know what to expect in each section
3. **Completeness** — All types of information are covered
4. **Scannability** — Readers can quickly find what they need

### The Problem Without Diátaxis

Without structure, docs become:

❌ **Confusing** — Is this a tutorial or reference?  
❌ **Inconsistent** — Different sections have different styles  
❌ **Incomplete** — Some information types are missing  
❌ **Hard to find** — Readers don't know where to look  

### Result

**Users give up and ask on Stack Overflow instead of reading your docs.**

With Diátaxis:

✅ **Clear** — Users find what they need quickly  
✅ **Consistent** — Predictable structure  
✅ **Complete** — All information types covered  
✅ **Successful** — Users solve their problems from docs  

---

## Applying Diátaxis to Your Docs

### Example: Building Documentation for a Library

#### Tutorials

> "Getting Started with GraphQL"
> "Your First Query"
> "Building Your First Mutation"

**Purpose:** New users learn the basics by doing.

#### How-to Guides

> "How to Paginate Results"  
> "How to Handle Errors"  
> "How to Monitor Performance"  
> "How to Debug Queries"  

**Purpose:** Solve specific problems.

#### Reference

> "Schema Reference" (all possible fields)  
> "Error Codes" (all possible errors)  
> "Type Definitions" (all types)  
> "Directives" (all directives)  

**Purpose:** Look up specifics.

#### Explanation

> "How GraphQL Works"  
> "Resolvers Explained"  
> "The GraphQL Type System"  
> "Why We Chose GraphQL Over REST"  

**Purpose:** Understand concepts.

---

## Diátaxis Best Practices

### ✅ Do This

- Clearly label each section with its type (Tutorial / How-to / Reference / Explanation)
- Keep types separate — don't mix tutorial and reference content
- Each page has **one primary purpose**
- Links between types are allowed (and encouraged)
- Build a table of contents organized by type

### ❌ Don't Do This

- Mix tutorial steps with conceptual discussion
- Put reference information in a tutorial
- Write a guide that's part-howto, part-reference (choose one)
- Link ambiguously ("See the guide" — which type?)
- Write "reference" that's actually tutorial instructions

### Start Small

You don't need comprehensive docs from day one:

1. **Start with tutorials** — Get people started
2. **Add how-to guides** — Help them accomplish things
3. **Add reference** — Document all details
4. **Add explanations** — Help them understand deeply

Each type of content serves a purpose. Build incrementally.

---

## Tools & Templates

We provide templates for each type:

- [Tutorial Template](../templates/tutorial-template.md) _(coming)_
- [How-to Template](../templates/howto-template.md) _(coming)_
- [Reference Template](../templates/reference-template.md) _(coming)_
- [Explanation Template](../templates/explanation-template.md) _(coming)_

---

## Learn More

- **Official Diátaxis:** [diataxis.fr](https://diataxis.fr) — The original framework (excellent read!)
- **Daniele Procida** — Creator of Diátaxis (inspiring talks on documentation)

---

## Putting It All Together

When DocuSapiens builds your site:

1. **You organize docs** using Diátaxis structure
2. **Docusaurus builds** a beautiful site from your Markdown
3. **Your users** can find anything they need quickly
4. **AI chat** answers questions based on all four types
5. **Everyone is happy** 🎉

---

## Next Steps

- **Start building docs:** [Getting Started Tutorial](../tutorials/getting-started.md)
- **Add a new doc:** [How to Add a Doc](../how-to/add-a-doc.md)
- **Reference all fields:** [Frontmatter Reference](../reference/frontmatter.md)

---

**Diátaxis transforms documentation from confusing to delightful.** Use it for your next project and watch your support requests drop.

Questions? Check [Diátaxis.fr](https://diataxis.fr) for the official resource.
