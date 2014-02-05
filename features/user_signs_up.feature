Feature: user signs up
As a [[User]],
I want to sign up
So that I can use the system

  Scenario: User Signs Up
    Given that I am a visitor to the website
    And I click on the Sign up Link 
    When I provide my name as "George Bailey"
    And I enter an email of "george@example.com"
    And I enter a password into both the password and the password confirmation fields
    Then I should be informed that I have signed up
    And I should receive an email confirmation link. 

  Scenario: User Confirms Email
    Given that I have signed up
    And I have received a confirmation email
    When I click on the confirmation link
    Then I should be informed that my account has been confirmed. 
    And I should be able to login. 

