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
    Then I should see an alert of "You have invited frodo@baggends.com, sam@gamgee.com to the campaign."
    And the players should have entries in the User table
    And they should be invited to my campaign.

  Scenario: Invited User
    Given that I am a user
    And I have been invited to the campaign "The Lord of the Rings"
    When I click on "Campaigns"
    Then I should see "The Lord of the Rings" as a campaign that I have been invited to. 
    When I click on "Accept Invitation"
    Then I should see an alert of "You have accepted the invitation to the campaign"
    And I should be a member of the campaign. 

