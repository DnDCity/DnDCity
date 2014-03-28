Feature: Size Table
As a User
In order to know about the effects that Size has on my character
I want to be able to lookup the effects of different sizes

  Scenario: Size index
    Given that I am a visitor
    And there are sizes defined as: 
      | name   | modifier | desc                |
      | tiny   |    2     | Really Small People |
      | small  |    1     | Small People        |
      | medium |    0     | Normal People       |
      | large  |   -1     | Big people          |
      | huge   |   -2     | Really Big people   |
    When I click on "Sizes" in the nav
    Then I should see a table listing the sizes. 
    And I should not see a link to "New Size"
    And I should not see a link to "Edit"
    And I should not see an "Edit" link for each Size
    Then for each size I should see:
      | name   | ac | attack | hide |
      | tiny   | +2 |   +2   |  +8  |
      | small  | +1 |   +1   |  +4  |
      | medium |  0 |    0   |   0  |
      | large  | -1 |   -1   |  -4  |
      | huge   | -2 |   -2   |  -8  |

  Scenario: Size index as editor
    Given that I am an editor
    And there are sizes defined as: 
      | name   | modifier | desc          |
      | small  |    1     | Small People  |
      | medium |    0     | Normal People |
      | large  |   -1     | Big people    |
    When I click on "Sizes" in the nav
    Then I should see a table listing the sizes. 
    And I should see a link to "New Size"
    And I should see an "Edit" link for each Size

  Scenario Outline: Unauthorized access to new
    Given that I am a <type>
    When I go to the new size path
    Then I should not have access

    Examples:
      | type    |
      | visitor | 
      | user    |

  Scenario: Create a Size
    Given that I am an editor
    When I click on "Sizes" in the nav
    And I click on "New Size"
    And I enter a Name of "Miniscule"
    And I enter a Modifier of "5"
    And I enter a Desc of "Mini Person"
    And I click on "Create Size"
    Then I should see an alert of "Size was successfully created."
    And I should see a title of "Size Miniscule"
    And I should see a name of "Miniscule"
    And I should see a modifier of "+5"
    And I should see an ac of "+5"
    And I should see an attack of "+5"
    And I should see a hide_bonus of "+20"
    And I should see a desc of "Mini Person"






