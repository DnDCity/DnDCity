
Given(/^that I have a campaign named "(.*?)"$/) do |name|
  @campaign = Campaign.create! name: name, user_id: @user.id
end

Given(/^I am looking at the campaign$/) do
  visit campaign_path(@campaign)
end

When(/^I enter the email addresses:$/) do |table|
  # table is a Cucumber::Ast::Table
  @emails = table.hashes.collect do |row|
    row['email']
  end
  fill_in "Emails", with: @emails.join("\n")
end

Then(/^the players should have entries in the User table$/) do
  @emails.each do |email|
    user = User.where(email: email).take!
  end
end

Then(/^they should be invited to my campaign\.$/) do
  @emails.each do |email|
    user = User.where(email: email).take!
    user.should have_role(:invited, @campaign)
  end
end

Given(/^I have been invited to the campaign "(.*?)"$/) do |name|
  @owner = User.create(email: "creator@campaign.com", password: "campaign", password_confirmation: "campaign")
  @campaign = Campaign.create(name: name, user_id: @owner.id)
  @user.add_role :invited, @campaign
end

Then(/^I should see "(.*?)" as a campaign that I have been invited to\.$/) do |name|
  within ".invitations" do
    page.should have_content(name)
  end
end

Then(/^I should be a member of the campaign\.$/) do
  @user.should have_role :member, @campaign
  within ".members" do 
    page.should have_content(@user.name)
  end
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

