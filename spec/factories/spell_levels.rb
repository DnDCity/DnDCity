# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spell_level do
    spell nil
    character_class nil
    level 1
  end
end
