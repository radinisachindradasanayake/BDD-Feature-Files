Feature: Select a supplier code from multiples and verify the value predictions

  As a user of DX2, I would like to select an existing supplier code from multiples for an approval document and see the value predictions

  Background: To login to the portal, the invoice has been uploaded and submitted (on behalf), document is approved with supplier code and user is on approvals page
    Given The user is logged in to the portal with email "cypress_DefaultGroup@example.com" and password "test1234"
    And The invoice "officemax-invoice.pdf" has been uploaded and waited for file to be in Ready state and submitted for company "silent_TP_002" with email "silenttp002@example.com"
	  And The user has two supplier codes for company "silent_TP_002" with email "silenttp002@example.com"
	  And The user has coded and approved a document for for company "silent_TP_002" with email "silenttp002@example.com" and supplier code "CYPRESS_003_SILENTTP"
    And The user navigates to approvals page

  Scenario: User wants to select supplier code and verify value predictions
    Then The user sees no supplier code has been selected
    When The user selects "CYPRESS_004_SILENTTP" for supplier code
    Then The user verifies Account Code is "101-911001" for first distribution line
    And The user verifies Approval Chain is  "cypress_chain4_multigroup(approvals-invoice-coding-defaultgroup)" for first distribution line
    And The user verifies Amount is "24943.50" for first distribution line
    And The user verifies Description is "Assign Admin" for first distribution line
    And The user verifies Account Code is "101-911004" for second distribution line
    And The user verifies Approval Chain is  "cypress_chain4_multigroup(approvals-invoice-coding-defaultgroup)" for second distribution line
    And The user verifies UnitAmount is null for second distribution line
	  And The user verifies outstanding amount is "0.00"
