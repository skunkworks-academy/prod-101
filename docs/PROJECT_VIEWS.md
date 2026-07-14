# GitHub Project Views and Issue Queues

## Required project

**Title:** PROD-101 Course Production  
**Owner:** skunkworks-academy  
**Repository:** skunkworks-academy/prod-101

The project is the cross-functional planning surface. GitHub Issues remain the authoritative task and evidence records. Project access and repository access are separate controls and must both be verified.

## Required fields

| Field | Type | Required values or use |
|---|---|---|
| Status | Single select | Backlog, Ready, In Progress, In Review, Blocked, Done |
| Priority | Single select | P0 Critical, P1 High, P2 Normal, P3 Low |
| Workstream | Single select | Governance, Architecture, Content, Design, Assessment, Recording, Editing, QA, Publishing, Marketing, ROI |
| Module | Single select | Course-wide, M01–M08 |
| Stage Gate | Single select | Architecture Ready, Recording Ready, Media Ready, Release Candidate, Published, Lifecycle |
| Planned Hours | Number | Vetted planned effort |
| Actual Hours | Number | Reconciled contributor effort |
| Start Date | Date | Earliest planned start |
| Due Date | Date | Task deadline from the vetted register |
| ROI Impact | Text | Cost, revenue, break-even or strategic effect |
| Evidence | Text | Repository, review, recording or platform evidence link |

## Mandatory views

### 1. Executive Overview

- Layout: Table
- Scope: All open and closed project items
- Group by: Milestone
- Sort: Due Date ascending, Priority ascending
- Fields: Status, Priority, Milestone, Assignees, Due Date, Planned Hours, Actual Hours, ROI Impact
- Purpose: milestone health, accountability, schedule and investment oversight

### 2. Production Kanban

- Layout: Board
- Filter: `workstream: content` or `workstream: production`, milestones M2–M4
- Group by: Status
- Fields: Module, Priority, Assignees, Due Date
- Purpose: scripts, design, recording, editing and QA flow

### 3. Module Pipeline

- Layout: Table
- Filter: labels `module: M01` through `module: M08`
- Group by: Module
- Sort: Due Date ascending
- Fields: Status, Stage Gate, Planned Hours, Actual Hours, Evidence
- Purpose: compare recording readiness and completion across all modules

### 4. QA Queue

- Layout: Table or board
- Filter: label `type: qa` or Status `In Review`
- Group by: Status
- Sort: Priority ascending, Due Date ascending
- Fields: Reviewer/Assignee, Milestone, Module, Evidence
- Purpose: independent review, defects and gate approvals

### 5. Blockers and Risks

- Layout: Table
- Filter: label `type: blocker`, label `type: risk`, or Status `Blocked`
- Sort: Priority ascending, Due Date ascending
- Fields: Owner, Milestone, Dependencies, ROI Impact
- Purpose: same-day P0 escalation and critical-path visibility

### 6. Deadlines and Critical Path

- Layout: Roadmap
- Scope: All items with Start Date or Due Date
- Group by: Milestone
- Fields: Status, Priority, Assignees
- Purpose: publication critical path and lifecycle timing

### 7. Time and ROI

- Layout: Table
- Filter: workstream `roi` plus any item with Planned Hours or Actual Hours
- Group by: Milestone
- Fields: Planned Hours, Actual Hours, Due Date, ROI Impact, Evidence
- Purpose: effort variance, investment reconciliation and break-even decisions

### 8. Marketing and Lifecycle

- Layout: Table or roadmap
- Filter: workstream `marketing` or `roi`, milestones M6–M8
- Group by: Milestone
- Fields: Status, Owner, Due Date, ROI Impact, Evidence
- Purpose: launch, 30/60/90-day reviews and 180-day maintenance

## Repository issue queues

Use repository issue filters as operational fallbacks when a project view is unavailable:

- Ready work: `is:issue is:open label:"status: ready"`
- In progress: `is:issue is:open label:"status: in-progress"`
- Blocked: `is:issue is:open (label:"status: blocked" OR label:"type: blocker")`
- QA: `is:issue is:open label:"type: qa"`
- P0: `is:issue is:open label:"priority: P0"`
- Publishing: `is:issue is:open label:"workstream: publishing"`
- Marketing and ROI: `is:issue is:open (label:"workstream: marketing" OR label:"workstream: roi")`
- Completed: `is:issue is:closed label:"status: done"`

## Verification evidence

Issue **Create GitHub Project views fields and automation** is not complete until it includes:

1. the project URL;
2. an export or screenshot of all custom fields;
3. one screenshot or API representation for each mandatory view;
4. evidence that repository issues and pull requests are included;
5. evidence that Course-Development-Team has Admin project access;
6. a test performed by a non-owner team member.

Do not infer that views exist merely because a script contains their names.
