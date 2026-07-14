# Time, Cost and ROI Control

## Purpose

Measure the actual economic performance of the course using labour time, cash expenditure and realised net contribution. The USD 99 indicative list price is a marketing input; it is not treated as revenue until platform payout data confirms the amount received.

## Time capture standard

Log time in `data/time-log.csv` using:

- date;
- contributor;
- issue number;
- milestone;
- activity category;
- planned hours;
- actual hours;
- approved cost rate;
- calculated labour cost;
- evidence or output link;
- notes.

Record time in increments of 0.25 hours. Time without an issue reference is unallocated project cost and must be corrected during the weekly review. Planned effort is managed in `data/vetted-backlog.json`; actual effort is managed in the time log.

## Vetted initial production and launch effort

| Workstream | Planned hours |
|---|---:|
| Governance, access and project controls | 13.5 |
| Market validation, architecture, rights and platform readiness | 22.0 |
| Module script and content-pack development | 24.0 |
| Slides, workbook, assessments and learner support | 19.0 |
| Recording preparation, test video and delivery | 16.5 |
| Editing, captions, export, inventory and backup | 10.0 |
| QA, proofing, accessibility, compliance and pilot review | 12.0 |
| Udemy listing, upload, review and publication evidence | 6.5 |
| Launch creative, campaign execution and analytics setup | 4.0 |
| **Total vetted baseline** | **127.5** |

The baseline covers initial work through launch control. It excludes 30-, 60-, 90- and 180-day review effort, ongoing learner support, later content maintenance and paid media beyond the approved initial direct-cost assumption.

## Baseline reconciliation rule

The 127.5-hour baseline must equal the sum of all non-epic tasks in milestones M0–M6 in `data/vetted-backlog.json`. Any change to a task estimate must update:

1. the task register;
2. the issue body after synchronisation;
3. this workstream summary when the allocation changes materially;
4. `data/roi-assumptions.csv`;
5. the approved change record.

## Core formulas

```text
Labour investment = actual hours × approved blended hourly cost
Initial investment = labour investment + direct cash costs
Net contribution per enrolment = realised platform payout + attributable upsell margin - refunds - variable delivery cost
Break-even enrolments = initial investment ÷ net contribution per enrolment
ROI % = (cumulative net contribution - initial investment) ÷ initial investment × 100
Time-to-break-even = publication date to date cumulative net contribution first equals initial investment
```

## Vetted scenario model

The current illustrative model uses:

- 127.5 planned hours;
- R750 blended opportunity cost per hour;
- R15,000 direct cash costs;
- R110,625 initial investment.

| Scenario | Net contribution per enrolment | Break-even enrolments | Planning target |
|---|---:|---:|---:|
| Conservative | R150 | 738 | 4 Jun 2027 |
| Base | R350 | 317 | 4 Mar 2027 |
| Upside | R700 | 159 | 4 Dec 2026 |

These are planning scenarios, not sales forecasts. Replace the illustrative hourly cost, direct cost and contribution inputs with approved and realised values. The 4 December 2026 ROI review is a mandatory validation date; it does not imply that break-even must have occurred by then.

## Commercial checkpoints

### Pre-production

Approve:

- maximum initial hours;
- blended labour rate;
- direct cash budget;
- minimum viable quality and platform controls;
- target net contribution per enrolment;
- scenario break-even dates;
- attribution and cost-allocation rules.

### Publication

Capture:

- actual production hours through publication;
- actual direct costs;
- final runtime and lecture count;
- actual initial investment;
- approved launch budget;
- public course URL and publication timestamp.

### 30 days — 4 October 2026

Review enrolments, realised payout, refunds, ratings, review themes, engagement indicators, learner questions, campaign attribution and urgent defects. Refresh the ROI forecast.

### 60 days — 3 November 2026

Review channel efficiency, review velocity, support effort, content friction, landing-page performance and progress to break-even. Approve controlled optimisation experiments.

### 90 days — 3–4 December 2026

Reconcile actual time, cash costs, platform payout, refunds and variable costs. Calculate realised ROI and break-even status. Approve continue, optimise, bundle, re-record, reprice or retire.

### 180 days — 4 March 2027

Review content currency, links, learner feedback, platform rules, market position, pricing assumptions, cumulative contribution and maintenance burden. Approve the next lifecycle backlog and budget.

## ROI guardrails

- Do not count gross list value as revenue.
- Do not omit founder, instructor or reviewer time because it was not invoiced.
- Separate initial production cost from recurring support, optimisation and maintenance cost.
- Attribute campaign cost and payout to the correct source where data permits.
- Record refunds, chargebacks and variable platform costs as negative contribution.
- Treat cross-sell, consulting and enterprise leads as secondary value and report them separately from course revenue.
- State data cutoffs, currency assumptions and unavailable platform data.
- Obtain independent review of the 90-day financial model before the lifecycle decision.
