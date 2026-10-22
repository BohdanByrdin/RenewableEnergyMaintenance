# Related: UC-06, FR-10, BR-02, A-02, Q-12
Feature: Authorise return to service
  As a technical lead
  I want to approve return to service only when required checks are complete
  So that equipment is not used before it is confirmed safe

  Background:
    Given installation "INS-204" at site "Ballymore Farm" is awaiting a return-to-service decision
    And technical lead "Aoife Byrne" is authorised to approve return to service for battery work

  Rule: Return to service requires complete checks and an authorised approver (BR-02)

    Scenario: Approve return to service when all checks are recorded
      Given all required checks for "INS-204" have been recorded as passed
      When "Aoife Byrne" approves the return to service
      Then the status of "INS-204" is "Approved for return to service"
      And the decision is recorded with "Aoife Byrne" as the approver and the current date and time

    Scenario: Refuse approval when a required check is missing
      Given the insulation resistance test for "INS-204" has not been recorded
      When "Aoife Byrne" attempts to approve the return to service
      Then the approval is refused because a required check is missing
      And the status of "INS-204" remains "Awaiting return-to-service approval"
      And the missing insulation resistance test is identified

    Scenario: Reject approval by a user without authority
      Given technician "Liam Murphy" is not authorised to approve return to service
      And all required checks for "INS-204" have been recorded as passed
      When "Liam Murphy" attempts to approve the return to service
      Then the approval is rejected because "Liam Murphy" lacks the required authority
      And the status of "INS-204" remains "Awaiting return-to-service approval"

  Rule: Temporary operation is not a full return to service

    Scenario: Allow temporary operation only
      Given the replacement battery module for "INS-204" is awaiting delivery
      And all other required checks for "INS-204" have been recorded as passed
      When "Aoife Byrne" authorises temporary operation limited to 50% output until the module is replaced
      Then the status of "INS-204" is "Temporary operation authorised"
      And the limitation "50% output until module replaced" is recorded with the decision
      And "INS-204" is not marked as approved for return to service