
def create_user
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

Given(/^that I am an? (\w+)$/) do |type|
  case type
  when 'visitor' then #nothing to do
  when 'user' then
    create_user
  else
    create_user
    @user.add_role type.to_sym
  end
  visit '/'
end

When(/^I browse to (\/.*)$/) do |url| 
  visit url
end

Then(/^the page status should be (\d+)$/) do |status|
  page.should have_css "body"
  page.status_code.should eq status.to_i
end

Then(/^I should not have access$/) do
  messages = /(You need to sign in or sign up before continuing|You are not authorized to access this page)\./
  page.find(".alert").text.should match messages
end


