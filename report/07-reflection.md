# 7. Reflection and AI declaration

## 7.1 Key decisions

**Work Order and Visit.** I separated Work Order and Visit, because one piece of work may require several visits if the fault is not resolved at the first attempt (F-31).

**The customer as an offstage stakeholder.** I treated the customer as an offstage stakeholder rather than a primary actor. The main ARC use cases focus on staff coordinating maintenance: registering faults, scheduling visits, recording results and approving return to service. The customer reports problems and receives updates but does not carry out these internal operations in the proposed use cases. If ARC wants customers to track work or approve quotations themselves, the customer should be added as a direct actor.

## 7.2 Revisions

Throughout the analysis I refined the boundary between confirmed facts, temporary assumptions and open questions, so that assumptions would not be presented as agreed requirements. In particular, I initially wrote 16 assumptions to fill gaps in the scenario. On further analysis it became clear that many of them described expected system behaviour and belonged in the requirements catalogue or the business rules rather than among the assumptions. I revised their status, kept eight genuine assumptions and identified the questions that ARC must confirm.

## 7.3 Limitations and unresolved questions

- **BR-03**, the rule that ARC does not provide emergency electrical response and must escalate safety concerns, is not yet linked to any functional requirement or use case.
- **Q-07 affects FR-04.** Until the skills and authorisations required for each type of work, and responsibility for maintaining those records, are defined, the rules for assigning technicians cannot be finalised. The related business rule (BR-06) and authorisation check therefore remain provisional.
- **Q-12 affects FR-10.** It must be confirmed who may approve return to service and whether the technician who carried out the repair may do so. Until this is decided, the roles, access restrictions and acceptance criteria for this requirement cannot be finalised.

## 7.4 AI declaration

I used AI-generated wording as drafts rather than final decisions. I compared suggestions with the ARC scenario evidence and marked assumptions that require confirmation.

I used Claude (Anthropic) throughout CA1. It explained the brief, critiqued my drafts against the brief's quality criteria, translated and edited my notes into English, merged and formatted catalogues (questions, requirements, user stories), wrote the PlantUML code for diagrams based on my actors, use cases, classes and associations, compiled the traceability matrix from my identifiers, and assembled the final dossier. The analytical decisions – problems, scope, priorities, use cases, classes, associations and multiplicities – were mine, and I checked each suggestion against the scenario before accepting it.

For example, the first AI-generated candidate-concept analysis merged checks into Visit, had no class for the person approving return to service, and treated stock as simple quantity data. I changed this: Check became a separate class because FR-10 and the Gherkin scenarios must identify which required check is missing; Technician was replaced by Staff Member so that the approver can be identified without fixing which role holds that authority (Q-12); and Part Allocation became a class so that reallocation of parts between work orders can be recorded (FR-06).

A representative interaction log is provided in `references/ai-log.md`.
