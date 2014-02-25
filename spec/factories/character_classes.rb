# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character_class do
    name "MyString"
    desc "MyText"
    class_abilities "MyText"
    hit_die "MyString"
    BAB_progression "MyString"
    base_fort_progression "MyString"
    base_ref_progression "MyString"
    base_will_progression "MyString"
    skill_points_per_level 1
  end
end
