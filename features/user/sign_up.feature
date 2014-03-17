Feature: User Signs Up
As a User,
I want to sign up on the website
So that I can use the system to keep track of my DnD data.

  Scenario: User Signs Up
    Given that I am a visitor to the website
    And I click on the "Sign up" Link 
    When I enter a Name of "George Bailey"
    And I enter an Email of "george@bedford_falls.loan"
    And I enter a Password of "WonderfulLife"
    And I enter a Password confirmation of "WonderfulLife"
    And I click on "Sign up"
    Then I should see "A message with a confirmation link has been sent to your email address. Please open the link to activate your account."
    And I should have a user account with the email of "george@bedford_falls.loan"

#  Scenario: User Confirms Email
#    Given that I have signed up
#    And I have received a confirmation email
#    When I click on the confirmation link
#    Then I should be informed that my account has been confirmed. 
#    And I should be able to login. 

