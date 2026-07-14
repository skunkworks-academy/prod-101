# Project Charter

## Purpose

Convert the existing course outline, manuscript and introductory slide deck into a commercially publishable Udemy course and establish a repeatable lifecycle for content updates, quality assurance, marketing and financial performance review.

## Success criteria

The project is successful when:

- all eight modules have approved scripts, visuals, activities and knowledge checks;
- the final course contains 2–4 hours of edited video with clear audio and consistent branding;
- learner resources include a workbook, templates, action tools and support guidance;
- content, instructional design, language, accessibility, rights, policy and platform compliance checks are complete;
- the course is submitted for Udemy review by 2 September 2026 and publicly available by 4 September 2026;
- launch assets, attribution and campaigns are active by 18 September 2026;
- actual labour and cash investment are captured;
- 30-, 60- and 90-day reviews are completed on their actual dates;
- break-even and ROI are reviewed no later than 4 December 2026;
- the 180-day lifecycle review is completed by 4 March 2027;
- Course-Development-Team access, team review and project-view controls are evidenced.

## Scope

### In scope

Course architecture, market validation, learning outcomes, module scripts, slides, workbook, activities, assessments, instructor recordings, editing, captions, thumbnails, promo video, Udemy listing, quality assurance, proofing, rights and platform-policy review, launch marketing, learner feedback, support controls, updates, time tracking, ROI measurement and lifecycle governance.

### Out of scope

A separate LMS implementation, paid advertising spend above the approved budget, translation/localisation, accredited certification and live cohort delivery are excluded unless approved through a change issue stating schedule, effort, cost and ROI impact.

## Roles

| Role | Accountability |
|---|---|
| Course owner | Scope, commercial decisions, risk acceptance and final acceptance |
| Project administrator | GitHub Project, fields, views, labels, milestones and access evidence |
| Project manager | Schedule, meetings, dependencies, blockers, risk/change/decision registers and time reconciliation |
| Instructional designer | Learning design, outcomes, activities, assessment alignment and learner experience |
| Content author | Scripts, workbook, support guidance and references |
| Assessment designer | Knowledge checks, practical assignments, answer guidance and assessment validity |
| Visual designer | Slide system, diagrams, workbook and marketing creative |
| Presenter | Recording readiness and delivery |
| Production lead | Studio workflow, media standards, inventory, backup and restoration |
| Video editor | Edit, audio, captions, exports and source retention |
| QA lead | Independent content, language, accessibility, technical, rights and release gates |
| Publishing owner | Instructor-account readiness, listing, upload, submission and publication evidence |
| Marketing owner | Positioning, launch, campaign execution, attribution and optimisation |
| Finance owner | Cost, payout, contribution, break-even and ROI validation |

A person may hold multiple roles, but final QA must be performed independently from the original author where practical. Named assignees are recorded in GitHub Issues and Project fields rather than inferred from role names.

## Access and review controls

- **Repository team:** `@skunkworks-academy/Course-Development-Team`.
- **Required repository role:** Admin for the team, verified through API output or repository settings evidence.
- **Required project role:** Admin for the team, verified separately through Project Settings > Manage access.
- **Non-owner test:** At least one team member who is not an organization owner must verify repository, issue, pull-request and project access.
- **Code ownership:** All repository paths are owned by Course-Development-Team through `.github/CODEOWNERS`.
- **Branch governance:** `main` must require pull requests, passing quality checks, at least one approval and stale-approval dismissal after material changes.
- **Secrets:** Access evidence must never include tokens, cookies, recovery codes or unredacted tax/payment details.

## Delivery controls

- **System of record:** GitHub Issues, milestones, pull requests, the organization Project and repository evidence.
- **Authoritative task specification:** `data/vetted-backlog.json`.
- **Backlog synchronisation:** `.github/workflows/sync-vetted-backlog.yml`.
- **Status values:** Backlog, Ready, In Progress, In Review, Blocked, Done.
- **Priority:** P0 critical, P1 high, P2 normal, P3 low.
- **Evidence:** Every completed task links to the relevant file, recording, review, access record or platform page.
- **Time:** Planned and actual hours are recorded per issue.
- **Change control:** Scope changes require an issue stating schedule, effort, cost and ROI impact.
- **Decision control:** Meeting decisions and assumptions are recorded as issues or in the decision register.
- **Milestone control:** Milestones close only after all required exit evidence and gate decisions are accepted.

## Baseline assumptions

- Eight modules and 240 minutes maximum planned video runtime.
- USD 99 is an indicative list price, not realised revenue per learner.
- Vetted initial production and launch effort baseline is 127.5 hours.
- Illustrative blended labour rate is R750/hour pending owner approval.
- Illustrative direct cash cost is R15,000 pending owner approval.
- Illustrative initial investment is therefore R110,625.
- Labour cost and realised net contribution must be replaced with actuals.

## Governance cadence

- Weekly 30-minute production review until publication.
- Daily blocker review while recording and editing are active.
- Release-readiness review before Udemy submission.
- Commercial review at 30, 60 and 90 days after publication.
- First full lifecycle review at 180 days.
- Subsequent lifecycle review every six months or earlier when learner feedback, platform policy, market changes or quality incidents require it.
