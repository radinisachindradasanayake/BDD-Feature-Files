Feature: Verifies single supplier code is autopopulated with the value predictions

  As a user of app, I would like to see an existing single supplier code is autopopulated along with the value predictions

  Background: To login to the app, the invoice has been uploaded and submitted (on behalf),document is approved with single supplier code and user is on approvals page
    Given The user is logged in to the portal with email "testabc@example.com" and password "test1234"
    And The invoice "officemax-invoice.pdf" has been uploaded and waited for file to be in Ready state and submitted for company "companyABC" with email "companyabc1@example.com"
    And Supplier code "CYPRESS_003_SILENTTP" exists
    And The user is on the Approvals page

  Scenario: User wants to verify supplier code is autopopulated with the value predictions
    Then The user sees autopopulated "CYPRESS_003_SILENTTP" on supplier code
    And The user verifies distribution lines have been populated correctly



