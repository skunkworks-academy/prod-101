# PROD-101 — Mastering Productivity Hacks

GitHub-based production control system for **Mastering Productivity Hacks: Boost Your Efficiency and Achieve More in Less Time**.

## Delivery objective

Publish a complete, quality-assured 2–4 hour Udemy course with eight modules, video lessons, a downloadable workbook, practical activities, assessments, launch assets, and a measurable 90-day return on the time invested.

- **Course owner/instructor:** Raydo Matthee
- **Target publication:** 4 September 2026
- **Launch campaign complete:** 18 September 2026
- **90-day ROI review:** 4 December 2026
- **Indicative list price:** USD 99
- **Audience:** students, professionals, entrepreneurs and business owners

## Course modules

1. Introduction to Productivity
2. Goal Setting
3. Time Management Techniques
4. Eliminating Distractions
5. Efficient Task Management
6. Effective Communication
7. Mindset and Motivation
8. Habit Formation

## Project control

- [Project charter and operating controls](PROJECT.md)
- [Delivery roadmap and milestone dates](docs/ROADMAP.md)
- [Definition of Done and QA gates](docs/QUALITY_GATES.md)
- [Time and ROI model](docs/TIME_AND_ROI.md)
- [Udemy release checklist](docs/UDEMY_RELEASE_CHECKLIST.md)
- [Marketing and lifecycle plan](docs/MARKETING_AND_LIFECYCLE.md)
- [Content inventory](data/content-inventory.csv)
- [Time log](data/time-log.csv)
- [ROI assumptions](data/roi-assumptions.csv)

## Working rules

1. Every task must state an owner, planned hours, due date, acceptance criteria and evidence link.
2. Time is logged against an issue number in `data/time-log.csv`.
3. Blockers are raised with the blocker issue form and reviewed within one business day.
4. Meeting decisions are captured with the meeting-minutes issue form.
5. No module enters recording until script, slides, activity and assessment pass content QA.
6. No course is submitted to Udemy until all release-gate checks are complete.
7. ROI is evaluated using realised net revenue, not headline list price.

## Automation

After the governance pull request is merged, the bootstrap workflow creates labels, repository milestones and the initial issue backlog. A Pages workflow publishes the project dashboard from `site/`.

An organisation-level GitHub Projects v2 board requires a token with Projects write scope. The repository includes `scripts/create-project.sh` to create and configure that board when such a token is available.
