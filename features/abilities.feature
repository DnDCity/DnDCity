Feature: Abilities
  As a user
  In order to read and manage appropriate data
  I want to have access to appropriate areas 

  Scenario Outline: user has access to
    Given that I am a <type>
    When I browse to <url>
    Then the page status should be 200
    And I should not see "You need to sign in or sign up before continuing."

    Examples:
      | type | url |
      | visitor | /   |
      | visitor | /sizes  |
      | user    | /characters |

   Scenario Outline: Visitor does not have access to
    Given that I am a visitor
    When I browse to <url>
    Then the page status should be 200
    And I should see "You need to sign in or sign up before continuing."

    Examples:
      | url |
      | /characters |
    
