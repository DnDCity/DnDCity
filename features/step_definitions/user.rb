
Given(/^that I am a visitor to the website$/) do
  visit "/"
  page.should have_css "body"
  page.status_code.should eq 200
end

Given(/^I click on the "(.*?)" Link$/) do |label|
  within("main") do
    click_link label
  end
  page.status_code.should eq 200
end

When(/^I click on "(.*?)"$/) do |label|
  within("main") do
    click_on label
  end
  page.status_code.should eq 200
end

When(/^I click on "(.*?)" in the (\w+)$/) do |link,css|
  within(css) do 
    click_on link
  end
  page.status_code.should eq 200
end

When(/^I enter an? ([\w ]+) of "(.*?)"$/) do |field, value|
  fill_in(field, with: value, match: :prefer_exact)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should have a user account with the email of "(.*?)"$/) do |email|
  User.where(email: email).count.should eq 1
end

Given(/^I am a logged in user$/) do
  name = "Fred"
  email = "fred@bedrock.com"
  pw = "WilmaPebbles"
  @user = User.create! name: name, email: email, password: pw, password_confirmation: pw
  @user.confirm!
  visit "/users/sign_in"
  within "form" do
    fill_in "Email", with: email
    fill_in "Password", with: pw
    click_on "Sign in"
  end
  page.should have_content("Signed in successfully.")
end

Given(/^I am on the home page$/) do
  visit "/"
end

Then(/^I should have a campaign named "(.*?)"$/) do |name|
  @campaign = Campaign.find_by!(name: name)
end

Then(/^I should be on the page for my new campaign\.$/) do
  current_path.should eq campaign_path(@campaign) 
end

Given(/^I have a campaign named "(.*?)"$/) do |name|
  @campaign = @user.campaigns.create! name: name
end

Given(/^I choose to edit my campaign$/) do
  visit edit_campaign_path(@campaign)
end

Then(/^my campaign should now be called "(.*?)"$/) do |name|
  @campaign.reload
  @campaign.name.should eq name
end

Given(/^there is a user "(.*?)"$/) do |email|
  pending # express the regexp above with the code you wish you had
end

When(/^I invite "(.*?)" to my campaign$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^they will get an email inviting them to my campaign\.$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not see "(.*?)"$/) do |content|
  page.should_not have_content(content)
end

Then(/^I should not see a link to "(.*?)"$/) do |link|
  page.should_not have_link link
end

Then(/^I should see a link to "(.*?)"$/) do |link|
  page.should have_link link
end


Then(/^I should see an? \.?(\w+) of "(.*?)"$/) do |css_class,text|
  within(".#{css_class}") do
    page.should have_content text
  end
end

Then(/^I should not see an? \.?(\w+) of "(.*?)"$/) do |css_class,text|
  within(".#{css_class}") do
    page.should_not have_content text
  end
end
