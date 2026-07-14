# Time, Cost and ROI Control

## Purpose

Measure the actual economic performance of the course using labour time, cash expenditure and realised net revenue. The USD 99 list price is a marketing input; it is not used as revenue until actual payout data confirms it.

## Time capture standard

Log time in `data/time-log.csv` using:

- date;
- contributor;
- issue number;
- milestone;
- activity category;
- planned hours;
- actual hours;
- billable/internal classification;
- evidence or output link;
- notes.

Record time in increments of 0.25 hours. Time without an issue reference is treated as unallocated project cost and must be corrected during the weekly review.

## Baseline production effort

| Workstream | Planned hours |
|---|---:|
| Governance, research and architecture | 12 |
| Script development and content revision | 28 |
| Slides, workbook and learner resources | 20 |
| Assessments and practical activities | 8 |
| Recording preparation and delivery | 16 |
| Editing, captions and media exports | 14 |
| QA, proofing and pilot remediation | 7 |
| Udemy listing and publication | 2 |
| Launch marketing setup | 3 |
| **Total baseline** | **110** |

The baseline excludes ongoing learner support and post-launch optimisation. Scope changes must state the additional hours and expected commercial benefit.

## Core formulas

```text
Labour investment = actual hours × approved blended hourly cost
Initial investment = labour investment + direct cash costs
Net contribution per enrolment = platform payout + attributable upsell margin - variable delivery cost
Break-even enrolments = initial investment ÷ net contribution per enrolment
ROI % = (cumulative net contribution - initial investment) ÷ initial investment × 100
Time-to-break-even = publication date to date cumulative net contribution first equals initial investment
```

## Scenario model

Replace the example inputs in `data/roi-assumptions.csv` with approved rates and actual payout data.

| Scenario | Net contribution per enrolment | Break-even formula |
|---|---:|---|
| Conservative | R150 | Initial investment ÷ 150 |
| Base | R350 | Initial investment ÷ 350 |
| Upside | R700 | Initial investment ÷ 700 |

Example only: at 110 hours, a blended rate of R750/hour and R15,000 direct cash cost, initial investment is R97,500. Break-even is 650 enrolments at R150 net contribution, 279 at R350, or 140 at R700. These are planning scenarios, not forecasts.

## Commercial checkpoints

### Pre-production

Approve:

- maximum hours;
- blended labour rate;
- direct cash budget;
- minimum viable course quality;
- target net contribution per enrolment;
- target break-even date.

### Publication

Capture:

- actual production hours;
- actual direct costs;
- final runtime and lecture count;
- initial investment;
- approved launch budget.

### 30 days

Review impressions, landing-page conversion, enrolments, payout, refunds, ratings, completion and learner questions. Correct listing and early course friction.

### 60 days

Review cohort behaviour, campaign channels, review velocity, coupon performance and support effort. Decide whether to increase marketing or improve content.

### 90 days

Calculate realised ROI and time-to-break-even status. Approve continue, optimise, bundle, re-record, reprice or retire.

## ROI guardrails

- Do not count gross list value as revenue.
- Do not omit founder/instructor time because it was not invoiced.
- Separate one-time production cost from recurring support and marketing cost.
- Attribute campaign costs and coupon sales to the correct channel.
- Record refunds and chargebacks as negative contribution.
- Treat cross-sell and consulting leads as secondary value and report them separately from course revenue.
