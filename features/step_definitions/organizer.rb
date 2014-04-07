
Given(/^that I have a campaign named "(.*?)"$/) do |name|
  @campaign = Campaign.create! name: name, user_id: @user.id
end

Given(/^I am looking at the campaign$/) do
  visit campaign_path(@campaign)
end

When(/^I enter the email addresses:$/) do |table|
  # table is a Cucumber::Ast::Table
  emails = table.hashes.each do |row|
    row['email']
  end
  emails = emails.join "\n"
  fill_in "Emails", with: emails
end

Then(/^the players should be sent an email inviting them to join my Campaign\.$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the players should have entries in the User table$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^they should be invited to my campaign\.$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I have been invited to the campaign "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I login$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" as a campaign that I have been invited to\.$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the "(.*?)" link for "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be a member of the campaign\.$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^that I am not user$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I have been invited to a campaign$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the invitation link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be a User$/) do
  pending # express the regexp above with the code you wish you had
end

