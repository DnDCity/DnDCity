# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character_class_level do
    character nil
    character_class nil
    class_level 1
  end
end
