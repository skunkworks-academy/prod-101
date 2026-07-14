# Quality Gates and Definition of Done

## Universal Definition of Done

A task is complete only when:

- acceptance criteria are satisfied;
- required evidence is linked;
- planned and actual time are recorded;
- content is stored in the agreed repository path or approved external location;
- reviewer comments are resolved or explicitly accepted;
- no open P0/P1 defects remain;
- downstream dependencies are notified.

## Gate 1 — Architecture ready

Required evidence:

- audience and learner personas;
- course promise and measurable outcomes;
- module and lecture map with target runtime;
- objective-to-content-to-assessment matrix;
- asset and production plan;
- approved source and reference policy.

Reject when outcomes are vague, modules duplicate each other, the scope exceeds 4 hours without approval, or assessments do not test the stated outcomes.

## Gate 2 — Recording ready

Every lesson requires:

- approved script and slide sequence;
- learner-facing objective;
- estimated runtime;
- activity or reflection where appropriate;
- verified facts and references;
- pronunciation notes and on-screen directions;
- no placeholder text, example.com links or unresolved comments;
- author proof and independent review.

## Gate 3 — Media ready

Each exported lecture must pass:

- correct title, module and sequence;
- clear speech with stable loudness and no clipping;
- legible visuals at normal playback size;
- no confidential information, notifications or unrelated desktop content;
- clean edits, consistent intro/outro and no dead air;
- captions aligned to speech and manually corrected;
- supported file format and reliable playback;
- duration recorded in the content inventory.

## Gate 4 — Release candidate

The complete course must pass:

### Instructional QA

- coherent progression and appropriate cognitive load;
- objectives, content, activities and assessments align;
- examples are practical and audience relevant;
- course runtime is within the approved range.

### Content and language QA

- facts, terminology and references are verified;
- spelling, grammar, punctuation and tone are consistent;
- no duplicate sections, contradictory guidance or unfinished content;
- instructor and learner materials match.

### Accessibility QA

- captions are accurate;
- meaningful visuals are described in narration or supporting text;
- contrast and font sizes are readable;
- downloadable documents use headings, meaningful links and accessible tables;
- activities do not rely on colour alone.

### Platform QA

- all lectures and resources are present and ordered correctly;
- title, subtitle, description and outcomes match the delivered course;
- preview lectures and promo video are configured;
- pricing, coupons, welcome and completion messages are approved;
- copyright, licensing and privacy checks are complete.

## Defect severity

| Severity | Definition | SLA |
|---|---|---|
| P0 | Publication blocker, legal/privacy risk, missing core content, corrupted media | Same business day |
| P1 | Material learning, factual, accessibility or playback defect | 2 business days |
| P2 | Non-blocking quality or consistency defect | Before next gate |
| P3 | Improvement or optimisation | Lifecycle backlog |

## Proofing sequence

1. Self-review by author.
2. Independent instructional/content review.
3. Language proof.
4. Media and caption QA.
5. Pilot learner review.
6. Final owner acceptance.

A reviewer must record scope reviewed, version, findings, decision and evidence. “Looks good” without identified review scope is not an approval record.
