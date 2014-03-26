Feature: Organizer invites Players
  As a Campaign Organizer
  In order to have people play in my campaign
  I want to invite people to play in my campaign. 

  Scenario: Organizer invites players 
    Given That I am the organizer of the Campaign "The Epic Tale of Phil"
    And that I am looking at the Campaign
    When I click on "Invite"
    And I enter "frodo@example.com" into the email field 
    And I submit
    Then the campaign should have "frodo@example.com" as an invited member.
    And the invited member should receive an email inviting them to the campaign. 

  Scenario: Invited Member accepts invitation
    Given that I have been invited to the Campaign "The Epic Tale of Phil"
    When I accept that invitation
    Then I should be a player of the Campaign




