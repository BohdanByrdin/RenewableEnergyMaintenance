# 8. Traceability

The matrix links each functional requirement back to the problem, desired outcome and scope item it addresses, and forward to the business rule, use case, Gherkin scenario and domain concepts that realise it.

## 6.1 Functional requirements

| Requirement | Priority | Problem / Outcome | Scope | Business rule | Use case | Gherkin | Domain concepts |
|-------------|----------|-------------------|-------|---------------|----------|---------|-----------------|
| FR-01 Maintain customer and installation records | Must | P-07 | S-01 | – | UC-04 | – | Customer, Site, Installation, Component |
| FR-02 Record fault reports, assessment and status | Must | P-02, O-02 | S-02 | BR-04 | UC-01, UC-05 | – | Fault Report, Fault |
| FR-03 Link related fault reports | Should | P-02, O-02 | S-03 | – | UC-05 | – | Fault Report, Fault, Finding |
| FR-04 Check technician authorisation before assignment | Must | P-01, O-01 | S-04 | BR-06 | UC-02 | – | Staff Member, Work Order, Visit |
| FR-05 Record parts availability for work orders | Must | P-01, O-01 | S-05 | – | UC-09 | – | Part, Part Allocation, Work Order |
| FR-06 Record allocation and reallocation of parts | Must | P-06, O-06 | S-05 | – | UC-10 | – | Part, Part Allocation, Work Order |
| FR-07 Record quotations and approval status | Should | P-07 | S-06 | BR-01 | UC-03 | – | Quotation, Work Order |
| FR-08 Record visit findings, work and outcomes | Must | P-03, O-03 | S-07 | – | UC-07 | – | Visit, Finding |
| FR-09 Maintain visit status | Should | P-03, O-03 | S-07 | – | UC-07 | – | Visit |
| FR-10 Prevent return to service without checks and approval | Must | P-05, O-05 | S-08 | BR-02 | UC-06, UC-08 | RTS-01 – RTS-04 | Installation, Check, Staff Member |
| FR-11 Provide management reports | Should | O-07 | S-09 | – | UC-11 | – | Fault, Visit, Part Allocation, Staff Member |
| FR-12 Record approved customer progress updates | Should | P-04, O-04 | S-10 | BR-05 | UC-12 | – | Installation, Visit |

Gherkin scenarios (file `features/return-to-service.feature`):
RTS-01 Approve return to service when all checks are recorded; RTS-02 Refuse approval when a required check is missing; RTS-03 Reject approval by a user without authority; RTS-04 Allow temporary operation only.

## 6.2 Non-functional requirements

| Requirement | Priority | Source | Related requirements / use cases |
|-------------|----------|--------|----------------------------------|
| NFR-01 Offline operation | Must | F-38, C-01, A-05 | FR-08, FR-09, UC-07, UC-08 |
| NFR-02 Role-based access | Must | F-12, F-39, C-05, A-03 | FR-01, FR-12, all use cases |
| NFR-03 Audit trail | Must | F-19, F-30, F-33 | FR-02, FR-06, FR-09, FR-10, UC-06 |
| NFR-04 Performance | Should | F-36, C-03 | FR-11, UC-11 |

## 6.3 Coverage check and gaps

- Every Must requirement is linked to a problem or outcome, a scope item, at least one use case and at least one domain concept; no Must requirement is isolated.
- Every problem P-01 to P-07 and outcome O-01 to O-07 is addressed by at least one requirement.
- Gherkin examples currently cover FR-10 only, as the requirement with the highest safety impact. Other requirements are verified through the test described in the requirements catalogue.
- **BR-03** (escalation of safety concerns) is not enforced by any requirement, because the escalation procedure is not yet defined (Q-02). This is a known gap.
- **FR-04** and **FR-10** depend on unresolved questions (Q-07 and Q-12). They are traceable, but their detailed rules may change once those questions are answered.