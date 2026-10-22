# User stories

User stories give a stakeholder-value view of selected requirements. They do not replace the requirements catalogue or the detailed use case; the authoritative requirement is the FR referenced in each story.

**US-01. Approve return to service safely**  
As a technical lead, I want to approve return to service only when all required checks are recorded, so that equipment is not used before it is confirmed safe.  
Business value: Prevents unsafe equipment being returned to service (O-05).  
Stakeholders: Technical lead, customer  
Related: FR-10, BR-02, UC-06  
Priority: Must  
Acceptance criteria:
- AC-01. Approval is refused if any required check is not recorded.
- AC-02. Approval is refused if the user is not authorised.
- AC-03. The decision is recorded with the approver, date and time.

Gherkin: RTS-01 – RTS-04  
Questions / dependencies: Q-12, Q-13

**US-02. Assign an appropriately authorised technician**  
As a member of office staff, I want to assign technicians whose skills and authorisations match the work required, so that maintenance is performed by suitably qualified personnel and avoidable repeat visits are reduced.  
Business value: Improves safe and effective use of technician resources (O-01).  
Stakeholders: Office staff, technical lead, customer  
Related: FR-04, BR-06, UC-02  
Priority: Must  
Acceptance criteria:
- AC-01. A technician cannot be assigned to work requiring an authorisation they do not hold.
- AC-02. The required skills and authorisations for the work are identifiable before assignment.
- AC-03. Work requiring multiple skills can be assigned to more than one suitably authorised technician.

Gherkin: –  
Questions / dependencies: Q-07, Q-08, Q-09

**US-03. Reallocate parts between jobs**  
As a parts coordinator, I want to record the allocation and reallocation of parts between work orders, so that parts availability is visible and repair visits are less likely to be delayed by unexpected shortages.  
Business value: Reduces avoidable delays and keeps stock records accurate (O-06).  
Stakeholders: Parts coordinator, technician, service manager  
Related: FR-05, FR-06, UC-10, F-23, F-24  
Priority: Must  
Acceptance criteria:
- AC-01. Each allocation records the part, quantity and associated work order.
- AC-02. Reallocation updates the recorded allocation for both affected work orders.
- AC-03. The system identifies when the requested quantity is not available for allocation.

Gherkin: –  
Questions / dependencies: Q-10, Q-11

**US-04. Record visit findings and outcomes**  
As a technician, I want to record observations, readings, work performed, parts used and the visit outcome, so that office staff and other technicians can make informed follow-up decisions without relying on incomplete paper notes.  
Business value: Improves maintenance traceability and continuity between visits (O-03).  
Stakeholders: Technician, office staff, technical lead, service manager  
Related: FR-08, FR-09, NFR-01, UC-07, F-28, F-30, F-31, F-32  
Priority: Must  
Acceptance criteria:
- AC-01. A visit record can include observations, readings, work performed and parts used.
- AC-02. The visit outcome identifies whether the fault was resolved or further action is required.
- AC-03. An unresolved fault can be linked to follow-up work without being recorded as resolved.
- AC-04. Visit information can be saved when connectivity is unavailable and synchronised later, subject to conflict handling.

Gherkin: –  
Questions / dependencies: Q-13, Q-15, A-05

**US-05. Provide verified customer updates**  
As a member of office staff, I want to share verified progress and visit outcomes with customers, so that customers understand the status of maintenance work without receiving unconfirmed technical conclusions or internal commercial notes.  
Business value: Improves customer communication about safety and outstanding work while protecting internal information (O-04).  
Stakeholders: Office staff, customer, service manager  
Related: FR-12, BR-05, UC-12, F-35, F-37  
Priority: Should  
Acceptance criteria:
- AC-01. Customer updates can include verified work progress and recorded visit outcomes.
- AC-02. Unverified technical conclusions are not presented as confirmed facts.
- AC-03. Internal commercial notes and safety discussions are excluded from customer-facing updates by default.

Gherkin: –  
Questions / dependencies: Q-17, A-04
