Feature: Home page
As a user
In order to quickly access the functionality I need
I want to have quick links to the most important features on the home page.

  Scenario: Visitor
    Given that I am a visitor
    When I visit the home page
    Then I should see the following links: 
      | text    | path           |
      | Login   | /users/sign_in | 
      | Sign up | /users/sign_up |

  Scenario: User
    Given that I am a user
    When I visit the home page
    Then I should see the following links:
      | text         | path            |
      | Edit account | /users/edit     |
      | Logout       | /users/sign_out |
      | Campaigns    | /campaigns      |
      | Characters   | /characters     |


