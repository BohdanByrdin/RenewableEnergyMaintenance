# 5. Candidate concepts and domain analysis

## 5.1 Candidate concept analysis

Decisions: **Keep** (becomes a class), **Merge** (synonym of another concept), **Convert** (becomes an attribute of a class), **Remove** (not a domain concept, or out of scope).

| Candidate | Decision | Reason | Evidence |
|-----------|----------|--------|----------|
| Customer | Keep | A distinct party associated with sites, fault reports, service agreements and communications. | F-09, F-13, F-37 |
| Site | Keep | A physical location with its own access arrangements. | F-06, F-12 |
| Installation | Keep | A maintained system with its own service history and return-to-service status. | F-01, F-08, F-33 |
| Component | Keep | An installation contains several major components from different manufacturers, each with its own identifying details. | F-06, F-07 |
| Manufacturer | Convert → attribute of Component | Only the manufacturer's name is needed within the stated scope. | F-06, F-07 |
| Serial number | Convert → attribute of Component | An identifying value that may be unknown, not an independent concept. | F-07 |
| Model | Convert → attribute of Component | Describes a component rather than existing independently. | F-07 |
| Warranty | Convert → attribute of Component | Warranty details describe a component; the scenario does not show warranties having their own lifecycle. | F-08, F-23 |
| Service agreement | Keep | Agreements differ in planned visits, included labour and response commitments. | F-09, F-10, F-11 |
| Fault report | Keep | Each incoming report records the reported symptoms and may relate to an existing fault. | F-13, F-14, F-15, F-18 |
| Symptom | Convert → attribute of Fault report | A description given by the customer, not an independent concept. | F-14 |
| Fault | Keep | One underlying fault can be associated with several reports and needs its own tracking. | F-18, F-19 |
| Fault priority | Convert → attribute of Fault | A value assigned to a fault to guide the response. | F-16, Q-01 |
| Finding | Keep | An inspection may identify several findings, which must be kept distinct from the original report. | F-18, F-28 |
| Work order | Keep (provisional) | Represents the work being coordinated; one work order may require more than one visit. The scenario implies but does not name this record. | F-31 |
| Visit | Keep | A distinct attendance at which observations, readings, work and outcomes are recorded. | F-21, F-22, F-28, F-31 |
| Visit outcome | Convert → attribute of Visit | Values such as "awaiting parts" or "repair completed" describe a visit's result. | F-31, F-32 |
| Internal note | Convert → attribute of Visit | Internal commercial and safety notes are recorded with the visit but marked as not for customer release. | F-35 |
| Check | Keep | Required checks must be recorded individually so that missing checks can be identified before return to service. | F-33, Q-13, FR-10 |
| Staff member | Keep | Office staff, technicians, technical leads, the parts coordinator and the service manager all record work or make decisions; the return-to-service approver must be identifiable. | F-15, F-16, F-20, F-33, F-39 |
| Technician | Merge → Staff member | A technician is a staff member with a technician role. | F-20 |
| Technical lead | Merge → Staff member | A technical lead is a staff member with a technical lead role. | F-16 |
| Skill / Authorisation | Convert → attribute of Staff member | Authorisations describe what a staff member may do; their exact structure is not yet defined. | F-20, F-21, Q-07, Q-08 |
| Part | Keep | Parts are required for repairs, held in stock, ordered for a job or supplied under warranty. | F-23, F-24 |
| Stock | Convert → attribute of Part | Stock describes the quantity of a part held, not a different object. | F-23 |
| Part allocation | Keep | Records which part is allocated to which work order, and when it is reallocated to another job. | F-24, P-06, FR-06; parts coordinator quote |
| Quotation | Keep | Non-covered work may require a quotation, which can change after inspection. | F-26, Q-06 |
| Customer approval | Convert → attributes of Quotation | Approval status, method and date are recorded with the quotation. | F-26, F-27, Q-05 |
| Return-to-service decision | Convert → attributes of Installation | The current return-to-service status and decision date are recorded on the installation; the approver is shown through an association with Staff member, and decision history is kept by the audit trail. | F-33, F-34, NFR-03 |
| Access requirement | Convert → attribute of Site | Access details are recorded for a site. | F-12 |
| Gate code | Convert → attribute of Site | A value used to arrange access. | F-12, Q-16 |
| Escort requirement | Convert → attribute of Site | A condition for access to a site. | F-12, Q-16 |
| Customer report | Remove | An output generated from verified records, not a domain concept. | F-35, F-37 |
| Technician workload | Remove | Derived information calculated from assigned visits. | F-36 |
| Weather | Remove | A scheduling constraint, not part of ARC's records (see 3.4). | F-22 |
| Connectivity | Remove | An operational constraint (C-01), not a domain concept. | F-38 |
| Tablet / phone | Remove | Devices used to access the system, not domain concepts. | F-38 |
| Spreadsheet / email folder / notebook | Remove | Current storage methods, not domain concepts. | F-05 |
| Live energy monitoring | Remove | Explicitly outside the project scope. | F-41 |
| Equipment control | Remove | Explicitly outside the project scope. | F-41 |
| Customer billing | Remove | Explicitly outside the project scope. | F-41 |

