Feature: Verify Selectors functionality in WishInfinite.com

  Background:
    Given I am on the WishInfinite.com homepage

Scenario: Verify Single select dropdown
    when user navigated to Selectors section under playground
    Then I should see Serchable dropdown button
    When I click on the "Searchable Dropdown" button
    Then I should see the "Searchable Options" dropdown
    when I type in the search box of the "Searchable Options" dropdown
    Then the dropdown should filter options based on the input