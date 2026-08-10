# Growth Marketing Operating System

> A practical framework for turning market opportunity into measurable growth across demand generation, performance marketing, SEO, CRO, lifecycle, analytics and revenue.

## Why I built this

Growth marketing gets messy quickly.

Paid media can look efficient while lead quality is poor. SEO can grow traffic without creating commercial value. Demand generation can create attention without a clear path to pipeline. Dashboards can report everything and still help nobody make a decision.

I built this project around a simpler idea:

**Start with the business problem. Find the constraint. Use the right growth lever. Measure what happens next.**

This repository shows how I would structure that system for a fictional B2B SaaS company. The company and data are simulated. The frameworks, decisions and way of working are built around real growth problems.

This is not a list of channels.

It is a way to connect strategy, execution and measurement.

---

## The model

```text
Business Goal
      ↓
Market & ICP
      ↓
Segments & Accounts
      ↓
Demand Creation + Demand Capture
      ↓
Acquisition
      ↓
Conversion
      ↓
Pipeline / Customer
      ↓
Retention & Expansion
      ↓
Revenue
```

Across that journey, I use the disciplines that fit the problem:

**Performance Marketing · Demand Gen · ABM · SEO · CRO · Lifecycle · Analytics · SQL · Experimentation**

---

## The business case

For this project I use **FlowOps**, a fictional European B2B SaaS company entering a new growth phase.

### Starting point

- €8M ARR
- €15K average contract value
- Sales-assisted buying journey
- €300K annual growth marketing budget
- €3M marketing-influenced pipeline target
- Limited awareness in the target market
- Different buying behaviour across SMB, mid-market and enterprise accounts

The objective is not simply to generate more leads.

The objective is to build a repeatable growth system that identifies where the best commercial opportunity sits, creates and captures demand, improves conversion and gives Marketing and Sales a shared view of what is actually driving growth.

---

## How I think about growth

I use five questions to keep the work commercial.

### 1. Where is the opportunity?

Which markets, segments, accounts and use cases are worth pursuing?

### 2. What is stopping growth?

Is the constraint awareness, demand, traffic, conversion, lead quality, Sales follow-up, activation or retention?

### 3. Which lever can change it?

Paid media, SEO, ABM, content, partnerships, CRM, CRO or something else?

### 4. What should happen if we are right?

Every initiative starts with an expected behaviour or commercial outcome.

### 5. What do we do with the result?

**Scale. Improve. Kill.**

Reporting without a decision is just administration.

---

## Operating system

| Layer | Question | Main output |
|---|---|---|
| Strategy | What are we trying to change? | Growth model |
| ICP & Segmentation | Who should we win? | Priority segments |
| Demand & ABM | Where should we create or capture demand? | Growth plays |
| Performance | Where should budget go? | Investment decisions |
| SEO | Where can organic demand compound? | Search growth plan |
| CRO & Lifecycle | Where are we losing people? | Journey improvements |
| Analytics | What is actually happening? | Decision-ready analysis |
| Dashboard | What needs attention now? | Growth command centre |
| Experiments | What should we test next? | Prioritised backlog |

---

## Repository map

### [01 — Strategy](./01-strategy/)
Business context, growth model and how I translate a revenue target into a measurable marketing system.

### [02 — ICP & Segmentation](./02-icp-segmentation/)
ICP design, segment prioritisation and the logic used to decide where to focus.

### [03 — Demand Generation & ABM](./03-demand-generation-abm/)
Demand creation, demand capture, account prioritisation, buying groups and Sales alignment.

### [04 — Performance Marketing](./04-performance-marketing/)
Paid acquisition, funnel quality, CAC, channel economics and budget allocation.

### [05 — SEO & Organic Growth](./05-seo-organic/)
Technical foundations, search demand, content architecture and organic conversion.

### [06 — CRO & Lifecycle](./06-cro-lifecycle/)
Conversion paths, onboarding, nurture, activation and retention.

### [07 — Analytics & SQL](./07-analytics-sql/)
KPI architecture, funnel analysis and practical SQL used to answer growth questions.

### [08 — Looker Studio Framework](./08-looker-studio/)
A reusable dashboard architecture built around decisions rather than reporting volume.

### [09 — Experimentation](./09-experimentation/)
Hypothesis design, prioritisation and the scale / improve / kill loop.

### [10 — Growth Cadence](./10-growth-cadence/)
How I would run the system weekly, monthly and quarterly across Marketing and Sales.

---

## What I would measure

I separate metrics into four levels.

### Business

- Revenue
- ARR
- Pipeline
- Marketing-sourced pipeline
- Marketing-influenced pipeline
- CAC
- Payback

### Funnel

- Lead → qualified lead
- Qualified lead → opportunity
- Opportunity → customer
- Pipeline velocity
- Average deal value

### Acquisition

- Spend
- CPC
- CVR
- CPL
- Cost per qualified opportunity
- CAC
- Pipeline per € spent

### Demand signals

- Target-account engagement
- Branded search
- Direct traffic
- Organic non-brand growth
- Returning visitors
- Content engagement
- Buying-group activity

A metric only becomes useful when it changes a decision.

---

## Core principles

**Business first. Channels second.**

I do not start with “we should run LinkedIn Ads.” I start with the commercial problem and work backwards.

**Pipeline quality beats lead volume.**

Cheap leads are not cheap when they do not convert.

**Segments before personalisation.**

Understand which groups matter before creating expensive 1:1 activity.

**Demand creation and demand capture need each other.**

Only capturing existing demand eventually limits growth. Only creating awareness makes commercial impact difficult to prove.

**Measurement should lead to action.**

Every dashboard and review should help answer: what changed, why, and what are we doing next?

**Run and change at the same time.**

Protect what already works while continuously improving the system.

---

## Data

All datasets in `/data` are synthetic and exist only to demonstrate the analysis and frameworks in this repository.

No confidential company or customer information is used.

---

## Status

This repository is built as a living growth system. Individual modules will be expanded with analysis, dashboards, examples and experiments over time.
