
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


When(/^I enter an? ([\w ]+) of "(.*?)"$/) do |field, value|
  fill_in(field, with: value, match: :prefer_exact)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should have a user account with the email of "(.*?)"$/) do |email|
  User.where(email: email).count.should eq 1
end

