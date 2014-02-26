# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :consumable_item do
    name "MyString"
    desc "MyText"
    effects "MyText"
    weight "MyString"
    cost "MyString"
  end
end
