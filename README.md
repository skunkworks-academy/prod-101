# PROD-101 — Mastering Productivity Course Production & Lifecycle

> End-to-end GitHub-managed operating system for developing, quality-assuring, publishing, marketing, supporting and measuring the commercial performance of the **Mastering Productivity Hacks** Udemy course.

## Project identity

| Item | Value |
|---|---|
| **GitHub project name** | **PROD-101 — Mastering Productivity Course Production & Lifecycle** |
| **Repository** | `skunkworks-academy/prod-101` |
| **Repository description** | GitHub-managed course production system for creating, reviewing, publishing, marketing and measuring the ROI of the Mastering Productivity Hacks Udemy course. |
| **Course owner and instructor** | Raydo Matthee |
| **Delivery team** | `@skunkworks-academy/Course-Development-Team` |
| **Target publication** | 4 September 2026 |
| **Launch campaign complete** | 18 September 2026 |
| **90-day ROI review** | 4 December 2026 |
| **180-day lifecycle review** | 4 March 2027 |

## Purpose

PROD-101 converts the approved course concept and source materials into a commercially publishable, maintainable and measurable digital-learning product.

The repository is the system of record for:

- course architecture and learning outcomes;
- scripts, slides, workbooks, activities and assessments;
- video recording, editing, captions and media control;
- instructional, factual, language, accessibility and platform quality assurance;
- Udemy configuration, submission, approval and publication;
- launch campaigns, partner promotion and learner support;
- project time, cost, revenue, break-even and return on investment;
- risks, blockers, decisions, meeting minutes and lifecycle updates.

## Delivery outcomes

The project is complete when:

- all eight modules have approved recording-ready content packs;
- the course contains no more than 240 minutes of edited learning video;
- learner resources, activities and assessments are complete and accessible;
- all release gates and Udemy compliance controls pass;
- the course is publicly available and launch attribution is operational;
- actual labour and cash investment are reconciled;
- 30-, 60-, 90- and 180-day reviews produce evidence-based investment decisions.

## Course structure

| Module | Topic |
|---:|---|
| M01 | Introduction to Productivity |
| M02 | Goal Setting |
| M03 | Time Management Techniques |
| M04 | Eliminating Distractions |
| M05 | Efficient Task Management |
| M06 | Effective Communication |
| M07 | Mindset and Motivation |
| M08 | Habit Formation |

The approved module runtime budget is maintained in [`data/content-inventory.csv`](data/content-inventory.csv).

## Milestone roadmap

| Milestone | Target | Exit outcome |
|---|---:|---|
| M0 — Governance and baseline | 17 Jul 2026 | Access, controls, source inventory, backlog and commercial baseline approved |
| M1 — Course architecture and content plan | 24 Jul 2026 | Market-valid blueprint, outcomes, assessment alignment, rights and production plan approved |
| M2 — Scripts, slides and learner assets | 7 Aug 2026 | All eight modules and learner resources are recording-ready |
| M3 — Recording and post-production | 21 Aug 2026 | Video, audio, captions, exports, media inventory and backup evidence complete |
| M4 — QA, proof and release candidate | 28 Aug 2026 | Instructional, factual, language, media, accessibility and policy QA passed |
| M5 — Udemy publication | 4 Sep 2026 | Course submitted, approved and publicly available |
| M6 — Launch marketing | 18 Sep 2026 | Launch campaign, partner activity and analytics controls operational |
| M7 — 90-day ROI validation | 4 Dec 2026 | 30-, 60- and 90-day performance and investment decision recorded |
| M8 — 180-day lifecycle review | 4 Mar 2027 | Content, market, platform-policy and commercial review complete |

See the full [`delivery roadmap`](docs/ROADMAP.md).

## GitHub operating model

### Sources of truth

| Control | Authoritative location |
|---|---|
| Vetted task specifications | [`data/vetted-backlog.json`](data/vetted-backlog.json) |
| Active work, blockers and decisions | [GitHub Issues](../../issues) |
| Review and controlled change | [Pull Requests](../../pulls) |
| Milestone dates and exit outcomes | [`docs/ROADMAP.md`](docs/ROADMAP.md) |
| Definition of Done and quality gates | [`docs/QUALITY_GATES.md`](docs/QUALITY_GATES.md) |
| Project fields and view definitions | [`docs/PROJECT_VIEWS.md`](docs/PROJECT_VIEWS.md) |
| Governance findings and access controls | [`docs/GOVERNANCE_AUDIT.md`](docs/GOVERNANCE_AUDIT.md) |
| Time recording | [`data/time-log.csv`](data/time-log.csv) |
| Cost, break-even and ROI | [`docs/TIME_AND_ROI.md`](docs/TIME_AND_ROI.md) |
| Udemy release readiness | [`docs/UDEMY_RELEASE_CHECKLIST.md`](docs/UDEMY_RELEASE_CHECKLIST.md) |
| Marketing and lifecycle controls | [`docs/MARKETING_AND_LIFECYCLE.md`](docs/MARKETING_AND_LIFECYCLE.md) |

