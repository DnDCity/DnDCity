
When(/^I visit the home page$/) do
  visit '/'
end

Then(/^I should see the following links:$/) do |table|
  within "main" do
    table.hashes.each do |link|
      text = link['text']
      path = link['path']
      page.should have_link(text, href: path)
    end
  end
end


