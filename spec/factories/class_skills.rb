# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :class_skill do
    character_class nil
    skill nil
    subject "MyString"
  end
end
