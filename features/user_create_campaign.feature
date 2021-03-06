Feature: User Creates a Campaign
  As a user
  In order to have a campaign to play with my friends in
  I want to create a campaign

  Scenario: User creates a new campaign
    Given I am a logged in user 
    And I click on the "Campaigns" Link 
    And I click on the "Create a Campaign" Link
    And I enter a Name of "Quest for the magic milk bottle" 
    And I click on "Create Campaign" 
    Then I should have a campaign named "Quest for the magic milk bottle"

  Scenario: User edits an existing campaign
    Given I am a logged in user 
    And I have a campaign named "Quest for the magic milk bottle"
    And I choose to edit my campaign
    When I enter a Name of "Epic quest for Mighty Milk"
    And I click on "Update Campaign"
    Then my campaign should now be called "Epic quest for Mighty Milk"

#  Scenario: User invites existing user to their campaign
#    Given I am a logged in user 
#    And I have a campaign named "Milk Quest"
#    And there is a user "george@fred.com"
#    When I invite "george@fred.com" to my campaign
#    Then they will get an email inviting them to my campaign.
#
#  Scenario: User invites non user to their campaign
#    Given I am logged into my account
#    And I have a campaign named "Milk Quest"
#    When I invite "george@fred.com" to my campaign
#    Then they will get an email inviting them to my campaign.

