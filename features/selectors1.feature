Feature: Verify Selectors functionality in WishInfinite.com

  Background:
    Given I am on the WishInfinite.com homepage

Scenario: Verify Single select dropdown
    when user navigated to Selectors section under playground
    Then I should see the "Single Select Dropdown" button
    When I click on the "Single Select Dropdown" button
    Then I should see the "Single Select Options" dropdown
    when I select an option from the "Single Select Options" dropdown
    Then the selected option should be displayed correctly

Scenario: Verify Multi select dropdown
  when user navigated to Selectors section under playground
  and  I click on the "Multi Select Dropdown" button
  Then I should see the "Multi Select Options" dropdown
  And I should be able to select multiple options from the dropdown