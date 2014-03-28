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

  Scenario: View a Size
    Given that I am a editor
    And there is a size of "Miniscule" with a modifier of "5" and a desc of "Mini Person"
    When I go to the size path for the size
    Then I should see a title of "Size Miniscule"
    And I should see a name of "Miniscule"
    And I should see a modifier of "+5"
    And I should see an ac of "+5"
    And I should see an attack of "+5"
    And I should see a hide_bonus of "+20"
    And I should see a desc of "Mini Person"

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

  Scenario Outline: Create an invalid Size 
    Given that I am an editor
    When I click on "Sizes" in the nav
    And I click on "New Size"
    And I enter a Name of "<name>"
    And I enter a Modifier of "<modifier>"
    And I click on "Create Size"
    Then I should not see an alert of "Size was successfully created."
    Then I should see an alert of "Please review the problems below:"
    And I should see an error of "<error>"

    Examples:
      | name  | modifier  | error              |
      |       | 5         | can't be blank     |
      | Itty  |           | can't be blank     |
      | Pixie | fun-sized | is not a number    |
      | Pixie | 5.4       | must be an integer |
    
  Scenario Outline: Unauthorized access to edit
    Given that I am a <type>
    And there is a size of "Pixie" with a modifier of "3"
    When I go to the edit size path for the size
    Then I should not have access

    Examples:
      | type    |
      | visitor | 
      | user    |

  Scenario: Edit Size
    Given that I am a editor
    And there is a size of "Pixie" with a modifier of "3"
    When I go to the edit size path for the size
    And I enter a Name of "Breezie"
    And I enter a Modifier of "4"
    And I click on "Update Size"
    Then I should see an alert of "Size was successfully updated."

  Scenario Outline: Invalid Update
    Given that I am an editor
    And there is a size of "Pixie" with a modifier of "3"
    When I go to the edit size path for the size
    And I enter a Name of "<name>"
    And I enter a Modifier of "<modifier>"
    And I click on "Update Size"
    Then I should not see an alert of "Size was successfully created."
    Then I should see an alert of "Please review the problems below:"
    And I should see an error of "<error>"

    Examples:
      | name  | modifier  | error              |
      |       | 5         | can't be blank     |
      | Itty  |           | can't be blank     |
      | Pixie | fun-sized | is not a number    |
      | Pixie | 5.4       | must be an integer |
 
  Scenario: Delete Size
    Given that I am a editor
    And there is a size of "Pixie" with a modifier of "3"
    When I go to the size path for the size
    And I click on "Delete"
    Then I should see an alert of "Size was successfully destroyed."
    And there should not be a size of "Pixie"

  Scenario Outline: Unauthorized Delete Size
    Given that I am a <type>
    And there is a size of "Pixie" with a modifier of "3"
    When I go to the size path for the size
    And I should not see a link to "Delete"

    Examples:
      | type    |
      | visitor | 
      | user    |