## 5.2 Resulting classes

The analysis produces 15 conceptual classes:

1. Customer
2. Site
3. Installation
4. Component
5. Service Agreement
6. Fault Report
7. Fault
8. Finding
9. Work Order
10. Visit
11. Check
12. Staff Member
13. Part
14. Part Allocation
15. Quotation

## 5.3 Key modelling decisions

- **Site / Installation / Component:** all three are kept. A site is a location, an installation is a maintained system, and a component is a major part of that system from a specific manufacturer (F-06).
- **Fault Report / Fault / Finding:** all three are kept. Reports come from customers, a fault is the underlying problem, and findings are identified during inspection. Several reports may relate to one fault, and one inspection may identify several faults (F-18, F-19, technician quote).
- **Work Order / Visit:** kept separate, because a visit does not necessarily resolve the fault and further visits may be required (F-31).
- **Check:** kept as a class rather than included in Visit, because FR-10 and the Gherkin scenarios require the system to identify which required check is missing.
- **Staff Member:** technicians, technical leads and other roles are modelled as one class with a role attribute, so that the return-to-service approver can be identified without fixing which role holds that authority (Q-12).
- **Part Allocation:** kept as a class so that allocation and reallocation of parts between work orders is recorded (FR-06, P-06).
- **Return-to-service decision:** recorded as attributes of Installation rather than a separate class; decision history is preserved by the audit trail (NFR-03). This would need revisiting if ARC requires a full history of decisions within the domain model.
- **Authorisations:** recorded as an attribute of Staff Member, because their structure is not yet defined (Q-07). They could become a class once the rules are confirmed.


## 5.4 Glossary

**PV (photovoltaic)** – Technology that converts sunlight into electrical energy; ARC maintains solar PV systems as part of its renewable energy maintenance services. (F-01)

**Site** – A physical location where one or more renewable energy installations are maintained, with its own access requirements. (F-06, F-12)

**Installation** – A renewable energy system maintained by ARC, such as a solar PV system, small wind turbine or battery installation. An installation may contain multiple components. (F-01, F-06)

**Component** – A major part of an installation, from a specific manufacturer, that may have its own model or serial number. These details may be missing from older records. Not the same as a spare part. (F-06, F-07, F-08)

**Part** – A spare part held in stock, ordered for a specific job or supplied by a manufacturer under warranty, used to repair an installation. (F-23)

**Fault report** – A report received from a customer by telephone, email or online form, describing symptoms or a suspected problem. Several reports may relate to the same fault. (F-13, F-14, F-18)

**Fault** – An underlying problem affecting an installation. Unlike a fault report, which records what was reported, a fault represents the problem being investigated and tracked. Multiple reports may relate to one fault. (F-18, F-19)

**Finding** – An observation or result recorded during a maintenance visit. Unlike a fault report, a finding comes from the technician's investigation; it may confirm a fault or show that no fault is present. One inspection may produce several findings. (F-18, F-28, F-32)

**Work order** – A record of maintenance work on an installation that must be coordinated, assigned and followed up. Unlike a visit, which records a particular attendance, a work order may require several visits if the fault is not resolved at the first attempt. (F-31)

**Visit** – A technician's attendance at a site to inspect equipment, record observations and readings, perform work and document the outcome. A visit may end without resolving the fault. (F-28, F-31, F-32)

**Check** – A required inspection or test whose result provides evidence for deciding whether equipment can return to service. The specific checks required for each technology still need confirmation. (F-33, Q-13)

**Return to service** – The decision to permit equipment to resume normal operation after the required checks have been completed and accepted by an authorised person. It is not the same as completing a repair, because checks and acceptance may still be outstanding. (F-33, F-34, Q-12, Q-13)

**Temporary operation** – A limited arrangement under which equipment may operate under recorded conditions or restrictions without being approved for normal service. The precise rules require confirmation. (F-25, F-32, Q-14)

**Authorised person** – A person permitted to accept the required checks and approve return to service. Which roles hold this authority has not yet been confirmed. (F-33, F-34, Q-12)

**Part allocation** – A record associating a quantity of a part with a particular work order, including reallocation of that part to another work order. (F-23, F-24, Q-10, Q-11)

**Non-covered work** – Work not included in the customer's service agreement, which may therefore require a quotation and customer approval before it begins. (F-10, F-26, Q-05, Q-06)

**Return-to-service statuses** – *Awaiting return-to-service approval*: a decision is pending. *Approved for return to service*: the required approval has been granted. *Temporary operation authorised*: only the recorded temporary operating conditions are permitted. These are proposed labels used in the model and Gherkin scenarios and should be confirmed against ARC's terminology. (F-33, F-34, Q-12, Q-14)