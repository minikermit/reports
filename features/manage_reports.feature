Feature: Manage Reports
  In order to make a Category
  As an admin
  I want to create and manage reports

Scenario: Reports List
  Given I have reports titled Assets, Liabilities
  When I go to the list of reports
  Then I should see "Assets"
  And I should see "Liabilities"
