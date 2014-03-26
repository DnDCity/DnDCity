Feature: User Creates a Feature
  As a user, 
  In order to have a way to keep track of a game that I am going to play with my friends
  I want to Create a Campaign

  Scenario: User creates a Campaign
    Given I am a logged in user
    And I am on the home page
    When I click on "Campaigns" 
    And I click on "Create a Campaign" 
    And I enter a Name of "The Legend of Zodd" 
    And I enter a Desc of "A Quest to find the legendary treasure of Zodd the Barbarian"
    And I click on "Create Campaign"
    Then I should have a campaign named "The Legend of Zodd"
    And I should be on the page for my new campaign.

