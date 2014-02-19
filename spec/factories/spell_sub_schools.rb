# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spell_sub_school do
    name "MyString"
    desc "MyText"
    spell_school nil
  end
end