### Work-item standard

Every managed task must contain:

- a specific objective and business value;
- an accountable role and named assignee;
- a due date and planned effort;
- explicit dependencies;
- testable acceptance criteria;
- required completion evidence;
- actual time recorded against the issue;
- schedule and ROI impact when scope changes.

Generic, duplicate or unverifiable tasks do not enter the managed backlog.

### Delivery workflow

1. **Intake** — create a task, blocker or meeting record using the issue forms.
2. **Validation** — confirm scope, dependencies, effort, acceptance criteria and evidence.
3. **Execution** — update status and record actual time against the issue.
4. **Review** — submit substantive repository changes through a pull request.
5. **Quality gate** — close P0/P1 defects and attach objective evidence.
6. **Acceptance** — approve the milestone exit outcome, not only the individual tasks.
7. **Commercial review** — reconcile time, costs, realised contribution and lifecycle value.

## Project views

The organisation-level GitHub Project must provide these management views:

1. Executive Overview
2. Production Kanban
3. Module Pipeline
4. QA Queue
5. Blockers and Risks
6. Deadlines and Critical Path
7. Time and ROI
8. Marketing and Lifecycle

The required layouts, fields, filters and acceptance evidence are defined in [`docs/PROJECT_VIEWS.md`](docs/PROJECT_VIEWS.md).

## Quality and release gates

No workstream may bypass the controlled stage gates:

- **Architecture ready** — audience, outcomes, sequence, assessment and rights are approved.
- **Recording ready** — scripts, slides, activities, references and runtime are approved.
- **Media ready** — recording, editing, captions, playback and backup controls pass.
- **Release candidate** — instructional, factual, language, accessibility, policy and platform QA pass.
- **Published** — Udemy review feedback is resolved and public evidence is captured.
- **Lifecycle** — learner, commercial and content-currency decisions are documented.

See [`docs/QUALITY_GATES.md`](docs/QUALITY_GATES.md).

## Time and commercial control

The vetted initial production and launch baseline is **127.5 hours**. Actual project time must be recorded in 0.25-hour increments and linked to a GitHub issue.

The commercial model uses realised net contribution rather than the public list price:

```text
Labour investment = actual hours × approved blended hourly cost
Initial investment = labour investment + direct cash costs
Break-even enrolments = initial investment ÷ net contribution per enrolment
ROI % = (cumulative net contribution - initial investment) ÷ initial investment × 100
```

Current assumptions and scenario values are maintained in [`data/roi-assumptions.csv`](data/roi-assumptions.csv).

## Team governance

`@skunkworks-academy/Course-Development-Team` is configured as the repository code owner. Team access, branch protection and Project access are separate controls and require independent evidence before M0 can close.

Current governance gates:

- [Issue #6 — Project fields, automation and eight required views](../../issues/6)
- [Issue #62 — Course-Development-Team repository and Project access](../../issues/62)
- [Issue #63 — Branch protection and required team review](../../issues/63)

## Repository structure

```text
.github/        Issue forms, CODEOWNERS, PR controls and workflows
data/           Vetted backlog, course inventory, time log and ROI assumptions
docs/           Roadmap, QA, governance, publishing, marketing and ROI controls
scripts/        GitHub Project and team-access administration scripts
site/           Executive project-control dashboard for GitHub Pages
PROJECT.md      Project charter and operating model
README.md       Primary project orientation
```

## Automation

GitHub Actions provide:

- validation of the course runtime and structured control files;
- validation of the vetted backlog, milestone alignment, effort and ROI arithmetic;
- synchronisation of approved labels, milestones and issue specifications;
- publication of the executive dashboard through GitHub Pages.

Changes to the authoritative backlog or governance controls must pass the project-quality audit before merge.

## Quick links

- [Open issues](../../issues)
- [Pull requests](../../pulls)
- [Actions](../../actions)
- [Project charter](PROJECT.md)
- [Roadmap](docs/ROADMAP.md)
- [Quality gates](docs/QUALITY_GATES.md)
- [Governance audit](docs/GOVERNANCE_AUDIT.md)
- [Vetted backlog](data/vetted-backlog.json)

---

**Skunkworks Academy** · Course development, digital learning and measurable content lifecycle management.
