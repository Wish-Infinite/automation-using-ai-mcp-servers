Feature: Verify E-Commerce App functionality on WishInfinite

  Scenario: Verify Successful login with valid credentials
    Given I navigate to the E-Commerce App under the Playground tab
    When I enter valid login credentials
    And I submit the login form
    Then I should see a successful login confirmation

  Scenario: Verify Successfully place two orders and validate them
    Given I navigate to the E-Commerce App under the Playground tab
    And I log in with valid credentials
    When I place two items in the order
    Then I should see those two items listed under my orders
    And I log out of the application