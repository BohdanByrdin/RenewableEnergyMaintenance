# CA1 – Individual Requirements and Domain Analysis

**Module:** SAAD71000 – Object-Oriented Analysis and Design  
**Student:** Bohdan Byrdin  
**Scenario:** CA1-08-REMS – Renewable Energy Maintenance Service (Atlantic Renewable Care)

## Purpose
This repository contains my individual requirements and domain analysis for
Scenario 08. It includes the analysis dossier, requirements, Gherkin examples,
PlantUML diagrams and supporting evidence.

## Repository structure
| Folder | Contents |
|--------|----------|
| `report/` | Analysis dossier sections, assembled dossier and PDF |
| `requirements/` | Requirements catalogue, business rules, user stories |
| `features/` | Gherkin `.feature` files |
| `diagrams/` | PlantUML sources (`.puml`) and exported images |
| `decisions/` | Key analysis decisions and revisions |
| `references/` | AI interaction log |

## Dossier sections
| Section | File |
|---------|------|
| 2–3 Scenario interpretation; purpose, scope and boundary | `report/02-problem-and-scope.md` |
| 4 Stakeholders and actors | `report/03-stakeholders.md` |
| 5 Requirements and business rules | `requirements/requirements-catalogue.md` |
| 6 Use-case model and detailed use case | `report/04-use-case-catalogue.md`, `diagrams/use-case-model.puml` |
| 6 Gherkin examples | `features/return-to-service.feature` |
| 7 Candidate concepts, domain model and glossary | `report/05-domain-analysis.md`, `diagrams/domain-model.puml` |
| 8 Traceability | `report/06-traceability.md` |
| 9 Reflection and AI declaration | `report/07-reflection.md` |
| Appendix A Evidence, assumptions, questions and risks | `report/01-evidence-register.md` |
| Appendix B User stories | `requirements/user-stories.md` |

## Viewing diagrams
Diagram sources are in `diagrams/*.puml`, with rendered `.png` images alongside them.
Sources can be rendered with PlantUML or the IntelliJ / VS Code PlantUML plugins.

## AI use
AI was used for critique, language editing, formatting and PlantUML syntax, in line
with the module's AI Level 3 guidance. A representative interaction log is in
`references/ai-log.md`, and the AI declaration is in section 9 of the dossier.

## Status
- [x] Scenario interpretation, purpose and scope
- [x] Stakeholders and actors
- [x] Requirements and business rules
- [x] Use-case model and Gherkin
- [x] Domain analysis and model
- [x] Traceability
- [ ] Reflection, AI declaration and final release (tag `CA1`)
