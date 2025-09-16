Feature: Verify Form Functionality on WishInfinite.com

 Scenario: Verify successful form submission with valid data
    Given I navigate to the Forms section under the Playground tab
    When I fill in all required form fields with relevant data
    And I submit the form
    Then I should see a confirmation that the form was submitted successfully

