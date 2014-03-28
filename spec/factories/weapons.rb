# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weapon do
    name "MyString"
    desc "MyText"
    user nil
    damages "MyString"
    damagem "MyString"
    critical "MyString"
    rangeincrement 1.5
    weight 1.5
    isthrowable false
    islight false
    isonehanded false
    istwohanded false
    type "MyText"
  end
end
