Feature: Create Weapon
As a User

  Scenario: Create weapon
    Given that I am a user
    When I click on "Weapons" in the nav
    Then I should see a table listing my weapons. 
    And I should see a link to "New Weapons"
