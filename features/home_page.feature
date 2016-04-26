Feature: Home page

  Scenario: Viewing application's home page
    Given I am logged in
    When I am on the homepage
    Then I should see the content "Admin"