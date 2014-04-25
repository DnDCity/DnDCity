Feature: Create Weapon
As a User

  Scenario: Create weapon
    Given that I am a visitor
    When I click on "Weapons" in the nav
    Then I should not see a link to "New Weapons"

