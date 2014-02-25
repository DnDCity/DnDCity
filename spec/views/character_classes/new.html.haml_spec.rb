require 'spec_helper'

describe "character_classes/new" do
  before(:each) do
    assign(:character_class, stub_model(CharacterClass,
      :name => "MyString",
      :desc => "MyText",
      :class_abilities => "MyText",
      :hit_die => "MyString",
      :BAB_progression => "MyString",
      :base_fort_progression => "MyString",
      :base_ref_progression => "MyString",
      :base_will_progression => "MyString",
      :skill_points_per_level => 1
    ).as_new_record)
  end

  it "renders new character_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", character_classes_path, "post" do
      assert_select "input#character_class_name[name=?]", "character_class[name]"
      assert_select "textarea#character_class_desc[name=?]", "character_class[desc]"
      assert_select "textarea#character_class_class_abilities[name=?]", "character_class[class_abilities]"
      assert_select "input#character_class_hit_die[name=?]", "character_class[hit_die]"
      assert_select "input#character_class_BAB_progression[name=?]", "character_class[BAB_progression]"
      assert_select "input#character_class_base_fort_progression[name=?]", "character_class[base_fort_progression]"
      assert_select "input#character_class_base_ref_progression[name=?]", "character_class[base_ref_progression]"
      assert_select "input#character_class_base_will_progression[name=?]", "character_class[base_will_progression]"
      assert_select "input#character_class_skill_points_per_level[name=?]", "character_class[skill_points_per_level]"
    end
  end
end
