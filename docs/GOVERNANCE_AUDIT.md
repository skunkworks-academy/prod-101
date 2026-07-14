# PROD-101 Governance and Delivery Audit

**Audit date:** 14 July 2026  
**Repository:** `skunkworks-academy/prod-101`  
**Audit scope:** repository, pull requests, issues, labels, milestones, project controls, access, delivery completeness, Udemy readiness and lifecycle governance

## Executive conclusion

The original implementation established a credible lifecycle structure, but it was not execution-ready. The issue bodies were generic, several lifecycle dates were attached to the wrong milestones, the status label taxonomy was incomplete, GitHub Project views were specified but not evidenced, and Course-Development-Team access was not verified.

This remediation makes `data/vetted-backlog.json` the authoritative backlog specification. The synchronisation workflow creates or updates labels, milestones and issues from that register. An issue is considered vetted only when it contains a specific objective, due date, planned effort, accountable role, dependencies, acceptance criteria and evidence requirement.

## Items inspected

| Control area | Audit result |
|---|---|
| Repository | Public repository, default branch `main`, connected administrator had repository Admin capability |
| Pull requests | One merged pull request existed; no open implementation pull requests at audit start |
| Existing issues | 57 course-governance issues existed, numbered #2–#58 |
| Existing milestones | Eight milestones, M0–M7 |
| Existing labels | Core type, workstream, priority, status and module labels existed, but Backlog and Done were missing |
| Project automation | Custom fields were scripted; view names were only printed as instructions and therefore not proven to exist |
| Access controls | No connector-visible proof that Course-Development-Team had Admin access to both repository and Project |
| Task quality | Titles were directionally valid, but bodies were generic and lacked task-specific execution controls |
| Udemy controls | Publication lifecycle existed, but market validation, account readiness, Trust & Safety, rights and test-video controls needed strengthening |
| Lifecycle timing | 30-day and 180-day reviews were assigned to milestones ending before those reviews could occur |

## Material findings and remediation

### 1. Generic task definitions — Critical

**Finding:** Existing issue bodies repeated the same objective and checklist regardless of task type.

**Risk:** Work could be marked complete without a testable output, valid review, planned effort or evidence.

**Remediation:** The vetted backlog register defines task-specific objectives, dependencies, planned hours, acceptance criteria and evidence. `sync-vetted-backlog.yml` applies the definitions to GitHub Issues.

### 2. Lifecycle milestone misalignment — High

**Finding:** The 30-day review was placed in the launch milestone and the 180-day review was placed in the 90-day milestone.

**Risk:** Milestones could be reported complete before their required work became due.

**Remediation:** The 30-, 60- and 90-day reviews are in M7. M8 was added for the 180-day review due 4 March 2027.

### 3. Publication-review buffer — High

**Finding:** The plan targeted Udemy submission and public availability on the same date.

**Risk:** The stated publication date could be missed because platform review and required-fix cycles require lead time.

**Remediation:** Submission is due 2 September 2026, two business days before the 4 September publication target. Material fixes repeat internal QA.

### 4. Incomplete status taxonomy — Medium

**Finding:** Project controls defined Backlog and Done, but matching repository labels were absent.

**Remediation:** Added `status: backlog` and `status: done`, plus access/compliance controls and risk/decision types.

### 5. Project views not verified — Critical

**Finding:** The project bootstrap script created fields and added issues but only printed suggested view names.

**Risk:** Management reporting could be assumed to exist when no view had been configured.

**Remediation:** `docs/PROJECT_VIEWS.md` defines eight mandatory views and their evidence requirements. Issue #6 cannot close without the project URL, fields export and evidence for each view.

### 6. Team access not verified — Critical

**Finding:** Repository access and organization Project access were not proven for Course-Development-Team.

**Risk:** Contributors may be unable to update work, review pull requests or administer the delivery board.

**Remediation:** Added a P0 access-verification task, CODEOWNERS and `scripts/Set-CourseDevelopmentTeamAccess.ps1`. The script verifies team membership and enforces repository Admin permission. Project Admin permission must be verified separately in Project Settings > Manage access and tested by a non-owner member.

### 7. Missing branch and review controls — Critical

**Finding:** No repository evidence showed that `main` required pull requests, passing checks or team approval.

**Remediation:** Added a P0 task to configure branch protection/rulesets, CODEOWNERS and the governed pull-request template.

### 8. Missing market and platform-readiness controls — High

**Finding:** The backlog did not explicitly validate current market demand, instructor payment/tax readiness, Trust & Safety, rights, review manipulation, external links or AI-assisted content.

**Remediation:** Added dedicated market-validation, commercial-readiness and compliance tasks based on current official Udemy guidance.

### 9. Incomplete operational resilience — Medium

**Finding:** Backup existence was implied but restore capability and retention were not tested.

**Remediation:** Added backup-restore and retention verification before the media-ready milestone closes.

### 10. Understated effort baseline — High

**Finding:** The 110-hour baseline was a top-down estimate and did not equal the task-level effort required by the vetted plan.

**Remediation:** The task-derived initial production and launch baseline is 127.5 hours. At the existing R750/hour and R15,000 direct-cost assumptions, initial investment becomes R110,625. The assumptions remain subject to owner approval and actual reconciliation.

## Task validity standard

A course task is valid only when:

1. it contributes directly to an approved milestone outcome;
2. its objective is specific and within scope;
3. dependencies and accountable role are stated;
4. the due date is no later than its milestone deadline;
5. planned effort is stated and can be reconciled to actual time;
6. acceptance criteria are observable and testable;
7. completion evidence is identified;
8. relevant quality, rights, privacy, accessibility and platform requirements are included;
9. P0/P1 defects block acceptance;
10. scope changes state schedule, effort and ROI impact.

## Authoritative references

- Udemy course quality checklist: https://support.udemy.com/hc/en-us/articles/229604988-Udemy-course-quality-checklist
- Udemy test video process: https://support.udemy.com/hc/en-us/articles/229604128-Creating-and-Submitting-a-Test-Video
- Udemy Quality Review process: https://support.udemy.com/hc/en-us/articles/229605348-Udemy-s-Quality-Review-Process
- Udemy Trust & Safety: https://support.udemy.com/hc/en-us/categories/204119748-Trust-Safety
- GitHub project access: https://docs.github.com/en/issues/planning-and-tracking-with-projects/managing-your-project/managing-access-to-your-projects
- GitHub team repository permissions: https://docs.github.com/en/rest/teams/teams#add-or-update-team-repository-permissions

## Residual verification required

The following controls cannot be declared complete from repository files alone:

- exact Course-Development-Team member list;
- repository Admin permission for the team after enforcement;
- organization Project Admin permission for the team;
- existence and correctness of all eight project views;
- branch ruleset activation;
- non-owner member access test.

Each is represented as a P0 GitHub issue with explicit evidence requirements. They must not be closed based only on scripts or intended configuration.
