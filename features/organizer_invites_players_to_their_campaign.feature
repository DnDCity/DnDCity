Feature: Organizer Invites Players to their Campaign
  As an Organizer
  In order to have people to play my Campaign with
  I want to invite people to play in my Campaign

  Scenario: Invite people to my campaign
    Given that I am a user
    And that I have a campaign named "The Lord of the Rings"
    And I am looking at the campaign
    When I click on "Invite Players"
    And I enter the email addresses:
      | email              |
      | frodo@baggends.com |
      | sam@gamgee.com     |
    And I enter a message of "Come with me and have a grand adventure"
    And I click on "Send Invitations"
    Then the players should be sent an email inviting them to join my Campaign.
    And the players should have entries in the User table
    And they should be invited to my campaign.

  Scenario: Invited User
    Given that I am a user
    And I have been invited to the campaign "The Lord of the Rings"
    When I login
    Then I should see "The Lord of the Rings" as a campaign that I have been invited to. 
    When I click on the "Accept Invitation" link for "The Lord of the Rings" 
    Then I should be a member of the campaign. 

  Scenario: Invited Non User
    Given that I am not user
    And I have been invited to a campaign
    When I click on the invitation link 
    Then I should be a User
  
