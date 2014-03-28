
Given(/^there are sizes defined as:$/) do |table|
  @sizes = table.hashes.collect { |size| Size.create! size }
end

Then(/^I should see a table listing the sizes\.$/) do
  within(".sizes") do
    @sizes.each do |size|
      within(".size_#{size.id}") do
        within(".name") do
          find_link(size.name)
        end
        within(".modifier") do
          page.should have_content(size.modifier)
        end
        within(".desc") do
          page.should have_content(size.desc)
        end
      end
    end
  end
end

Then(/^I should see an "(.*?)" link for each Size$/) do |arg1|
  @sizes.each do |size|
    within(".size_#{size.id}") do
      page.should have_link("Edit")
    end
  end
end

Then(/^for each size I should see:$/) do |table|
  sizes = {}
  table.hashes.each do |size|
    sizes[size['name']] = size
  end

  within(".sizes") do
    @sizes.each do |size|
      within(".size_#{size.id}") do
        within(".ac") do
          page.should have_content(sizes[size.name]['ac'])
        end
        within(".attack") do
          page.should have_content(sizes[size.name]['attack'])
        end
        within(".hide_bonus") do
          page.should have_content(sizes[size.name]['hide'])
        end
      end
    end
  end
end

Then(/^I should not see an "(.*?)" link for each Size$/) do |arg1|
  @sizes.each do |size|
    within(".size_#{size.id}") do
      page.should_not have_link("Edit")
    end
  end
end

When(/^I go to the new size path$/) do
  visit new_size_path
end

