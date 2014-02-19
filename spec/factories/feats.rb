# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feat do
    name "MyString"
    desc "MyText"
    feat_type nil
    modifiers "MyText"
    prerequisites "MyText"
    benefit "MyText"
  end
end
