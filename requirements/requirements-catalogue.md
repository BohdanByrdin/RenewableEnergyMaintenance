# Requirements and business rules

##  Functional requirements

**FR-01.** The system shall maintain records of customers, sites, installations and components.

Source: S-01, F-01–F-08  
Priority: Must  
Rationale: Provides a central record of the installations maintained by ARC.  
Verification: Test – create and retrieve a customer, site, installation and component record.

**FR-02.** The system shall record each fault report, including the reported symptoms, the technical lead's assessed response and the current fault status.

Source: S-02, P-02, F-13–F-16, F-31, F-32, BR-04  
Priority: Must  
Rationale: Ensures that reported faults are captured, assessed and tracked from reporting to resolution.  
Verification: Test – submit a fault report, record an assessed response, update its status and verify that all details are saved.

**FR-03.** The system shall link related fault reports to the same underlying fault.

Source: S-03, P-02, F-18, F-19  
Priority: Should  
Rationale: Allows staff to connect related reports, findings and work decisions.  
Verification: Test – link two reports concerning the same fault and verify that both are associated with the underlying fault.

**FR-04.** The system shall check that a technician's recorded skills and authorisations meet the requirements of a work order before assignment.

Source: S-04, P-01, F-20, F-21, BR-06, Q-07  
Priority: Must  
Rationale: Reduces the risk of assigning work to an unsuitable or unauthorised technician.  
Verification: Test – attempt to assign a technician without a required authorisation and verify that the assignment is rejected.

**FR-05.** The system shall record the availability of the spare parts required for each work order.

Source: S-05, P-01, F-23, F-24  
Priority: Must  
Rationale: Prevents repair visits being scheduled before required parts are available.  
Verification: Test – record parts availability for a work order and verify that the work order shows whether all required parts are available.

**FR-06.** The system shall record the allocation and reallocation of spare parts between work orders and update the corresponding stock records.

Source: S-05, P-06, F-23, F-24; parts coordinator quote  
Priority: Must  
Rationale: Keeps stock records accurate when parts are moved to urgent jobs.  
Verification: Test – reallocate a part from one work order to another and verify that both work orders and the stock record are updated.

**FR-07.** The system shall record quotations and their customer approval status.

Source: S-06, P-07, F-26, F-27, BR-01, Q-05, Q-06  
Priority: Should  
Rationale: Helps staff identify whether non-covered work has been approved before it begins.  
Verification: Test – record a quotation and its approval status, then retrieve the updated record.

**FR-08.** The system shall record maintenance visit findings, completed work and visit outcomes against the relevant work order.

Source: S-07, P-03, F-25, F-28–F-32; office staff quote  
Priority: Must  
Rationale: Ensures that maintenance activities and their outcomes are documented.  
Verification: Test – record inspection findings, completed work and a visit outcome, then verify that the visit record can be retrieved.

**FR-09.** The system shall maintain the current status of each maintenance visit.

Source: S-07, P-03, F-30  
Priority: Should  
Rationale: Allows office staff to see whether a visit is scheduled, in progress or complete.  
Verification: Test – update a visit from in progress to completed and verify that the current status is shown.

**FR-10.** The system shall not allow an installation to be marked as returned to service until the required safety checks have been recorded and an authorised person has approved the return to service.

Source: S-08, P-05, F-33, F-34, BR-02, Q-12, Q-13; technical lead quote  
Priority: Must  
Rationale: Ensures that repair completion is distinguished from authorisation to return equipment to service.  
Verification: Test – attempt to mark an installation as returned to service without recorded checks or approval and verify that the system refuses; then record both and verify that the change is accepted.

**FR-11.** The system shall provide the service manager with reports on open faults, overdue inspections, technician workload and parts delays.

Source: S-09, O-07, F-36  
Priority: Should  
Rationale: Helps the service manager identify maintenance issues requiring attention.  
Verification: Test – create sample records containing these conditions and verify that the report reflects their current status.

**FR-12.** The system shall record progress updates for customers that contain only information approved for external communication.

Source: S-10, P-04, F-35, F-37, BR-05, Q-17  
Priority: Should  
Rationale: Keeps customers informed about safety and outstanding work without sharing unverified conclusions or internal notes.  
Verification: Test – prepare a customer update from a record containing internal notes and verify that only approved information is included.

##  Non-functional requirements

**NFR-01.** Offline operation  
The system shall allow technicians to create and update assigned visit records while offline and shall synchronise saved changes within 5 minutes of connectivity being restored.

Source: F-38, S-07, C-01, A-05  
Priority: Must  
Rationale: Supports technicians working at rural and remote sites with unreliable connectivity.  
Verification: Test – update a visit offline, restore connectivity and verify that the changes synchronise within 5 minutes.

**NFR-02.** Role-based access  
The system shall enforce role-based access for 5 user roles: office staff, technicians, parts coordinator, service manager and technical lead, including restricted access to site access details such as gate codes.

Source: F-12, F-35, F-39, S-01, C-05, A-03  
Priority: Must  
Rationale: Ensures that users can access only the information appropriate to their responsibilities.  
Verification: Test – use an account for each of the 5 roles and verify that each role can access permitted information, and that gate codes are visible only to permitted roles.

**NFR-03.** Audit trail  
The system shall record 100% of changes to fault statuses, visit statuses, parts allocations and return-to-service decisions, including the user, timestamp, previous value and new value.

Source: F-19, F-30, F-33, F-39  
Priority: Must  
Rationale: Supports accountability and investigation of changes to important maintenance records.  
Verification: Test – change each specified record type and verify that all required audit details are stored.

**NFR-04.** Performance  
The system shall display the service manager's maintenance overview within 3 seconds for at least 95% of requests with up to 10 concurrent users.

Source: F-36, S-09, C-03  
Priority: Should  
Rationale: Allows the service manager to review maintenance operations without excessive waiting.  
Verification: Performance test – simulate 10 concurrent users and confirm that at least 95% of overview requests complete within 3 seconds.

Numeric targets in NFR-01 and NFR-04 are provisional and must be confirmed with ARC.

##  Business rules

**BR-01.** Work not covered by the customer's service agreement must not begin until the customer has approved the quotation.  
Status: Provisional – the scenario states that customers "may need" to approve; acceptable evidence of approval is unresolved.  
Source: F-26, F-27, Q-05, Q-06  
Enforced by: FR-07

**BR-02.** An installation must not be returned to normal service until the required checks have been completed and an authorised person has accepted the result.  
Status: Confirmed in principle; who counts as an authorised person is unresolved (Q-12).  
Source: F-33, F-34; technical lead quote  
Enforced by: FR-10

**BR-03.** ARC does not provide emergency electrical response; safety-related concerns must be escalated, and customers may be advised to isolate equipment.  
Status: Confirmed; the escalation procedure is not defined (Q-02).  
Source: F-17  
Enforced by: Not yet covered – no requirement currently supports recording or escalating safety concerns.

**BR-04.** The technical lead decides whether a reported fault requires remote advice, a routine visit or urgent attendance.  
Status: Confirmed  
Source: F-16  
Enforced by: FR-02

**BR-05.** Commercial notes and internal safety discussions must not be automatically included in customer-facing reports.  
Status: Confirmed  
Source: F-35, F-37  
Enforced by: FR-12

**BR-06.** A technician may be assigned to work only if they hold the skills and authorisations required for that type of work.  
Status: Provisional – the required skills and authorisations for each type of work are not defined (Q-07).  
Source: F-20, F-21; service manager quote  
Enforced by: FR-04
