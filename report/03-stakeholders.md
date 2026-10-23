# 3. Stakeholders and actors

## 3.1 Stakeholder catalogue

Influence indicates how strongly a stakeholder's view is expected to shape the system requirements.

**SH-01. Service manager — Direct**
- Goal: Coordinate maintenance operations and monitor open faults, overdue inspections, technician workload and parts delays.
- Concern: Visits being scheduled without the correct technician authorisation or required parts; lack of reliable operational information.
- Influence: High.
- Evidence: Service manager quote; F-36.

**SH-02. Technical lead — Direct**
- Goal: Assess reported faults, determine the appropriate response and ensure technical and safety requirements are met.
- Concern: Incorrect fault assessment, unclear technician authorisations and unsafe return-to-service decisions.
- Influence: High.
- Evidence: Technical lead quote; F-16–F-19, F-33, F-34.

**SH-03. Office staff — Direct**
- Goal: Register fault reports, manage customer communications, coordinate visits and maintain accurate records.
- Concern: Delayed technician paperwork, inconsistent quotation approvals and outdated visit statuses.
- Influence: High.
- Evidence: Office staff quote; F-13–F-15, F-27, F-30.

**SH-04. Technicians — Direct**
- Goal: Access assigned job information, record inspections and repairs, and update parts usage and visit outcomes.
- Concern: Missing technical information, unavailable parts, unsuitable site conditions and poor connectivity.
- Influence: High.
- Evidence: Technician quote; F-20–F-25, F-28–F-32, F-38.

**SH-05. Parts coordinator — Direct**
- Goal: Track spare parts, maintain accurate stock records and ensure parts are available for scheduled work.
- Concern: Parts being used for other jobs without records being updated, leading to inaccurate stock information.
- Influence: Medium.
- Evidence: Parts coordinator quote; F-23, F-24.

**SH-06. Customer — Indirect (provisional)**
- Goal: Receive clear progress updates and understand whether the installation is safe to use and what work remains outstanding.
- Concern: Unclear safety status, delays, unexpected costs and receiving unverified technical conclusions.
- Influence: High, because customer safety is the most serious risk identified (P-04).
- Evidence: Customer quote; F-26, F-27, F-35, F-37.
- Classification note: The customer is provisionally classified as indirect because the scenario states that customers receive updates but does not confirm that they will use the proposed system directly.

**SH-07. Parts suppliers and manufacturers — External**
- Goal: Supply the correct spare parts and fulfil orders or warranty-related parts requests.
- Concern: Incorrect orders, incomplete job information or delays in confirming parts requirements.
- Influence: Medium.
- Evidence: F-23. The scenario confirms that parts may be ordered for specific jobs or supplied by manufacturers under warranty.

**SH-08. Site contact — External**
- Goal: Coordinate site access and help technicians enter the premises safely and at the agreed time.
- Concern: Unauthorised access, scheduling conflicts or missing access arrangements.
- Influence: Medium.
- Evidence: F-12. The scenario identifies site contacts, gate codes and escorts as possible access requirements, but does not confirm that every site has a separate contact person.

**SH-09. Company owner / senior management — Indirect (unconfirmed)**
- Goal: Ensure that the maintenance service operates effectively and that investment in the proposed system supports business needs.
- Concern: Implementation costs, operational disruption and a system that does not improve maintenance coordination.
- Influence: High (provisional).
- Evidence: F-01 identifies ARC as a small company, but the scenario does not describe ownership or funding arrangements.

**SH-10. Parts delivery and logistics providers — External (unconfirmed)**
- Goal: Deliver ordered spare parts to the required location within the agreed timeframe.
- Concern: Delivery delays, incorrect delivery details or unavailable stock.
- Influence: Low–Medium.
- Evidence: Inferred from F-23 and F-24. The scenario does not identify a separate delivery provider; this stakeholder is retained only if confirmed as distinct from suppliers.

## 3.2 Actor classification

An actor is a person or external system that directly interacts with the proposed system to achieve a goal. A stakeholder is not automatically an actor.

| Stakeholder | Classification | Justification |
|-------------|----------------|---------------|
| Service manager | Primary actor | Uses the system to monitor maintenance operations and review performance. |
| Technical lead | Primary actor | Uses the system to assess faults and manage technical and safety decisions. |
| Office staff | Primary actor | Uses the system to register faults, coordinate visits and manage customer communications. |
| Technicians | Primary actor | Use the system to access job details and record inspection and repair outcomes. |
| Parts coordinator | Primary actor | Uses the system to manage spare parts and update stock records. |
| Customer | Offstage stakeholder (provisional) | Receives updates, but direct access to the system is not specified in the scenario. |
| Parts suppliers and manufacturers | Offstage stakeholder | Supply parts, including warranty parts, but direct system interaction is not specified. |
| Site contact | Offstage stakeholder | Supports site access, but direct system interaction is not specified. |
| Company owner / senior management | Offstage stakeholder (unconfirmed) | May influence budget and priorities, but ownership is not described in the scenario. |
| Parts delivery and logistics providers | Offstage stakeholder (unconfirmed) | May affect parts delivery, but a separate provider is not confirmed. |

**Supporting actors:** No supporting actors are confirmed, because the scenario does not describe any external system or party interacting directly with the proposed system. This should be reviewed if supplier access or system integrations are added later.

## 3.3 Actor–goal table

| Actor | Type | Goals |
|-------|------|-------|
| Service manager | Primary | Monitor open faults and overdue inspections; review technician workload and repeat visits; identify parts delays and unresolved safety concerns; monitor installations awaiting return-to-service approval. |
| Technical lead | Primary | Review and assess fault reports; determine the required response; review technical findings and work outcomes; authorise or record return-to-service decisions according to agreed rules (Q-12). |
| Office staff | Primary | Register fault reports; maintain customer, site and installation records; schedule and coordinate maintenance visits; record quotation approvals and communicate progress to customers. |
| Technicians | Primary | Access assigned job and site information; record inspection readings, photographs and work completed; record parts used and visit outcomes. Whether technicians may authorise return to service is unresolved (Q-12). |
| Parts coordinator | Primary | Check spare parts availability; allocate parts to work orders; record stock movements and usage; update records when parts are transferred between jobs. |

## 3.4 Customer access

The scenario states that customers need progress updates and clear information about safety and outstanding work, but it does not say that customers will use the system directly. The customer is therefore treated as an offstage stakeholder, with office staff responsible for communicating approved updates.

If ARC later decides to provide a customer portal, the customer would become a primary actor with goals such as viewing maintenance progress, reading approved service reports, reviewing outstanding work and viewing confirmed safety and return-to-service information.